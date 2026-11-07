package org.telegram.ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.cast.CastStatusCodes;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.pip.PipSource;
import org.telegram.messenger.pip.source.IPipSourceDelegate;
import org.telegram.messenger.pip.utils.PipUtils;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.voip.VoIPPiPView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.VoIPFragment;
import org.webrtc.EglBase;
import org.webrtc.RendererCommon;

/* JADX INFO: loaded from: classes7.dex */
public class VoIPPiPView implements VoIPService.StateListener, IPipSourceDelegate, NotificationCenter.NotificationCenterDelegate {
    public static int bottomInset = 0;
    private static VoIPPiPView expandedInstance = null;
    private static VoIPPiPView instance = null;
    public static boolean switchingToPip = false;
    public static int topInset;
    ValueAnimator animatorToCameraMini;
    boolean callingUserIsVideo;
    public final VoIPTextureView callingUserTextureView;
    ImageView closeIcon;
    private int currentAccount;
    boolean currentUserIsVideo;
    public final VoIPTextureView currentUserTextureView;
    ImageView enlargeIcon;
    ValueAnimator expandAnimator;
    public boolean expanded;
    private boolean expandedAnimationInProgress;
    private Runnable firstFrameCallback;
    FloatingView floatingView;
    AnimatorSet moveToBoundsAnimator;
    boolean moving;
    public final int parentHeight;
    public final int parentWidth;
    private PipSource pipSource;
    private VoIPTextureView pipTextureView;
    float progressToCameraMini;
    long startTime;
    float startX;
    float startY;
    View topShadow;
    public WindowManager.LayoutParams windowLayoutParams;
    private WindowManager windowManager;
    public FrameLayout windowView;
    private boolean windowViewSkipRender;
    public int xOffset;
    public int yOffset;
    ValueAnimator.AnimatorUpdateListener animatorToCameraMiniUpdater = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$$ExternalSyntheticLambda0
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f$0.lambda$new$0(valueAnimator);
        }
    };
    float[] point = new float[2];
    int animationIndex = -1;
    Runnable collapseRunnable = new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.1
        @Override // java.lang.Runnable
        public void run() {
            if (VoIPPiPView.instance != null) {
                VoIPPiPView.instance.floatingView.expand(false);
            }
        }
    };
    private ValueAnimator.AnimatorUpdateListener updateXlistener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.2
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            VoIPPiPView voIPPiPView = VoIPPiPView.this;
            voIPPiPView.windowLayoutParams.x = (int) fFloatValue;
            WindowManager windowManager = voIPPiPView.windowManager;
            VoIPPiPView voIPPiPView2 = VoIPPiPView.this;
            AndroidUtilities.updateViewLayout(windowManager, voIPPiPView2.windowView, voIPPiPView2.windowLayoutParams);
        }
    };
    private ValueAnimator.AnimatorUpdateListener updateYlistener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.3
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            VoIPPiPView voIPPiPView = VoIPPiPView.this;
            voIPPiPView.windowLayoutParams.y = (int) fFloatValue;
            WindowManager windowManager = voIPPiPView.windowManager;
            VoIPPiPView voIPPiPView2 = VoIPPiPView.this;
            AndroidUtilities.updateViewLayout(windowManager, voIPPiPView2.windowView, voIPPiPView2.windowLayoutParams);
        }
    };
    private final RendererCommon.RendererEvents rendererEvents = new RendererCommon.RendererEvents() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.6
        @Override // org.webrtc.RendererCommon.RendererEvents
        public void onFrameResolutionChanged(int i, int i2, int i3) {
        }

        @Override // org.webrtc.RendererCommon.RendererEvents
        public void onFirstFrameRendered() {
            if (VoIPPiPView.this.firstFrameCallback != null) {
                VoIPPiPView.this.firstFrameCallback.run();
                VoIPPiPView.this.firstFrameCallback = null;
            }
        }
    };

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onAudioSettingsChanged() {
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onSignalBarsCountChanged(int i) {
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onVideoAvailableChange(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        this.progressToCameraMini = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingView.invalidate();
    }

    public static void show(Activity activity, int i, int i2, int i3, int i4) {
        WindowManager windowManager;
        if (instance != null || VideoCapturerDevice.eglBase == null) {
            return;
        }
        WindowManager.LayoutParams layoutParamsCreateWindowLayoutParams = createWindowLayoutParams(activity, i2, i3, 0.25f);
        instance = new VoIPPiPView(activity, i2, i3, false);
        if (AndroidUtilities.checkInlinePermissions(activity)) {
            windowManager = (WindowManager) ApplicationLoader.applicationContext.getSystemService("window");
        } else {
            windowManager = (WindowManager) activity.getSystemService("window");
        }
        VoIPPiPView voIPPiPView = instance;
        voIPPiPView.currentAccount = i;
        voIPPiPView.windowManager = windowManager;
        voIPPiPView.windowLayoutParams = layoutParamsCreateWindowLayoutParams;
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("voippipconfig", 0);
        instance.setRelativePosition(sharedPreferences.getFloat("relativeX", 1.0f), sharedPreferences.getFloat("relativeY", 0.0f));
        NotificationCenter.getGlobalInstance().addObserver(instance, NotificationCenter.didEndCall);
        windowManager.addView(instance.windowView, layoutParamsCreateWindowLayoutParams);
        instance.currentUserTextureView.renderer.init(VideoCapturerDevice.eglBase.getEglBaseContext(), null);
        instance.callingUserTextureView.renderer.init(VideoCapturerDevice.eglBase.getEglBaseContext(), instance.rendererEvents);
        if (i4 == 0) {
            instance.windowView.setScaleX(0.5f);
            instance.windowView.setScaleY(0.5f);
            instance.windowView.setAlpha(0.0f);
            instance.windowView.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).start();
            if (VoIPService.getSharedInstance() != null) {
                VoIPService sharedInstance = VoIPService.getSharedInstance();
                VoIPPiPView voIPPiPView2 = instance;
                sharedInstance.setSinks(voIPPiPView2.currentUserTextureView.renderer, voIPPiPView2.callingUserTextureView.renderer);
            }
        } else if (i4 == 1) {
            instance.windowView.setAlpha(0.0f);
            if (VoIPService.getSharedInstance() != null) {
                VoIPService sharedInstance2 = VoIPService.getSharedInstance();
                VoIPPiPView voIPPiPView3 = instance;
                sharedInstance2.setBackgroundSinks(voIPPiPView3.currentUserTextureView.renderer, voIPPiPView3.callingUserTextureView.renderer);
            }
        }
        VoIPService sharedInstance3 = VoIPService.getSharedInstance();
        if (sharedInstance3 != null && sharedInstance3.getRemoteVideoState() == 2 && PipUtils.checkPermissions(activity) == 1) {
            VoIPPiPView voIPPiPView4 = instance;
            voIPPiPView4.pipSource = new PipSource.Builder(activity, voIPPiPView4).setTagPrefix("voip-pip").setPriority(1).setContentView(instance.callingUserTextureView.renderer).setPlaceholderView(instance.callingUserTextureView.getPlaceholderView()).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WindowManager.LayoutParams createWindowLayoutParams(Context context, int i, int i2, float f) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        float f2 = i2;
        float f3 = f2 * 0.4f;
        float f4 = i;
        float f5 = 0.4f * f4;
        layoutParams.height = (int) ((f2 * f) + ((((int) ((f3 * 1.05f) - f3)) / 2) * 2));
        layoutParams.width = (int) ((f4 * f) + ((((int) ((1.05f * f5) - f5)) / 2) * 2));
        layoutParams.gravity = 51;
        layoutParams.format = -3;
        if (AndroidUtilities.checkInlinePermissions(context)) {
            if (Build.VERSION.SDK_INT >= 26) {
                layoutParams.type = 2038;
            } else {
                layoutParams.type = CastStatusCodes.NOT_ALLOWED;
            }
        } else {
            layoutParams.type = 99;
        }
        layoutParams.flags = 16778120;
        return layoutParams;
    }

    public static void prepareForTransition() {
        if (expandedInstance != null) {
            instance.expandAnimator.cancel();
        }
    }

    public static void finish() {
        if (switchingToPip) {
            return;
        }
        VoIPPiPView voIPPiPView = expandedInstance;
        if (voIPPiPView != null) {
            voIPPiPView.finishInternal();
        }
        VoIPPiPView voIPPiPView2 = instance;
        if (voIPPiPView2 != null) {
            voIPPiPView2.finishInternal();
        }
        expandedInstance = null;
        instance = null;
    }

    public static boolean isExpanding() {
        return instance.expanded;
    }

    private void setRelativePosition(float f, float f2) {
        Point point = AndroidUtilities.displaySize;
        float f3 = point.x;
        float f4 = point.y;
        float fDp = AndroidUtilities.dp(16.0f);
        float fDp2 = AndroidUtilities.dp(16.0f);
        float fDp3 = AndroidUtilities.dp(60.0f);
        float fDp4 = AndroidUtilities.dp(16.0f);
        float measuredWidth = this.parentWidth * 0.25f;
        float measuredHeight = this.parentHeight * 0.25f;
        if (this.floatingView.getMeasuredWidth() != 0) {
            measuredWidth = this.floatingView.getMeasuredWidth();
        }
        if (this.floatingView.getMeasuredWidth() != 0) {
            measuredHeight = this.floatingView.getMeasuredHeight();
        }
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.x = (int) ((f * (((f3 - fDp) - fDp2) - measuredWidth)) - (this.xOffset - fDp));
        layoutParams.y = (int) ((f2 * (((f4 - fDp3) - fDp4) - measuredHeight)) - (this.yOffset - fDp3));
        AndroidUtilities.updateViewLayout(this.windowManager, this.windowView, layoutParams);
    }

    public static VoIPPiPView getInstance() {
        VoIPPiPView voIPPiPView = expandedInstance;
        return voIPPiPView != null ? voIPPiPView : instance;
    }

    public VoIPPiPView(final Context context, int i, int i2, boolean z) {
        this.parentWidth = i;
        this.parentHeight = i2;
        float f = i2 * 0.4f;
        this.yOffset = ((int) ((f * 1.05f) - f)) / 2;
        float f2 = i * 0.4f;
        this.xOffset = ((int) ((1.05f * f2) - f2)) / 2;
        final Drawable drawable = ContextCompat.getDrawable(context, C2665R.drawable.calls_pip_outershadow);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.voip.VoIPPiPView.4
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                canvas.save();
                canvas.scale(VoIPPiPView.this.floatingView.getScaleX(), VoIPPiPView.this.floatingView.getScaleY(), VoIPPiPView.this.floatingView.getLeft() + VoIPPiPView.this.floatingView.getPivotX(), VoIPPiPView.this.floatingView.getTop() + VoIPPiPView.this.floatingView.getPivotY());
                drawable.setBounds(VoIPPiPView.this.floatingView.getLeft() - AndroidUtilities.dp(2.0f), VoIPPiPView.this.floatingView.getTop() - AndroidUtilities.dp(2.0f), VoIPPiPView.this.floatingView.getRight() + AndroidUtilities.dp(2.0f), VoIPPiPView.this.floatingView.getBottom() + AndroidUtilities.dp(2.0f));
                drawable.draw(canvas);
                canvas.restore();
                super.onDraw(canvas);
            }
        };
        this.windowView = frameLayout;
        frameLayout.setWillNotDraw(false);
        FrameLayout frameLayout2 = this.windowView;
        int i3 = this.xOffset;
        int i4 = this.yOffset;
        frameLayout2.setPadding(i3, i4, i3, i4);
        this.floatingView = new FloatingView(context);
        VoIPTextureView voIPTextureView = new VoIPTextureView(context, false, true);
        this.callingUserTextureView = voIPTextureView;
        voIPTextureView.scaleType = VoIPTextureView.SCALE_TYPE_NONE;
        VoIPTextureView voIPTextureView2 = new VoIPTextureView(context, false, true);
        this.currentUserTextureView = voIPTextureView2;
        voIPTextureView2.renderer.setMirror(true);
        this.floatingView.addView(voIPTextureView);
        this.floatingView.addView(voIPTextureView2);
        this.floatingView.setBackgroundColor(-7829368);
        this.windowView.addView(this.floatingView);
        this.windowView.setClipChildren(false);
        this.windowView.setClipToPadding(false);
        if (z) {
            View view = new View(context);
            this.topShadow = view;
            view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{ColorUtils.setAlphaComponent(-16777216, 76), 0}));
            this.floatingView.addView(this.topShadow, -1, AndroidUtilities.dp(60.0f));
            ImageView imageView = new ImageView(context);
            this.closeIcon = imageView;
            imageView.setImageResource(C2665R.drawable.pip_close);
            this.closeIcon.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
            this.closeIcon.setContentDescription(LocaleController.getString(C2665R.string.Close));
            this.floatingView.addView(this.closeIcon, LayoutHelper.createFrame(40, 40.0f, 53, 4.0f, 4.0f, 4.0f, 0.0f));
            ImageView imageView2 = new ImageView(context);
            this.enlargeIcon = imageView2;
            imageView2.setImageResource(C2665R.drawable.pip_enlarge);
            this.enlargeIcon.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
            this.enlargeIcon.setContentDescription(LocaleController.getString(C2665R.string.Open));
            this.floatingView.addView(this.enlargeIcon, LayoutHelper.createFrame(40, 40.0f, 51, 4.0f, 4.0f, 4.0f, 0.0f));
            this.closeIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    VoIPPiPView.$r8$lambda$7q1t5oZ8DhKBVav098VJkBjQryM(view2);
                }
            });
            this.enlargeIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$2(context, view2);
                }
            });
        }
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.registerStateListener(this);
        }
        updateViewState();
    }

    public static /* synthetic */ void $r8$lambda$7q1t5oZ8DhKBVav098VJkBjQryM(View view) {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.hangUp();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Context context, View view) {
        boolean z = context instanceof LaunchActivity;
        if (z && !ApplicationLoader.mainInterfacePaused) {
            VoIPFragment.show((Activity) context, this.currentAccount);
        } else if (z) {
            Intent intent = new Intent(context, (Class<?>) LaunchActivity.class);
            intent.setAction("voip");
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishInternal() {
        this.currentUserTextureView.renderer.release();
        this.callingUserTextureView.renderer.release();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.unregisterStateListener(this);
        }
        this.windowView.setVisibility(8);
        if (this.windowView.getParent() != null) {
            this.floatingView.getRelativePosition(this.point);
            float fMin = Math.min(1.0f, Math.max(0.0f, this.point[0]));
            ApplicationLoader.applicationContext.getSharedPreferences("voippipconfig", 0).edit().putFloat("relativeX", fMin).putFloat("relativeY", Math.min(1.0f, Math.max(0.0f, this.point[1]))).apply();
            try {
                this.windowManager.removeView(this.windowView);
            } catch (Throwable th) {
                FileLog.m992e(th);
            }
        }
        PipSource pipSource = this.pipSource;
        if (pipSource != null) {
            pipSource.destroy();
            this.pipSource = null;
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didEndCall);
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onStateChanged(int i) {
        if (i == 11 || i == 17 || i == 4 || i == 10) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPPiPView.finish();
                }
            }, 200L);
        }
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null) {
            finish();
        } else if (i == 3 && !sharedInstance.isVideoAvailable()) {
            finish();
        } else {
            updateViewState();
        }
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onMediaStateUpdated(int i, int i2) {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null && sharedInstance.getRemoteVideoState() == 2) {
            Context context = instance.windowView.getContext();
            if (this.pipSource == null && PipUtils.checkPermissions(context) == 1 && (context instanceof Activity)) {
                this.pipSource = new PipSource.Builder((Activity) context, this).setTagPrefix("voip-pip").setPriority(1).setContentView(this.callingUserTextureView.renderer).setPlaceholderView(this.callingUserTextureView.getPlaceholderView()).build();
            }
        } else {
            PipSource pipSource = this.pipSource;
            if (pipSource != null) {
                pipSource.destroy();
                this.pipSource = null;
            }
        }
        updateViewState();
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onCameraSwitch(boolean z) {
        updateViewState();
    }

    @Override // org.telegram.messenger.voip.VoIPService.StateListener
    public void onScreenOnChange(boolean z) {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null) {
            return;
        }
        if (!z && this.currentUserIsVideo) {
            sharedInstance.setVideoState(false, 1);
        } else if (z && sharedInstance.getVideoState(false) == 1) {
            sharedInstance.setVideoState(false, 2);
        }
    }

    private void updateViewState() {
        boolean z = this.floatingView.getMeasuredWidth() != 0;
        boolean z2 = this.callingUserIsVideo;
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            this.callingUserIsVideo = sharedInstance.getRemoteVideoState() == 2;
            this.currentUserIsVideo = sharedInstance.getVideoState(false) == 2 || sharedInstance.getVideoState(false) == 1;
            this.currentUserTextureView.renderer.setMirror(sharedInstance.isFrontFaceCamera());
            this.currentUserTextureView.setIsScreencast(sharedInstance.isScreencast());
            this.currentUserTextureView.setScreenshareMiniProgress(1.0f, false);
        }
        boolean z3 = this.callingUserIsVideo;
        if (!z) {
            this.progressToCameraMini = z3 ? 1.0f : 0.0f;
            return;
        }
        if (z2 != z3) {
            ValueAnimator valueAnimator = this.animatorToCameraMini;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progressToCameraMini, this.callingUserIsVideo ? 1.0f : 0.0f);
            this.animatorToCameraMini = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(this.animatorToCameraMiniUpdater);
            this.animatorToCameraMini.setDuration(300L).setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animatorToCameraMini.start();
        }
    }

    public void onTransitionEnd() {
        if (VoIPService.getSharedInstance() != null) {
            VoIPService.getSharedInstance().swapSinks();
        }
    }

    public void onPause() {
        if (this.windowLayoutParams.type == 99) {
            VoIPService sharedInstance = VoIPService.getSharedInstance();
            if (this.currentUserIsVideo) {
                sharedInstance.setVideoState(false, 1);
            }
        }
    }

    public void onResume() {
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null || sharedInstance.getVideoState(false) != 1) {
            return;
        }
        sharedInstance.setVideoState(false, 2);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didEndCall) {
            finish();
        }
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public Bitmap pipCreatePrimaryWindowViewBitmap() {
        VoIPTextureView voIPTextureView = this.callingUserTextureView;
        if (voIPTextureView == null || !voIPTextureView.renderer.isAvailable()) {
            return null;
        }
        return this.callingUserTextureView.renderer.getBitmap();
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public View pipCreatePictureInPictureView() {
        VoIPTextureView voIPTextureView = new VoIPTextureView(this.callingUserTextureView.getContext(), false, true, false, false);
        this.pipTextureView = voIPTextureView;
        voIPTextureView.renderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FIT);
        this.pipTextureView.renderer.setEnableHardwareScaler(true);
        this.pipTextureView.renderer.setRotateTextureWithScreen(true);
        VoIPTextureView voIPTextureView2 = this.pipTextureView;
        voIPTextureView2.scaleType = VoIPTextureView.SCALE_TYPE_FIT;
        voIPTextureView2.renderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), new RendererCommon.RendererEvents() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.5
            @Override // org.webrtc.RendererCommon.RendererEvents
            public void onFrameResolutionChanged(int i, int i2, int i3) {
            }

            @Override // org.webrtc.RendererCommon.RendererEvents
            public void onFirstFrameRendered() {
                if (VoIPPiPView.this.firstFrameCallback != null) {
                    VoIPPiPView.this.firstFrameCallback.run();
                    VoIPPiPView.this.firstFrameCallback = null;
                }
            }
        });
        View view = this.pipTextureView.backgroundView;
        if (view != null) {
            view.setVisibility(8);
        }
        return this.pipTextureView;
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public void pipHidePrimaryWindowView(Runnable runnable) {
        this.firstFrameCallback = runnable;
        VoIPTextureView voIPTextureView = this.callingUserTextureView;
        if (voIPTextureView != null) {
            voIPTextureView.renderer.clearFirstFrame();
        }
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.setSinks(this.currentUserTextureView.renderer, this.pipTextureView.renderer);
        }
        this.windowViewSkipRender = true;
        this.windowManager.removeView(this.windowView);
        this.windowView.invalidate();
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public Bitmap pipCreatePictureInPictureViewBitmap() {
        VoIPTextureView voIPTextureView = this.pipTextureView;
        if (voIPTextureView == null || !voIPTextureView.renderer.isAvailable()) {
            return null;
        }
        return this.pipTextureView.renderer.getBitmap();
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public void pipShowPrimaryWindowView(Runnable runnable) {
        this.firstFrameCallback = runnable;
        this.windowManager.addView(this.windowView, this.windowLayoutParams);
        VoIPTextureView voIPTextureView = this.pipTextureView;
        if (voIPTextureView != null) {
            voIPTextureView.renderer.release();
            this.pipTextureView = null;
        }
        this.windowViewSkipRender = false;
        this.windowView.invalidate();
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance != null) {
            sharedInstance.setSinks(this.currentUserTextureView.renderer, this.callingUserTextureView.renderer);
        }
    }

    public class FloatingView extends FrameLayout {
        float bottomPadding;
        float leftPadding;
        float rightPadding;
        float topPadding;
        float touchSlop;

        public FloatingView(Context context) {
            super(context);
            this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.FloatingView.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), (1.0f / view.getScaleX()) * AndroidUtilities.dp(4.0f));
                }
            });
            setClipToOutline(true);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.leftPadding = AndroidUtilities.dp(16.0f);
            this.rightPadding = AndroidUtilities.dp(16.0f);
            this.topPadding = AndroidUtilities.dp(60.0f);
            this.bottomPadding = AndroidUtilities.dp(16.0f);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            VoIPPiPView.this.currentUserTextureView.setPivotX(r0.callingUserTextureView.getMeasuredWidth());
            VoIPPiPView.this.currentUserTextureView.setPivotY(r0.callingUserTextureView.getMeasuredHeight());
            VoIPPiPView.this.currentUserTextureView.setTranslationX((-AndroidUtilities.dp(4.0f)) * (1.0f / getScaleX()) * VoIPPiPView.this.progressToCameraMini);
            VoIPPiPView.this.currentUserTextureView.setTranslationY((-AndroidUtilities.dp(4.0f)) * (1.0f / getScaleY()) * VoIPPiPView.this.progressToCameraMini);
            VoIPPiPView.this.currentUserTextureView.setRoundCorners(AndroidUtilities.dp(8.0f) * (1.0f / getScaleY()) * VoIPPiPView.this.progressToCameraMini);
            VoIPPiPView voIPPiPView = VoIPPiPView.this;
            voIPPiPView.currentUserTextureView.setScaleX(((1.0f - voIPPiPView.progressToCameraMini) * 0.6f) + 0.4f);
            VoIPPiPView voIPPiPView2 = VoIPPiPView.this;
            voIPPiPView2.currentUserTextureView.setScaleY(((1.0f - voIPPiPView2.progressToCameraMini) * 0.6f) + 0.4f);
            VoIPPiPView voIPPiPView3 = VoIPPiPView.this;
            voIPPiPView3.currentUserTextureView.setAlpha(Math.min(1.0f, 1.0f - voIPPiPView3.progressToCameraMini));
            super.dispatchDraw(canvas);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (VoIPPiPView.this.expandedAnimationInProgress || VoIPPiPView.switchingToPip || VoIPPiPView.instance == null) {
                return false;
            }
            AndroidUtilities.cancelRunOnUIThread(VoIPPiPView.this.collapseRunnable);
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            ViewParent parent = getParent();
            int action = motionEvent.getAction();
            if (action == 0) {
                VoIPPiPView voIPPiPView = VoIPPiPView.this;
                voIPPiPView.startX = rawX;
                voIPPiPView.startY = rawY;
                voIPPiPView.startTime = System.currentTimeMillis();
                AnimatorSet animatorSet = VoIPPiPView.this.moveToBoundsAnimator;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
            } else if (action == 1) {
                AnimatorSet animatorSet2 = VoIPPiPView.this.moveToBoundsAnimator;
                if (animatorSet2 != null) {
                    animatorSet2.cancel();
                }
                if (motionEvent.getAction() == 1 && !VoIPPiPView.this.moving && System.currentTimeMillis() - VoIPPiPView.this.startTime < 150) {
                    Context context = getContext();
                    boolean z = context instanceof LaunchActivity;
                    if (z && !ApplicationLoader.mainInterfacePaused) {
                        VoIPFragment.show((Activity) context, VoIPPiPView.this.currentAccount);
                    } else if (z) {
                        Intent intent = new Intent(context, (Class<?>) LaunchActivity.class);
                        intent.setAction("voip");
                        context.startActivity(intent);
                    }
                    VoIPPiPView.this.moving = false;
                    return false;
                }
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    Point point = AndroidUtilities.displaySize;
                    int i = point.x;
                    int i2 = point.y + VoIPPiPView.topInset;
                    float f = this.topPadding;
                    float f2 = this.bottomPadding;
                    VoIPPiPView voIPPiPView2 = VoIPPiPView.this;
                    float left = voIPPiPView2.windowLayoutParams.x + voIPPiPView2.floatingView.getLeft();
                    float measuredWidth = VoIPPiPView.this.floatingView.getMeasuredWidth() + left;
                    VoIPPiPView voIPPiPView3 = VoIPPiPView.this;
                    float top = voIPPiPView3.windowLayoutParams.y + voIPPiPView3.floatingView.getTop();
                    float measuredHeight = VoIPPiPView.this.floatingView.getMeasuredHeight() + top;
                    VoIPPiPView.this.moveToBoundsAnimator = new AnimatorSet();
                    float f3 = this.leftPadding;
                    if (left < f3) {
                        VoIPPiPView voIPPiPView4 = VoIPPiPView.this;
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(voIPPiPView4.windowLayoutParams.x, f3 - voIPPiPView4.floatingView.getLeft());
                        valueAnimatorOfFloat.addUpdateListener(VoIPPiPView.this.updateXlistener);
                        VoIPPiPView.this.moveToBoundsAnimator.playTogether(valueAnimatorOfFloat);
                    } else if (measuredWidth > i - this.rightPadding) {
                        VoIPPiPView voIPPiPView5 = VoIPPiPView.this;
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(voIPPiPView5.windowLayoutParams.x, (i - voIPPiPView5.floatingView.getRight()) - this.rightPadding);
                        valueAnimatorOfFloat2.addUpdateListener(VoIPPiPView.this.updateXlistener);
                        VoIPPiPView.this.moveToBoundsAnimator.playTogether(valueAnimatorOfFloat2);
                    }
                    if (top < f) {
                        VoIPPiPView voIPPiPView6 = VoIPPiPView.this;
                        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(voIPPiPView6.windowLayoutParams.y, f - voIPPiPView6.floatingView.getTop());
                        valueAnimatorOfFloat3.addUpdateListener(VoIPPiPView.this.updateYlistener);
                        VoIPPiPView.this.moveToBoundsAnimator.playTogether(valueAnimatorOfFloat3);
                    } else if (measuredHeight > i2 - f2) {
                        VoIPPiPView voIPPiPView7 = VoIPPiPView.this;
                        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(voIPPiPView7.windowLayoutParams.y, (i2 - voIPPiPView7.floatingView.getMeasuredHeight()) - f2);
                        valueAnimatorOfFloat4.addUpdateListener(VoIPPiPView.this.updateYlistener);
                        VoIPPiPView.this.moveToBoundsAnimator.playTogether(valueAnimatorOfFloat4);
                    }
                    VoIPPiPView.this.moveToBoundsAnimator.setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT);
                    VoIPPiPView.this.moveToBoundsAnimator.start();
                }
                VoIPPiPView.this.moving = false;
                if (VoIPPiPView.instance.expanded) {
                    AndroidUtilities.runOnUIThread(VoIPPiPView.this.collapseRunnable, 3000L);
                }
            } else if (action == 2) {
                VoIPPiPView voIPPiPView8 = VoIPPiPView.this;
                float f4 = rawX - voIPPiPView8.startX;
                float f5 = rawY - voIPPiPView8.startY;
                if (!voIPPiPView8.moving) {
                    float f6 = (f4 * f4) + (f5 * f5);
                    float f7 = this.touchSlop;
                    if (f6 > f7 * f7) {
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        VoIPPiPView voIPPiPView9 = VoIPPiPView.this;
                        voIPPiPView9.moving = true;
                        voIPPiPView9.startX = rawX;
                        voIPPiPView9.startY = rawY;
                        f4 = 0.0f;
                        f5 = 0.0f;
                    }
                }
                VoIPPiPView voIPPiPView10 = VoIPPiPView.this;
                if (voIPPiPView10.moving) {
                    WindowManager.LayoutParams layoutParams = voIPPiPView10.windowLayoutParams;
                    layoutParams.x = (int) (layoutParams.x + f4);
                    layoutParams.y = (int) (layoutParams.y + f5);
                    voIPPiPView10.startX = rawX;
                    voIPPiPView10.startY = rawY;
                    WindowManager windowManager = voIPPiPView10.windowManager;
                    VoIPPiPView voIPPiPView11 = VoIPPiPView.this;
                    AndroidUtilities.updateViewLayout(windowManager, voIPPiPView11.windowView, voIPPiPView11.windowLayoutParams);
                }
            } else if (action == 3) {
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getRelativePosition(float[] fArr) {
            Point point = AndroidUtilities.displaySize;
            float f = point.x;
            float f2 = point.y;
            VoIPPiPView voIPPiPView = VoIPPiPView.this;
            float left = voIPPiPView.windowLayoutParams.x + voIPPiPView.floatingView.getLeft();
            float f3 = this.leftPadding;
            fArr[0] = (left - f3) / (((f - f3) - this.rightPadding) - VoIPPiPView.this.floatingView.getMeasuredWidth());
            VoIPPiPView voIPPiPView2 = VoIPPiPView.this;
            float top = voIPPiPView2.windowLayoutParams.y + voIPPiPView2.floatingView.getTop();
            float f4 = this.topPadding;
            fArr[1] = (top - f4) / (((f2 - f4) - this.bottomPadding) - VoIPPiPView.this.floatingView.getMeasuredHeight());
            fArr[0] = Math.min(1.0f, Math.max(0.0f, fArr[0]));
            fArr[1] = Math.min(1.0f, Math.max(0.0f, fArr[1]));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void expand(boolean z) {
            AndroidUtilities.cancelRunOnUIThread(VoIPPiPView.this.collapseRunnable);
            if (VoIPPiPView.instance == null || VoIPPiPView.this.expandedAnimationInProgress || VoIPPiPView.instance.expanded == z) {
                return;
            }
            VoIPPiPView.instance.expanded = z;
            VoIPPiPView voIPPiPView = VoIPPiPView.this;
            int i = voIPPiPView.parentWidth;
            int i2 = voIPPiPView.xOffset;
            float f = (i * 0.25f) + (i2 * 2);
            int i3 = voIPPiPView.parentHeight;
            int i4 = voIPPiPView.yOffset;
            float f2 = (i3 * 0.25f) + (i4 * 2);
            float f3 = (i * 0.4f) + (i2 * 2);
            float f4 = (i3 * 0.4f) + (i4 * 2);
            voIPPiPView.expandedAnimationInProgress = true;
            if (z) {
                Context context = VoIPPiPView.instance.windowView.getContext();
                VoIPPiPView voIPPiPView2 = VoIPPiPView.this;
                WindowManager.LayoutParams layoutParamsCreateWindowLayoutParams = VoIPPiPView.createWindowLayoutParams(context, voIPPiPView2.parentWidth, voIPPiPView2.parentHeight, 0.4f);
                Context context2 = getContext();
                VoIPPiPView voIPPiPView3 = VoIPPiPView.this;
                final VoIPPiPView voIPPiPView4 = new VoIPPiPView(context2, voIPPiPView3.parentWidth, voIPPiPView3.parentHeight, true);
                getRelativePosition(VoIPPiPView.this.point);
                VoIPPiPView voIPPiPView5 = VoIPPiPView.this;
                float[] fArr = voIPPiPView5.point;
                float f5 = fArr[0];
                float f6 = fArr[1];
                WindowManager.LayoutParams layoutParams = voIPPiPView5.windowLayoutParams;
                layoutParamsCreateWindowLayoutParams.x = (int) (layoutParams.x - ((f3 - f) * f5));
                layoutParamsCreateWindowLayoutParams.y = (int) (layoutParams.y - ((f4 - f2) * f6));
                AndroidUtilities.setPreferredMaxRefreshRate(voIPPiPView5.windowManager, voIPPiPView4.windowView, layoutParamsCreateWindowLayoutParams);
                VoIPPiPView.this.windowManager.addView(voIPPiPView4.windowView, layoutParamsCreateWindowLayoutParams);
                voIPPiPView4.windowView.setAlpha(1.0f);
                voIPPiPView4.windowLayoutParams = layoutParamsCreateWindowLayoutParams;
                voIPPiPView4.windowManager = VoIPPiPView.this.windowManager;
                VoIPPiPView.expandedInstance = voIPPiPView4;
                swapRender(VoIPPiPView.instance, VoIPPiPView.expandedInstance);
                final float scaleX = VoIPPiPView.this.floatingView.getScaleX() * 0.625f;
                voIPPiPView4.floatingView.setPivotX(f5 * VoIPPiPView.this.parentWidth * 0.4f);
                voIPPiPView4.floatingView.setPivotY(f6 * VoIPPiPView.this.parentHeight * 0.4f);
                voIPPiPView4.floatingView.setScaleX(scaleX);
                voIPPiPView4.floatingView.setScaleY(scaleX);
                VoIPPiPView.expandedInstance.topShadow.setAlpha(0.0f);
                VoIPPiPView.expandedInstance.closeIcon.setAlpha(0.0f);
                VoIPPiPView.expandedInstance.enlargeIcon.setAlpha(0.0f);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$FloatingView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$expand$1(scaleX, voIPPiPView4);
                    }
                }, 64L);
                return;
            }
            if (VoIPPiPView.expandedInstance == null) {
                return;
            }
            VoIPPiPView.expandedInstance.floatingView.getRelativePosition(VoIPPiPView.this.point);
            float[] fArr2 = VoIPPiPView.this.point;
            float f7 = fArr2[0];
            float f8 = fArr2[1];
            VoIPPiPView.instance.windowLayoutParams.x = (int) (VoIPPiPView.expandedInstance.windowLayoutParams.x + ((f3 - f) * f7));
            VoIPPiPView.instance.windowLayoutParams.y = (int) (VoIPPiPView.expandedInstance.windowLayoutParams.y + ((f4 - f2) * f8));
            final float scaleX2 = VoIPPiPView.this.floatingView.getScaleX() * 0.625f;
            VoIPPiPView.expandedInstance.floatingView.setPivotX(f7 * VoIPPiPView.this.parentWidth * 0.4f);
            VoIPPiPView.expandedInstance.floatingView.setPivotY(f8 * VoIPPiPView.this.parentHeight * 0.4f);
            showUi(false);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$FloatingView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VoIPPiPView.FloatingView.m15050$r8$lambda$IozzDMM2wo9rwKfitkKti6NbPU(scaleX2, valueAnimator);
                }
            });
            valueAnimatorOfFloat.setDuration(300L).setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat.addListener(new C47783(z));
            valueAnimatorOfFloat.start();
            VoIPPiPView.this.expandAnimator = valueAnimatorOfFloat;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$expand$1(final float f, final VoIPPiPView voIPPiPView) {
            if (VoIPPiPView.expandedInstance == null) {
                return;
            }
            VoIPPiPView.this.windowView.setAlpha(0.0f);
            try {
                VoIPPiPView.this.windowManager.removeView(VoIPPiPView.this.windowView);
            } catch (Throwable th) {
                FileLog.m992e(th);
            }
            animate().cancel();
            showUi(true);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            final float f2 = 1.0f;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$FloatingView$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VoIPPiPView.FloatingView.m15051$r8$lambda$nnUQfHzfHnDL_MoShkmrtDfByk(f, f2, voIPPiPView, valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.VoIPPiPView.FloatingView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    VoIPPiPView.this.expandedAnimationInProgress = false;
                }
            });
            valueAnimatorOfFloat.setDuration(300L).setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat.start();
            VoIPPiPView.this.expandAnimator = valueAnimatorOfFloat;
        }

        /* JADX INFO: renamed from: $r8$lambda$nn-UQfHzfHnDL_MoShkmrtDfByk, reason: not valid java name */
        public static /* synthetic */ void m15051$r8$lambda$nnUQfHzfHnDL_MoShkmrtDfByk(float f, float f2, VoIPPiPView voIPPiPView, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f3 = (f * (1.0f - fFloatValue)) + (f2 * fFloatValue);
            voIPPiPView.floatingView.setScaleX(f3);
            voIPPiPView.floatingView.setScaleY(f3);
            voIPPiPView.floatingView.invalidate();
            voIPPiPView.windowView.invalidate();
            voIPPiPView.floatingView.invalidateOutline();
        }

        /* JADX INFO: renamed from: $r8$lambda$IozzDMM2-wo9rwKfitkKti6NbPU, reason: not valid java name */
        public static /* synthetic */ void m15050$r8$lambda$IozzDMM2wo9rwKfitkKti6NbPU(float f, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f2 = (1.0f - fFloatValue) + (f * fFloatValue);
            if (VoIPPiPView.expandedInstance != null) {
                VoIPPiPView.expandedInstance.floatingView.setScaleX(f2);
                VoIPPiPView.expandedInstance.floatingView.setScaleY(f2);
                VoIPPiPView.expandedInstance.floatingView.invalidate();
                VoIPPiPView.expandedInstance.floatingView.invalidateOutline();
                VoIPPiPView.expandedInstance.windowView.invalidate();
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.Components.voip.VoIPPiPView$FloatingView$3 */
        public class C47783 extends AnimatorListenerAdapter {
            final /* synthetic */ boolean val$expanded;

            public C47783(boolean z) {
                this.val$expanded = z;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (VoIPPiPView.expandedInstance == null) {
                    return;
                }
                FloatingView.this.swapRender(VoIPPiPView.expandedInstance, VoIPPiPView.instance);
                VoIPPiPView.instance.windowView.setAlpha(1.0f);
                AndroidUtilities.setPreferredMaxRefreshRate(VoIPPiPView.this.windowManager, VoIPPiPView.instance.windowView, VoIPPiPView.instance.windowLayoutParams);
                VoIPPiPView.this.windowManager.addView(VoIPPiPView.instance.windowView, VoIPPiPView.instance.windowLayoutParams);
                final boolean z = this.val$expanded;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPPiPView$FloatingView$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAnimationEnd$0(z);
                    }
                }, 64L);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAnimationEnd$0(boolean z) {
                if (VoIPPiPView.instance == null || VoIPPiPView.expandedInstance == null) {
                    return;
                }
                VoIPPiPView.expandedInstance.windowView.setAlpha(0.0f);
                VoIPPiPView.expandedInstance.finishInternal();
                VoIPPiPView.this.expandedAnimationInProgress = false;
                if (z) {
                    AndroidUtilities.runOnUIThread(VoIPPiPView.this.collapseRunnable, 3000L);
                }
            }
        }

        private void showUi(boolean z) {
            if (VoIPPiPView.expandedInstance == null) {
                return;
            }
            if (z) {
                VoIPPiPView.expandedInstance.topShadow.setAlpha(0.0f);
                VoIPPiPView.expandedInstance.closeIcon.setAlpha(0.0f);
                VoIPPiPView.expandedInstance.enlargeIcon.setAlpha(0.0f);
            }
            ViewPropertyAnimator duration = VoIPPiPView.expandedInstance.topShadow.animate().alpha(z ? 1.0f : 0.0f).setDuration(300L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            VoIPPiPView.expandedInstance.closeIcon.animate().alpha(z ? 1.0f : 0.0f).setDuration(300L).setInterpolator(cubicBezierInterpolator).start();
            VoIPPiPView.expandedInstance.enlargeIcon.animate().alpha(z ? 1.0f : 0.0f).setDuration(300L).setInterpolator(cubicBezierInterpolator).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void swapRender(VoIPPiPView voIPPiPView, VoIPPiPView voIPPiPView2) {
            voIPPiPView2.currentUserTextureView.setStub(voIPPiPView.currentUserTextureView);
            voIPPiPView2.callingUserTextureView.setStub(voIPPiPView.callingUserTextureView);
            voIPPiPView.currentUserTextureView.renderer.release();
            voIPPiPView.callingUserTextureView.renderer.release();
            EglBase eglBase = VideoCapturerDevice.eglBase;
            if (eglBase == null) {
                return;
            }
            voIPPiPView2.currentUserTextureView.renderer.init(eglBase.getEglBaseContext(), null);
            voIPPiPView2.callingUserTextureView.renderer.init(VideoCapturerDevice.eglBase.getEglBaseContext(), VoIPPiPView.this.rendererEvents);
            if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().setSinks(voIPPiPView2.currentUserTextureView.renderer, voIPPiPView2.callingUserTextureView.renderer);
            }
        }
    }
}
