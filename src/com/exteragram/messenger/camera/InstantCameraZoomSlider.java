package com.exteragram.messenger.camera;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.hardware.Camera;
import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.camera.core.Camera;
import androidx.camera.core.ZoomState;
import androidx.view.LiveData;
import androidx.view.Observer;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.camera.CameraZoomSliderView;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.Camera2Session;
import org.telegram.messenger.camera.CameraInfo;
import org.telegram.messenger.camera.CameraSession;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimationProperties;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class InstantCameraZoomSlider extends CameraZoomSliderView {
    public static final AnimationProperties.FloatProperty<InstantCameraZoomSlider> OPEN_ALPHA = new AnimationProperties.FloatProperty<InstantCameraZoomSlider>("openAlpha") { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider.1
        @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
        public void setValue(InstantCameraZoomSlider instantCameraZoomSlider, float f) {
            instantCameraZoomSlider.setOpenAlpha(f);
        }

        @Override // android.util.Property
        public Float get(InstantCameraZoomSlider instantCameraZoomSlider) {
            return Float.valueOf(instantCameraZoomSlider.getOpenAlpha());
        }
    };
    private boolean animateNextConfiguration;
    private ValueAnimator appearAnimator;
    private float appearProgress;
    private Backend backend;
    private float baseTranslationY;
    private int bindRetries;
    private final Runnable bindRunnable;
    private BlurredBackgroundDrawable blurBackground;
    private float blurCornerRadius;
    private float camera1LinearZoom;
    private CameraSession camera1Session;
    private int camera1ZoomIndex;
    private float[] camera1ZoomRatios;
    private Camera2Session camera2Session;
    private CameraXSession cameraXSession;
    private final Observer<ZoomState> cameraXZoomObserver;
    private LiveData<ZoomState> cameraXZoomState;
    private OnCameraZoomChangeListener cameraZoomChangeListener;
    private float defaultZoom;
    private float displayOneZoom;
    private float lastAppliedZoom;
    private long lastZoomAppliedAt;
    private float openAlpha;
    private float[] opticalZoomRatios;
    private float pendingZoom;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean switchingCamera;
    private int textureViewSize;
    private float wideZoom;
    private final Runnable zoomFlushRunnable;
    private boolean zoomFlushScheduled;

    public enum Backend {
        NONE,
        CAMERA_1,
        CAMERA_2,
        CAMERA_X
    }

    public interface OnCameraZoomChangeListener {
        void onCameraZoomChanged(float f, boolean z);
    }

    public InstantCameraZoomSlider(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.backend = Backend.NONE;
        this.camera1ZoomRatios = new float[0];
        this.opticalZoomRatios = new float[0];
        this.camera1ZoomIndex = -1;
        this.defaultZoom = 1.0f;
        this.wideZoom = 1.0f;
        this.displayOneZoom = 1.0f;
        this.pendingZoom = Float.NaN;
        this.lastAppliedZoom = Float.NaN;
        this.bindRunnable = new Runnable() { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.tryBind();
            }
        };
        this.zoomFlushRunnable = new Runnable() { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.flushPendingZoom();
            }
        };
        this.cameraXZoomObserver = new Observer() { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider$$ExternalSyntheticLambda2
            @Override // androidx.view.Observer
            public final void onChanged(Object obj) {
                this.f$0.onCameraXZoomStateChanged((ZoomState) obj);
            }
        };
        this.blurCornerRadius = -1.0f;
        this.resourcesProvider = resourcesProvider;
        setVisibility(8);
        applyAppearProgress();
        setOnZoomChangeListener(new CameraZoomSliderView.OnZoomChangeListener() { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider$$ExternalSyntheticLambda3
            @Override // com.exteragram.messenger.camera.CameraZoomSliderView.OnZoomChangeListener
            public final void onZoomChanged(float f) {
                this.f$0.applyZoom(f);
            }
        });
        applyTelegramColors();
    }

    public float getOpenAlpha() {
        return this.openAlpha;
    }

    public void setOpenAlpha(float f) {
        if (this.openAlpha != f) {
            this.openAlpha = f;
            setAlpha(f * this.appearProgress);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppearProgress(float f) {
        if (this.appearProgress != f) {
            this.appearProgress = f;
            applyAppearProgress();
        }
    }

    private void applyAppearProgress() {
        setAlpha(this.openAlpha * this.appearProgress);
        float f = (this.appearProgress * 0.100000024f) + 0.9f;
        setScaleX(f);
        setScaleY(f);
    }

    private void showAnimated() {
        setEnabled(true);
        if (!ExteraConfig.getZoomSlider()) {
            hideImmediately();
            return;
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        if (this.appearAnimator == null) {
            float f = this.appearProgress;
            if (f >= 1.0f) {
                return;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 1.0f);
            this.appearAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showAnimated$0(valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.camera.InstantCameraZoomSlider.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (InstantCameraZoomSlider.this.appearAnimator == animator) {
                        InstantCameraZoomSlider.this.appearAnimator = null;
                        InstantCameraZoomSlider.this.setAppearProgress(1.0f);
                    }
                }
            });
            valueAnimatorOfFloat.setDuration(180L);
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAnimated$0(ValueAnimator valueAnimator) {
        setAppearProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void hideImmediately() {
        cancelAppearAnimation();
        setAppearProgress(0.0f);
        setVisibility(8);
    }

    private void cancelAppearAnimation() {
        ValueAnimator valueAnimator = this.appearAnimator;
        if (valueAnimator != null) {
            this.appearAnimator = null;
            valueAnimator.cancel();
        }
    }

    private void applyTelegramColors() {
        int color = Theme.getColor(Theme.key_chat_messagePanelBackground, this.resourcesProvider);
        int color2 = Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider);
        int color3 = Theme.getColor(Theme.key_chats_actionIcon, this.resourcesProvider);
        int color4 = Theme.getColor(Theme.key_chat_messagePanelText, this.resourcesProvider);
        setColors(color, color4, color2, color2, color3);
        setToggleTextColor(color4);
    }

    public void setBlurBackground(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        if (this.blurBackground != blurredBackgroundDrawable) {
            this.blurBackground = blurredBackgroundDrawable;
            this.blurCornerRadius = -1.0f;
            invalidate();
        }
    }

    @Override // com.exteragram.messenger.camera.CameraZoomSliderView
    public boolean drawPillBackground(Canvas canvas, RectF rectF, float f) {
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.blurBackground;
        if (blurredBackgroundDrawable == null) {
            return false;
        }
        if (this.blurCornerRadius != f) {
            this.blurCornerRadius = f;
            blurredBackgroundDrawable.setRadius(f);
        }
        this.blurBackground.setBounds(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        this.blurBackground.draw(canvas);
        return true;
    }

    public void setOnCameraZoomChangeListener(OnCameraZoomChangeListener onCameraZoomChangeListener) {
        this.cameraZoomChangeListener = onCameraZoomChangeListener;
    }

    public void bindSession(CameraXSession cameraXSession) {
        boolean z = cameraXSession != null && getVisibility() == 0 && isLaidOut() && (this.switchingCamera || (this.backend == Backend.CAMERA_X && this.cameraXSession == cameraXSession));
        this.switchingCamera = false;
        if (z) {
            prepareZoomConfigurationTransition();
        }
        resetBinding(!z);
        if (cameraXSession == null) {
            return;
        }
        this.backend = Backend.CAMERA_X;
        this.cameraXSession = cameraXSession;
        this.animateNextConfiguration = z;
        if (z) {
            setEnabled(false);
            setExpanded(false, true);
        }
        tryBind();
    }

    public void bindSession(Camera2Session camera2Session) {
        boolean z = camera2Session != null && this.switchingCamera;
        this.switchingCamera = false;
        resetBinding(!z);
        if (camera2Session == null) {
            return;
        }
        this.backend = Backend.CAMERA_2;
        this.camera2Session = camera2Session;
        this.animateNextConfiguration = z;
        tryBind();
    }

    public void bindSession(CameraSession cameraSession, float f) {
        boolean z = cameraSession != null && this.switchingCamera;
        this.switchingCamera = false;
        resetBinding(!z);
        if (cameraSession == null) {
            return;
        }
        this.backend = Backend.CAMERA_1;
        this.camera1Session = cameraSession;
        this.camera1LinearZoom = Utilities.clamp01(f);
        this.animateNextConfiguration = z;
        tryBind();
    }

    public void beginCameraSwitch() {
        if (this.backend != Backend.NONE && getVisibility() == 0 && isLaidOut()) {
            this.switchingCamera = true;
            prepareZoomConfigurationTransition();
            setEnabled(false);
            setExpanded(false, true);
        }
    }

    public void unbindSession() {
        this.switchingCamera = false;
        resetBinding(true);
    }

    private void resetBinding(boolean z) {
        setExternalZoomGestureActive(false);
        resetZoomThrottle();
        this.backend = Backend.NONE;
        detachCameraXZoomObserver();
        setZoom(getZoom());
        this.cameraXSession = null;
        this.camera2Session = null;
        this.camera1Session = null;
        this.camera1ZoomRatios = new float[0];
        this.opticalZoomRatios = new float[0];
        this.camera1ZoomIndex = -1;
        this.defaultZoom = 1.0f;
        this.wideZoom = 1.0f;
        this.displayOneZoom = 1.0f;
        this.bindRetries = 0;
        removeCallbacks(this.bindRunnable);
        this.animateNextConfiguration = false;
        if (z) {
            cancelZoomConfigurationTransition();
            setEnabled(true);
            setExpanded(false, false);
            hideImmediately();
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.camera.InstantCameraZoomSlider$3 */
    public static /* synthetic */ class C12513 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$camera$InstantCameraZoomSlider$Backend */
        static final /* synthetic */ int[] f175xd0854df3;

        static {
            int[] iArr = new int[Backend.values().length];
            f175xd0854df3 = iArr;
            try {
                iArr[Backend.CAMERA_X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f175xd0854df3[Backend.CAMERA_2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f175xd0854df3[Backend.CAMERA_1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f175xd0854df3[Backend.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void syncZoom() {
        int i = C12513.f175xd0854df3[this.backend.ordinal()];
        if (i == 1) {
            CameraXSession cameraXSession = this.cameraXSession;
            if (cameraXSession == null || !cameraXSession.isReady()) {
                return;
            }
            setZoom(this.cameraXSession.getZoomRatio());
            return;
        }
        if (i == 2) {
            Camera2Session camera2Session = this.camera2Session;
            if (camera2Session == null || !camera2Session.isInitiated()) {
                return;
            }
            setZoom(this.camera2Session.getZoom());
            return;
        }
        if (i == 3 && this.camera1ZoomRatios.length > 1) {
            setZoom(camera1RatioForLinearZoom(this.camera1LinearZoom));
        }
    }

    public void syncZoom(float f) {
        Backend backend = this.backend;
        if (backend == Backend.CAMERA_1) {
            float fClamp01 = Utilities.clamp01(f);
            this.camera1LinearZoom = fClamp01;
            this.camera1ZoomIndex = -1;
            if (this.camera1ZoomRatios.length > 1) {
                setZoom(camera1RatioForLinearZoom(fClamp01));
                return;
            }
            return;
        }
        if (backend == Backend.CAMERA_2) {
            setZoom(f);
        } else {
            syncZoom();
        }
    }

    public void beginExternalZoomGesture() {
        if (this.backend != Backend.CAMERA_X) {
            return;
        }
        discardPendingZoom();
        setZoom(getZoom());
    }

    public void beginPinchZoomGesture() {
        beginExternalZoomGesture();
        setExternalZoomGestureActive(true);
    }

    public void endPinchZoomGesture() {
        setExternalZoomGestureActive(false);
    }

    public void beginSteppedZoomGesture() {
        beginExternalZoomGesture();
        setExpanded(true, true);
    }

    public void scaleCameraXZoom(float f) {
        if (this.backend == Backend.CAMERA_X && this.cameraXSession != null && Float.isFinite(f)) {
            setCameraXZoomRatio(getZoom() * f);
        }
    }

    public void setCameraXZoomRatio(float f) {
        if (this.backend != Backend.CAMERA_X || this.cameraXSession == null) {
            return;
        }
        float fClamp = Utilities.clamp(f, getMaximumZoom(), getMinimumZoom());
        setZoom(fClamp);
        this.cameraXSession.setZoomRatio(fClamp);
    }

    public float getCameraXResetZoom() {
        CameraXSession cameraXSession = this.cameraXSession;
        return (!ExteraConfig.getStartWithWideAngleCamera() || (cameraXSession != null && cameraXSession.isActiveCameraFrontface())) ? this.defaultZoom : this.wideZoom;
    }

    public float[] getOpticalZoomRatios() {
        float[] fArr = this.opticalZoomRatios;
        return Arrays.copyOf(fArr, fArr.length);
    }

    public float getDisplayOneZoom() {
        return this.displayOneZoom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryBind() {
        float minZoomRatio;
        boolean zIsActiveCameraFrontface;
        float f;
        float[] fArrOpticalZoomRatios;
        float fCamera1RatioForLinearZoom;
        float maxZoom;
        int i = C12513.f175xd0854df3[this.backend.ordinal()];
        if (i != 1) {
            if (i == 2) {
                Camera2Session camera2Session = this.camera2Session;
                if (camera2Session == null || !camera2Session.isInitiated()) {
                    retryBinding();
                    return;
                } else {
                    minZoomRatio = this.camera2Session.getMinZoom();
                    maxZoom = this.camera2Session.getMaxZoom();
                }
            } else {
                if (i != 3) {
                    return;
                }
                CameraSession cameraSession = this.camera1Session;
                if (cameraSession == null || !cameraSession.isInitied()) {
                    retryBinding();
                    return;
                }
                float[] camera1ZoomRatios = readCamera1ZoomRatios(this.camera1Session);
                this.camera1ZoomRatios = camera1ZoomRatios;
                if (camera1ZoomRatios == null) {
                    this.camera1ZoomRatios = new float[0];
                    retryBinding();
                    return;
                } else {
                    minZoomRatio = camera1ZoomRatios.length == 0 ? 1.0f : camera1ZoomRatios[0];
                    maxZoom = camera1ZoomRatios.length == 0 ? 1.0f : camera1ZoomRatios[camera1ZoomRatios.length - 1];
                }
            }
            f = maxZoom;
            zIsActiveCameraFrontface = false;
        } else {
            CameraXSession cameraXSession = this.cameraXSession;
            if (cameraXSession == null || !cameraXSession.isReady()) {
                retryBinding();
                return;
            }
            ZoomState value = this.cameraXSession.camera.getCameraInfo().getZoomState().getValue();
            if (value == null) {
                retryBinding();
                return;
            }
            minZoomRatio = value.getMinZoomRatio();
            float maxZoomRatio = value.getMaxZoomRatio();
            zIsActiveCameraFrontface = this.cameraXSession.isActiveCameraFrontface();
            f = maxZoomRatio;
        }
        float f2 = minZoomRatio;
        if (!Float.isFinite(f2) || !Float.isFinite(f) || f2 <= 0.0f || f <= f2) {
            this.animateNextConfiguration = false;
            cancelZoomConfigurationTransition();
            setEnabled(true);
            hideImmediately();
            return;
        }
        this.defaultZoom = Utilities.clamp(1.0f, f, f2);
        this.wideZoom = f2;
        this.displayOneZoom = 1.0f;
        setDisplayNormalizationFactor(1.0f);
        Backend backend = this.backend;
        Backend backend2 = Backend.CAMERA_X;
        if (backend == backend2) {
            fArrOpticalZoomRatios = CameraLensStops.opticalZoomRatios(getContext(), this.cameraXSession.getActiveCameraId(), f2);
        } else {
            fArrOpticalZoomRatios = new float[0];
        }
        this.opticalZoomRatios = fArrOpticalZoomRatios;
        float[] fArrBuildToggleStops = CameraLensStops.buildToggleStops(zIsActiveCameraFrontface, f2, f, fArrOpticalZoomRatios);
        float[] fArrBuildRulerStops = CameraLensStops.buildRulerStops(f2, f, fArrBuildToggleStops);
        Backend backend3 = this.backend;
        if (backend3 == backend2) {
            fCamera1RatioForLinearZoom = getCameraXResetZoom();
        } else if (backend3 == Backend.CAMERA_2) {
            fCamera1RatioForLinearZoom = this.camera2Session.getZoom();
        } else {
            fCamera1RatioForLinearZoom = camera1RatioForLinearZoom(this.camera1LinearZoom);
        }
        float fClamp = Utilities.clamp(fCamera1RatioForLinearZoom, f, f2);
        boolean z = this.animateNextConfiguration;
        this.animateNextConfiguration = false;
        setZoomConfiguration(f2, f, fArrBuildToggleStops, fArrBuildRulerStops, fClamp, z);
        if (!z) {
            setExpanded(false, false);
        }
        if (this.backend == backend2) {
            attachCameraXZoomObserver();
            this.cameraXSession.setZoomRatio(fClamp);
        }
        showAnimated();
    }

    private void retryBinding() {
        if (this.backend != Backend.NONE) {
            int i = this.bindRetries;
            this.bindRetries = i + 1;
            if (i < 25) {
                postDelayed(this.bindRunnable, 100L);
                return;
            }
        }
        this.animateNextConfiguration = false;
        cancelZoomConfigurationTransition();
        setEnabled(true);
        hideImmediately();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyZoom(float f) {
        this.pendingZoom = f;
        scheduleZoomFlush();
    }

    private void scheduleZoomFlush() {
        if (this.zoomFlushScheduled) {
            return;
        }
        this.zoomFlushScheduled = true;
        postOnAnimation(this.zoomFlushRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushPendingZoom() {
        this.zoomFlushScheduled = false;
        float f = this.pendingZoom;
        if (Float.isNaN(f) || this.backend == Backend.NONE) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (!Float.isNaN(this.lastAppliedZoom)) {
            if (f == this.lastAppliedZoom) {
                return;
            }
            if (jUptimeMillis - this.lastZoomAppliedAt < getZoomUpdateIntervalMs()) {
                scheduleZoomFlush();
                return;
            }
        }
        this.lastAppliedZoom = f;
        this.lastZoomAppliedAt = jUptimeMillis;
        sendZoomToCamera(f);
    }

    private long getZoomUpdateIntervalMs() {
        int recordingFrameRate;
        Camera2Session camera2Session;
        CameraXSession cameraXSession;
        Backend backend = this.backend;
        if (backend == Backend.CAMERA_X && (cameraXSession = this.cameraXSession) != null) {
            recordingFrameRate = cameraXSession.getRecordingFrameRate();
        } else {
            recordingFrameRate = (backend != Backend.CAMERA_2 || (camera2Session = this.camera2Session) == null) ? 0 : camera2Session.getRecordingFrameRate();
        }
        if (recordingFrameRate <= 0) {
            recordingFrameRate = 30;
        }
        return Math.max(1L, 1000 / ((long) recordingFrameRate));
    }

    private void discardPendingZoom() {
        removeCallbacks(this.zoomFlushRunnable);
        this.zoomFlushScheduled = false;
        this.pendingZoom = Float.NaN;
    }

    private void resetZoomThrottle() {
        discardPendingZoom();
        this.lastAppliedZoom = Float.NaN;
        this.lastZoomAppliedAt = 0L;
    }

    private void sendZoomToCamera(float f) {
        int i = C12513.f175xd0854df3[this.backend.ordinal()];
        if (i == 1) {
            CameraXSession cameraXSession = this.cameraXSession;
            if (cameraXSession == null) {
                return;
            }
            cameraXSession.setZoomRatio(f);
            f = this.cameraXSession.getLinearZoom();
        } else if (i == 2) {
            Camera2Session camera2Session = this.camera2Session;
            if (camera2Session == null) {
                return;
            } else {
                camera2Session.setZoom(f);
            }
        } else {
            if (i != 3 || this.camera1Session == null || this.camera1ZoomRatios.length < 2) {
                return;
            }
            int iCamera1ZoomIndexForRatio = camera1ZoomIndexForRatio(f);
            float fCamera1LinearZoomForIndex = camera1LinearZoomForIndex(iCamera1ZoomIndexForRatio);
            this.camera1LinearZoom = fCamera1LinearZoomForIndex;
            if (iCamera1ZoomIndexForRatio != this.camera1ZoomIndex) {
                this.camera1ZoomIndex = iCamera1ZoomIndexForRatio;
                this.camera1Session.setZoom(fCamera1LinearZoomForIndex);
            }
            f = this.camera1LinearZoom;
        }
        OnCameraZoomChangeListener onCameraZoomChangeListener = this.cameraZoomChangeListener;
        if (onCameraZoomChangeListener != null) {
            onCameraZoomChangeListener.onCameraZoomChanged(f, true);
        }
    }

    private void attachCameraXZoomObserver() {
        Camera camera;
        LiveData<ZoomState> zoomState;
        CameraXSession cameraXSession = this.cameraXSession;
        if (cameraXSession == null || (camera = cameraXSession.camera) == null || this.cameraXZoomState == (zoomState = camera.getCameraInfo().getZoomState())) {
            return;
        }
        detachCameraXZoomObserver();
        this.cameraXZoomState = zoomState;
        zoomState.observeForever(this.cameraXZoomObserver);
    }

    private void detachCameraXZoomObserver() {
        LiveData<ZoomState> liveData = this.cameraXZoomState;
        if (liveData != null) {
            liveData.removeObserver(this.cameraXZoomObserver);
            this.cameraXZoomState = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCameraXZoomStateChanged(ZoomState zoomState) {
        OnCameraZoomChangeListener onCameraZoomChangeListener;
        if (this.backend != Backend.CAMERA_X || zoomState == null || (onCameraZoomChangeListener = this.cameraZoomChangeListener) == null) {
            return;
        }
        onCameraZoomChangeListener.onCameraZoomChanged(zoomState.getLinearZoom(), false);
    }

    private static float[] readCamera1ZoomRatios(CameraSession cameraSession) {
        try {
            CameraInfo cameraInfo = cameraSession.cameraInfo;
            android.hardware.Camera camera = cameraInfo != null ? cameraInfo.getCamera() : null;
            if (camera == null) {
                return null;
            }
            Camera.Parameters parameters = camera.getParameters();
            if (parameters != null && parameters.isZoomSupported()) {
                List<Integer> zoomRatios = parameters.getZoomRatios();
                if (zoomRatios != null && zoomRatios.size() >= 2) {
                    int size = zoomRatios.size();
                    float[] fArr = new float[size];
                    for (int i = 0; i < size; i++) {
                        float fMax = 1.0f;
                        if (zoomRatios.get(i) != null) {
                            fMax = Math.max(1.0f, r4.intValue() / 100.0f);
                        }
                        fArr[i] = fMax;
                    }
                    return fArr;
                }
                return new float[0];
            }
            return new float[0];
        } catch (Exception unused) {
            return null;
        }
    }

    private float camera1RatioForLinearZoom(float f) {
        int length = this.camera1ZoomRatios.length - 1;
        return this.camera1ZoomRatios[Math.min((int) (Utilities.clamp01(f) * length), length)];
    }

    private int camera1ZoomIndexForRatio(float f) {
        int i = 0;
        float f2 = Float.MAX_VALUE;
        int i2 = 0;
        while (true) {
            float[] fArr = this.camera1ZoomRatios;
            if (i >= fArr.length) {
                return i2;
            }
            float fAbs = Math.abs(fArr[i] - f);
            if (fAbs < f2) {
                i2 = i;
                f2 = fAbs;
            }
            i++;
        }
    }

    private float camera1LinearZoomForIndex(int i) {
        int length = this.camera1ZoomRatios.length - 1;
        if (i <= 0) {
            return 0.0f;
        }
        if (i >= length) {
            return 1.0f;
        }
        return (i + 0.001f) / length;
    }

    public void setTextureViewSize(int i) {
        if (this.textureViewSize != i) {
            this.textureViewSize = i;
            applyPosition();
        }
    }

    public void setBaseTranslationY(float f) {
        if (this.baseTranslationY != f) {
            this.baseTranslationY = f;
            applyPosition();
        }
    }

    @Override // com.exteragram.messenger.camera.CameraZoomSliderView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || getAlpha() < 0.5f) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        applyPosition();
    }

    private void applyPosition() {
        setTranslationY(((this.baseTranslationY + (this.textureViewSize / 2.0f)) + AndroidUtilities.dp(80.0f)) - (getMeasuredHeight() / 2.0f));
    }

    @Override // com.exteragram.messenger.camera.CameraZoomSliderView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.backend != Backend.NONE && (getVisibility() != 0 || !isEnabled() || this.animateNextConfiguration)) {
            this.bindRetries = 0;
            tryBind();
        } else if (this.backend == Backend.CAMERA_X) {
            attachCameraXZoomObserver();
        }
    }

    @Override // com.exteragram.messenger.camera.CameraZoomSliderView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.bindRunnable);
        discardPendingZoom();
        detachCameraXZoomObserver();
        if (this.appearAnimator != null) {
            cancelAppearAnimation();
            setAppearProgress(getVisibility() == 0 ? 1.0f : 0.0f);
        }
    }
}
