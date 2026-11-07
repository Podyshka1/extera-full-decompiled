package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.exteragram.messenger.camera.InstantCameraZoomSlider;
import com.exteragram.messenger.camera.RoundVideoUiHelper;
import com.exteragram.messenger.debug.DebugOverlayView;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.utils.Choreographer60FpsContent;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.InstantCameraView;
import org.telegram.ui.Components.InstantCameraViewBase;
import org.telegram.ui.Components.TelegramRoundVideoUpload;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.voip.CellFlickerDrawable;
import org.telegram.ui.Stories.recorder.FlashViews;
import org.telegram.utils.recorder.round.RoundVideoSession;
import org.telegram.utils.settings.SharedSettings;

/* JADX INFO: loaded from: classes7.dex */
public final class InstantCameraView2 extends InstantCameraViewBase {
    private RoundVideoSession.OutputResolution activeOutputResolution;
    private int activeOutputSize;
    private float animationTranslationY;
    private final int buttonIconSize;
    private final LinearLayout buttonsLayout;
    private final CameraContainer cameraContainer;
    private boolean cameraFlipAnimationCompleted;
    private ValueAnimator cameraFlipAnimator;
    private boolean cameraFlipEdgePassed;
    private boolean cameraFlipFirstFrameReady;
    private int cameraFlipGeneration;
    private boolean cameraFlipInProgress;
    private boolean cameraFlipSessionReady;
    private long cameraFlipStartedRealtimeMs;
    private RoundVideoSession.CameraFacing cameraFlipTargetFacing;
    private RoundVideoSession.CameraCapabilities capabilities;
    private final int currentAccount;
    private final InstantCameraView.Delegate delegate;
    private boolean drawInitialPlaceholder;
    private final FlashViews.ImageViewInvertable flashButton;
    private RLottieDrawable flashOffDrawable;
    private RLottieDrawable flashOnDrawable;
    private final FlashViews flashViews;
    private boolean handlingPreviewTextureInvalidate;
    private boolean heavyOperationsStopped;
    private Bitmap lastBitmap;
    private long lastPreviewUiFrameRealtimeNs;
    private long lastVisibleDurationMs;
    private final ImageView muteImageView;
    private boolean muted;
    private boolean opened;
    private float panTranslationY;
    private final View parentView;
    private SendOptions pendingSend;
    private Bitmap pendingSwitchSnapshot;
    private float pinchStartDistance;
    private float pinchStartZoomRatio;
    private boolean pinchZoomActive;
    private final Matrix previewBitmapMatrix;
    private final float[] previewBitmapMatrixValues;
    private final Paint previewBitmapPaint;
    private final FrameLayout previewContainer;
    private float previousWindowBrightness;
    private final RoundVideoProgressView progressView;
    private final int recordingGuid;
    private final Runnable recordingUiFallback;
    private boolean recordingUiFallbackRegistered;
    private boolean requestedFrontface;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean resumeNotificationPending;
    private final int[] screenPosition;
    private final boolean secretChat;
    private boolean sent;
    private RoundVideoSession session;
    private final RoundVideoSession.Listener sessionListener;
    private boolean setVisibilityFromPause;
    private boolean startedNotificationSent;
    private RoundVideoSession.StateInfo stateInfo;
    private boolean stopNotificationSent;
    private final FlashViews.ImageViewInvertable switchCameraButton;
    private RLottieDrawable switchCameraDrawable;
    private boolean switchPlaceholderVisible;
    private final BackupImageView textureOverlayView;
    private final TextureView textureView;
    private int textureViewSize;
    private TelegramRoundVideoUpload upload;
    private VideoEditedInfo videoEditedInfo;
    private AnimatorSet visibilityAnimator;
    private int zoomPointerId1;
    private int zoomPointerId2;
    private final InstantCameraZoomSlider zoomSlider;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (isRecordingState()) {
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            long j = this.lastPreviewUiFrameRealtimeNs;
            if (j == 0 || jElapsedRealtimeNanos - j >= 70000000) {
                updateRecordingUiFrame();
            }
        }
    }

    public InstantCameraView2(Context context, InstantCameraView.Delegate delegate, final Theme.ResourcesProvider resourcesProvider, boolean z) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.screenPosition = new int[2];
        this.previewBitmapMatrix = new Matrix();
        this.previewBitmapMatrixValues = new float[9];
        this.previewBitmapPaint = new Paint(3);
        this.requestedFrontface = true;
        this.zoomPointerId1 = -1;
        this.zoomPointerId2 = -1;
        this.previousWindowBrightness = Float.NaN;
        this.recordingUiFallback = new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.sessionListener = new RoundVideoSession.Listener() { // from class: org.telegram.ui.Components.InstantCameraView2.4
            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onStateChanged(RoundVideoSession.StateInfo stateInfo) {
                RoundVideoSession.State state = InstantCameraView2.this.stateInfo == null ? null : InstantCameraView2.this.stateInfo.getState();
                InstantCameraView2.this.stateInfo = stateInfo;
                RoundVideoSession.State state2 = RoundVideoSession.State.RECORDING;
                if (state == state2 && stateInfo.getState() != state2) {
                    InstantCameraView2.this.saveLastCameraBitmap(true);
                }
                InstantCameraView2 instantCameraView2 = InstantCameraView2.this;
                instantCameraView2.lastVisibleDurationMs = Math.max(instantCameraView2.lastVisibleDurationMs, stateInfo.getRecordedDurationMs());
                RoundVideoSession.State state3 = stateInfo.getState();
                InstantCameraView2 instantCameraView22 = InstantCameraView2.this;
                if (state3 == state2) {
                    instantCameraView22.stopHeavyOperations();
                    InstantCameraView2.this.hideInitialPlaceholder();
                    InstantCameraView2.this.setRecordingUiFrameClockActive(true);
                    InstantCameraView2.this.updateRecordingUiFrame();
                    boolean z2 = InstantCameraView2.this.startedNotificationSent;
                    InstantCameraView2 instantCameraView23 = InstantCameraView2.this;
                    if (!z2) {
                        instantCameraView23.startedNotificationSent = true;
                        NotificationCenter.getInstance(InstantCameraView2.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStarted, Integer.valueOf(InstantCameraView2.this.recordingGuid), Boolean.FALSE);
                    } else if (instantCameraView23.resumeNotificationPending) {
                        InstantCameraView2.this.resumeNotificationPending = false;
                        NotificationCenter.getInstance(InstantCameraView2.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordResumed, new Object[0]);
                    }
                } else {
                    instantCameraView22.setRecordingUiFrameClockActive(false);
                    InstantCameraView2.this.progressView.setProgress(stateInfo.getRecordedDurationMs() / stateInfo.getMaximumDurationMs());
                }
                if (stateInfo.getState() == RoundVideoSession.State.COMPLETED || stateInfo.getState() == RoundVideoSession.State.ERROR || stateInfo.getState() == RoundVideoSession.State.RELEASED) {
                    InstantCameraView2.this.cancelCameraFlipAnimation();
                    InstantCameraView2.this.startHeavyOperations();
                }
                if (state == state2 && stateInfo.getState() == RoundVideoSession.State.PAUSING) {
                    InstantCameraView2.this.postRecordStopped(2);
                }
                if (stateInfo.getState() == RoundVideoSession.State.PAUSING) {
                    InstantCameraView2.this.zoomSlider.unbindSession();
                }
                InstantCameraView2.this.updateButtons();
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onCameraCapabilitiesChanged(RoundVideoSession.CameraCapabilities cameraCapabilities) {
                InstantCameraView2.this.capabilities = cameraCapabilities;
                if (cameraCapabilities.getActiveFacing() != null) {
                    RoundVideoUiHelper.onActiveFacingChanged(cameraCapabilities.getActiveFacing());
                }
                if (InstantCameraView2.this.session != null) {
                    InstantCameraView2.this.zoomSlider.bindSession(InstantCameraView2.this.session, cameraCapabilities);
                }
                InstantCameraView2.this.updateButtons();
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onCameraSwitchStarted(RoundVideoSession.CameraFacing cameraFacing) {
                InstantCameraView2.this.zoomSlider.beginCameraSwitch();
                InstantCameraView2.this.startCameraFlipAnimation(cameraFacing);
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onCameraSwitchCompleted(RoundVideoSession.CameraFacing cameraFacing) {
                InstantCameraView2.this.cameraFlipSessionReady = true;
                FileLog.m1037d("RoundVideo camera flip session ready: facing=" + cameraFacing + ", elapsedMs=" + InstantCameraView2.this.getCameraFlipElapsedMs());
                InstantCameraView2.this.maybeFinishCameraFlip();
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onCameraSwitchFirstFrame() {
                InstantCameraView2.this.cameraFlipFirstFrameReady = true;
                FileLog.m1037d("RoundVideo camera flip first frame: elapsedMs=" + InstantCameraView2.this.getCameraFlipElapsedMs());
                if (!InstantCameraView2.this.cameraFlipInProgress || InstantCameraView2.this.cameraFlipEdgePassed) {
                    InstantCameraView2.this.hideCameraSwitchPlaceholder(true);
                }
                InstantCameraView2.this.maybeFinishCameraFlip();
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onPreviewReady(long j, long j2, long j3) {
                InstantCameraView2.this.progressView.setProgress(j / InstantCameraView2.this.stateInfo.getMaximumDurationMs());
                InstantCameraView2.this.muted = false;
                InstantCameraView2.this.muteImageView.setAlpha(0.0f);
                File previewFile = InstantCameraView2.this.session == null ? null : InstantCameraView2.this.session.getPreviewFile();
                if (previewFile == null) {
                    return;
                }
                InstantCameraView2 instantCameraView2 = InstantCameraView2.this;
                instantCameraView2.videoEditedInfo = instantCameraView2.createVideoEditedInfo(previewFile, j, null);
                InstantCameraView2.this.videoEditedInfo.startTime = j2 > 0 ? j2 : -1L;
                InstantCameraView2.this.videoEditedInfo.endTime = j3 < j ? j3 : -1L;
                NotificationCenter.getInstance(InstantCameraView2.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(InstantCameraView2.this.recordingGuid), InstantCameraView2.this.videoEditedInfo, previewFile.getAbsolutePath(), new ArrayList());
                float fMax = Math.max(1L, j);
                InstantCameraView2.this.dispatchTrimRange(j2 / fMax, j3 / fMax);
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onPreviewFirstFrame() {
                InstantCameraView2.this.hideInitialPlaceholder();
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onAudioAmplitude(double d) {
                NotificationCenter.getInstance(InstantCameraView2.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordProgressChanged, Integer.valueOf(InstantCameraView2.this.recordingGuid), Double.valueOf(d));
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onCompleted(RoundVideoSession.Result result) {
                InstantCameraView2.this.completeSend(result);
            }

            @Override // org.telegram.utils.recorder.round.RoundVideoSession.Listener
            public void onError(Exception exc) {
                InstantCameraView2.this.startHeavyOperations();
                FileLog.m1040e(exc);
                if (InstantCameraView2.this.upload != null) {
                    InstantCameraView2.this.upload.release(true);
                }
                InstantCameraView2.this.upload = null;
                MediaController.getInstance().requestRecordAudioFocus(false);
                boolean z2 = InstantCameraView2.this.startedNotificationSent;
                InstantCameraView2 instantCameraView2 = InstantCameraView2.this;
                if (z2) {
                    instantCameraView2.postRecordStopped(6);
                } else {
                    NotificationCenter.getInstance(instantCameraView2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(InstantCameraView2.this.recordingGuid));
                }
                InstantCameraView2.this.startAnimation(false, false);
            }
        };
        this.delegate = delegate;
        this.resourcesProvider = resourcesProvider;
        this.recordingGuid = delegate.getClassGuid();
        this.secretChat = delegate.isSecretChat();
        this.parentView = delegate.getFragmentView();
        setWillNotDraw(false);
        FlashViews flashViews = new FlashViews(context, null, this, null);
        this.flashViews = flashViews;
        RoundVideoUiHelper.applyFlashSettings(flashViews);
        addView(flashViews.backgroundView, LayoutHelper.createFrame(-1, -1, 119));
        CameraContainer cameraContainer = new CameraContainer(context);
        this.cameraContainer = cameraContainer;
        RoundVideoProgressView roundVideoProgressView = new RoundVideoProgressView(context);
        this.progressView = roundVideoProgressView;
        FrameLayout frameLayout = new FrameLayout(context);
        this.previewContainer = frameLayout;
        TextureView textureViewCreateTextureView = createTextureView(context);
        this.textureView = textureViewCreateTextureView;
        frameLayout.addView(textureViewCreateTextureView, LayoutHelper.createFrame(-1, -1, 119));
        final Paint paint = new Paint(1);
        paint.setColor(Color.argb(40, 0, 0, 0));
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Components.InstantCameraView2.1
            private final CellFlickerDrawable flickerDrawable = new CellFlickerDrawable();

            @Override // org.telegram.ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (InstantCameraView2.this.drawInitialPlaceholder) {
                    float fMin = Math.min(getWidth(), getHeight()) * 0.5f;
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                    canvas.drawRoundRect(rectF, fMin, fMin, paint);
                    rectF.inset(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f));
                    this.flickerDrawable.setParentWidth(getWidth());
                    this.flickerDrawable.draw(canvas, rectF, fMin, null);
                    invalidate();
                }
            }
        };
        this.textureOverlayView = backupImageView;
        backupImageView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.InstantCameraView2.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setOval(0, 0, view.getWidth(), view.getHeight());
            }
        });
        backupImageView.setClipToOutline(true);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(-1, -1, 119));
        roundVideoProgressView.addView(frameLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 14.0f, 14.0f, 14.0f, 14.0f));
        cameraContainer.addView(roundVideoProgressView, LayoutHelper.createFrame(-1, -1, 119));
        int i = AndroidUtilities.roundPlayingMessageSize;
        addView(cameraContainer, new FrameLayout.LayoutParams(i, i, 17));
        addView(flashViews.foregroundView, LayoutHelper.createFrame(-1, -1, 119));
        LinearLayout linearLayout = new LinearLayout(context);
        this.buttonsLayout = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
        addView(linearLayout, LayoutHelper.createFrame(-2, 56.0f, 83, 1.0f, 0.0f, 0.0f, 0.0f));
        FlashViews.ImageViewInvertable imageViewInvertable = new FlashViews.ImageViewInvertable(context);
        this.switchCameraButton = imageViewInvertable;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageViewInvertable.setScaleType(scaleType);
        imageViewInvertable.setContentDescription(LocaleController.getString(C2807R.string.AccDescrSwitchCamera));
        linearLayout.addView(imageViewInvertable, LayoutHelper.createLinear(44, 44));
        imageViewInvertable.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        FlashViews.ImageViewInvertable imageViewInvertable2 = new FlashViews.ImageViewInvertable(context);
        this.flashButton = imageViewInvertable2;
        imageViewInvertable2.setScaleType(scaleType);
        linearLayout.addView(imageViewInvertable2, LayoutHelper.createLinear(44, 44));
        imageViewInvertable2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        imageViewInvertable2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$4(resourcesProvider, view);
            }
        });
        int iDp = AndroidUtilities.dp(z ? 24.0f : 28.0f);
        this.buttonIconSize = iDp;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.roundcamera_flip, iDp, iDp);
        this.switchCameraDrawable = rLottieDrawable;
        rLottieDrawable.setCallback(imageViewInvertable);
        RLottieDrawable rLottieDrawable2 = this.switchCameraDrawable;
        rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getFramesCount() - 1);
        imageViewInvertable.setImageDrawable(this.switchCameraDrawable);
        updateFlashIcon();
        if (!z) {
            flashViews.add(imageViewInvertable);
            flashViews.add(imageViewInvertable2);
        } else if (resourcesProvider != null && !resourcesProvider.isDark()) {
            imageViewInvertable.setInvert(0.6f);
            imageViewInvertable2.setInvert(0.6f);
        }
        ImageView imageView = new ImageView(context);
        this.muteImageView = imageView;
        imageView.setScaleType(scaleType);
        imageView.setImageResource(C2807R.drawable.video_mute);
        imageView.setAlpha(0.0f);
        addView(imageView, LayoutHelper.createFrame(48, 48, 17));
        InstantCameraZoomSlider instantCameraZoomSlider = new InstantCameraZoomSlider(context, resourcesProvider);
        this.zoomSlider = instantCameraZoomSlider;
        instantCameraZoomSlider.setOpenAlpha(0.0f);
        addView(instantCameraZoomSlider, LayoutHelper.createFrame(-2, -2, 17));
        RoundVideoUiHelper.addDebugOverlay(this, new DebugOverlayView.DataSource() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda6
            @Override // com.exteragram.messenger.debug.DebugOverlayView.DataSource
            public final void build(DebugOverlayView.ContentBuilder contentBuilder) {
                this.f$0.lambda$new$5(contentBuilder);
            }
        });
        textureViewCreateTextureView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.handleZoomTouch(view, motionEvent);
            }
        });
        super.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        switchCamera();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        toggleFlash();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$4(Theme.ResourcesProvider resourcesProvider, View view) {
        RoundVideoSession.CameraCapabilities cameraCapabilities;
        if (this.session == null || this.stateInfo == null || (cameraCapabilities = this.capabilities) == null || cameraCapabilities.getFlashType() != RoundVideoSession.FlashType.SCREEN || !this.stateInfo.canControlCamera()) {
            return false;
        }
        final boolean zIsFlashEnabled = this.stateInfo.isFlashEnabled();
        if (!zIsFlashEnabled) {
            toggleFlash();
        }
        RoundVideoUiHelper.showFlashOptions(this, resourcesProvider, this.flashButton, this.flashViews, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(zIsFlashEnabled);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(boolean z) {
        RoundVideoSession roundVideoSession;
        if (z || (roundVideoSession = this.session) == null || !roundVideoSession.setFlashEnabled(false)) {
            return;
        }
        updateFlashIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(DebugOverlayView.ContentBuilder contentBuilder) {
        RoundVideoUiHelper.populateDebugOverlay(contentBuilder, getContext(), this.session, this.stateInfo, this.capabilities, this.zoomSlider);
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void setButtonsBackground(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory, BlurredBackgroundColorProvider blurredBackgroundColorProvider) {
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(this.buttonsLayout, blurredBackgroundColorProvider);
        blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(6.0f));
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(21.0f));
        this.buttonsLayout.setBackground(blurredBackgroundDrawableCreate);
        InstantCameraZoomSlider instantCameraZoomSlider = this.zoomSlider;
        instantCameraZoomSlider.setBlurBackground(blurredBackgroundDrawableViewFactory.create(instantCameraZoomSlider, blurredBackgroundColorProvider));
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void setInternalPadding(int i) {
        setPadding(0, 0, 0, i);
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void setFrontface(boolean z) {
        this.requestedFrontface = z;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public boolean isCameraReady() {
        RoundVideoSession.StateInfo stateInfo;
        return (this.session == null || (stateInfo = this.stateInfo) == null || !stateInfo.canControlCamera()) ? false : true;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public InstantCameraZoomSlider getZoomSlider() {
        return this.zoomSlider;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 24 || i == 25) {
            if (keyEvent.getAction() == 0 && isCameraReady()) {
                this.zoomSlider.stepZoom(i == 24);
            }
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.buttonsLayout.setAlpha(0.0f);
        this.cameraContainer.setAlpha(0.0f);
        this.cameraContainer.setScaleX(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.cameraContainer.setScaleY(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.cameraContainer.setTranslationX(0.0f);
        this.muteImageView.setAlpha(0.0f);
        this.muteImageView.setScaleX(1.0f);
        this.muteImageView.setScaleY(1.0f);
        this.zoomSlider.setOpenAlpha(0.0f);
        this.progressView.getPaint().setAlpha(0);
        try {
            Activity activity = (Activity) getContext();
            if (i == 0) {
                activity.getWindow().addFlags(128);
            } else {
                activity.getWindow().clearFlags(128);
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void destroy(boolean z) {
        setRecordingUiFrameClockActive(false);
        cancelCameraFlipAnimation();
        this.zoomSlider.unbindSession();
        RoundVideoSession roundVideoSession = this.session;
        if (roundVideoSession != null) {
            roundVideoSession.release();
            this.session = null;
        }
        TelegramRoundVideoUpload telegramRoundVideoUpload = this.upload;
        if (telegramRoundVideoUpload != null) {
            telegramRoundVideoUpload.release(!this.sent);
            this.upload = null;
        }
        setScreenFlashEnabled(false);
        MediaController.getInstance().requestRecordAudioFocus(false);
        startHeavyOperations();
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void togglePause() {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null) {
            return;
        }
        if (stateInfo.getState() == RoundVideoSession.State.RECORDING) {
            pauseForPreview();
        } else if (this.stateInfo.getState() == RoundVideoSession.State.PREVIEWING) {
            this.videoEditedInfo = null;
            this.resumeNotificationPending = true;
            this.stopNotificationSent = false;
            this.session.resumeRecording();
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public boolean isPaused() {
        RoundVideoSession.StateInfo stateInfo = this.stateInfo;
        if (stateInfo != null) {
            return stateInfo.getState() == RoundVideoSession.State.PAUSING || this.stateInfo.getState() == RoundVideoSession.State.PREVIEWING || this.stateInfo.getState() == RoundVideoSession.State.RESUMING;
        }
        return false;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void showCamera(boolean z) {
        if (this.session != null) {
            return;
        }
        this.setVisibilityFromPause = z;
        setVisibility(0);
        this.progressView.getPaint().setAlpha(255);
        this.sent = false;
        this.muted = false;
        this.startedNotificationSent = false;
        this.stopNotificationSent = false;
        this.lastVisibleDurationMs = 0L;
        this.progressView.setProgress(0.0f);
        showInitialPlaceholder();
        this.upload = new TelegramRoundVideoUpload(this.currentAccount, this.secretChat);
        this.activeOutputResolution = (RoundVideoSession.OutputResolution) SharedSettings.roundVideoOutputResolution.get();
        RoundVideoSession.Builder screenFlashController = new RoundVideoSession.Builder(getContext(), this.textureView).setOutputDirectory(new File(ApplicationLoader.getFilesDirFixed(), "cache")).setInitialFacing((RoundVideoSession.CameraFacing) SharedSettings.roundVideoLastCamera.get()).setOutputResolution(this.activeOutputResolution).setVideoBitrate(SharedSettings.roundVideoVideoBitrate.get()).setCameraResolution((RoundVideoSession.CameraResolution) SharedSettings.roundVideoCameraResolution.get()).setFrameRate((RoundVideoSession.FrameRate) SharedSettings.roundVideoFrameRate.get()).setCompositionEnabled(SharedSettings.roundVideoComposition.get()).setListener(this.sessionListener).setOutputListener(this.upload).setScreenFlashController(new RoundVideoSession.ScreenFlashController() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda8
            @Override // org.telegram.utils.recorder.round.RoundVideoSession.ScreenFlashController
            public final void setScreenFlashEnabled(boolean z2) {
                this.f$0.setScreenFlashEnabled(z2);
            }
        });
        RoundVideoUiHelper.applySessionSettings(screenFlashController, this.requestedFrontface);
        RoundVideoSession roundVideoSessionBuild = screenFlashController.build();
        this.session = roundVideoSessionBuild;
        this.activeOutputSize = roundVideoSessionBuild.getOutputSize();
        MediaController.getInstance().requestRecordAudioFocus(true);
        this.session.start();
        startAnimation(true, z);
    }

    public void startAnimation(boolean z, final boolean z2) {
        dispatchAnimationState(z, z2);
        AnimatorSet animatorSet = this.visibilityAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.visibilityAnimator.cancel();
        }
        PipRoundVideoView pipRoundVideoView = PipRoundVideoView.getInstance();
        if (pipRoundVideoView != null) {
            pipRoundVideoView.showTemporary(!z);
        }
        if (z && !this.opened) {
            this.cameraContainer.setTranslationX(0.0f);
            this.animationTranslationY = z2 ? 0.0f : getMeasuredHeight() * 0.5f;
            updateTranslationY();
        }
        this.opened = z;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
        float fDp = (z || Math.max(getCurrentDurationMs(), this.lastVisibleDurationMs) <= 300) ? 0.0f : AndroidUtilities.dp(24.0f) - (getMeasuredWidth() * 0.5f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z ? 1.0f : 0.0f, z ? 0.0f : 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startAnimation$6(z2, valueAnimator);
            }
        });
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.visibilityAnimator = animatorSet2;
        LinearLayout linearLayout = this.buttonsLayout;
        float[] fArr = {z ? 1.0f : 0.0f};
        Property property = View.ALPHA;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) property, fArr), ObjectAnimator.ofFloat(this.cameraContainer, (Property<CameraContainer, Float>) property, z ? 1.0f : 0.0f), ObjectAnimator.ofFloat(this.cameraContainer, (Property<CameraContainer, Float>) View.SCALE_X, z ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.cameraContainer, (Property<CameraContainer, Float>) View.SCALE_Y, z ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.cameraContainer, (Property<CameraContainer, Float>) View.TRANSLATION_X, fDp), ObjectAnimator.ofFloat(this.muteImageView, (Property<ImageView, Float>) property, (this.muted && z) ? 1.0f : 0.0f), ObjectAnimator.ofFloat(this.zoomSlider, InstantCameraZoomSlider.OPEN_ALPHA, z ? 1.0f : 0.0f), valueAnimatorOfFloat);
        this.visibilityAnimator.setDuration(180L);
        this.visibilityAnimator.setInterpolator(new DecelerateInterpolator());
        if (!z) {
            this.visibilityAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView2.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator == InstantCameraView2.this.visibilityAnimator) {
                        InstantCameraView2.this.hideCamera(true);
                        InstantCameraView2.this.setVisibilityFromPause = false;
                        InstantCameraView2.this.setVisibility(4);
                    }
                }
            });
        } else {
            setTranslationX(0.0f);
        }
        this.visibilityAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAnimation$6(boolean z, ValueAnimator valueAnimator) {
        this.animationTranslationY = z ? 0.0f : getMeasuredHeight() * 0.5f * ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateTranslationY();
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public RectF getCameraRect() {
        this.textureView.getLocationOnScreen(this.screenPosition);
        return new RectF(this.screenPosition[0], r1[1], r2 + this.textureView.getWidth(), this.screenPosition[1] + this.textureView.getHeight());
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void changeVideoPreviewState(int i, float f) {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null || stateInfo.getState() != RoundVideoSession.State.PREVIEWING) {
            return;
        }
        applyExternalTrim();
        if (i == 0) {
            this.session.playPreview();
        } else if (i == 1) {
            this.session.pausePreview();
        } else if (i == 2) {
            this.session.seekPreview((long) (f * this.stateInfo.getRecordedDurationMs()));
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void send(int i, boolean z, int i2, int i3, int i4, long j, long j2) {
        if (this.session == null || this.stateInfo == null) {
            return;
        }
        if (i == 3) {
            pauseForPreview();
            return;
        }
        if (i == 1 || i == 4) {
            long currentDurationMs = getCurrentDurationMs();
            if (currentDurationMs < 800) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.TRUE, Integer.valueOf((int) currentDurationMs));
                cancel(false);
                return;
            }
            if (this.stateInfo.getState() == RoundVideoSession.State.RECORDING) {
                postRecordStopped(5);
            } else {
                applyExternalTrim();
            }
            this.pendingSend = new SendOptions(z, i2, i3, i4, j, j2);
            this.session.finish(!this.muted);
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void cancel(boolean z) {
        if (this.session == null) {
            return;
        }
        postRecordStopped(z ? 0 : 6);
        this.session.cancel();
        TelegramRoundVideoUpload telegramRoundVideoUpload = this.upload;
        if (telegramRoundVideoUpload != null) {
            telegramRoundVideoUpload.release(true);
        }
        this.upload = null;
        MediaController.getInstance().requestRecordAudioFocus(false);
        startAnimation(false, false);
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public View getButtonsLayout() {
        return this.buttonsLayout;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public View getMuteImageView() {
        return this.muteImageView;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public Paint getPaint() {
        return this.progressView.getPaint();
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void hideCamera(boolean z) {
        destroy(z);
        this.cameraContainer.setTranslationX(0.0f);
        this.animationTranslationY = 0.0f;
        updateTranslationY();
        this.cameraContainer.setImageReceiver(null);
        MediaController.getInstance().resumeByRewind();
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public TextureView getTextureView() {
        return this.textureView;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public InstantCameraViewBase.InstantViewCameraContainer getCameraContainer() {
        return this.cameraContainer;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void setIsMessageTransition(boolean z) {
        this.cameraContainer.messageTransition = z;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void onPanTranslationUpdate(float f) {
        this.panTranslationY = f * 0.5f;
        updateTranslationY();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return motionEvent.getAction() != 0 || motionEvent.getY() <= ((float) (getMeasuredHeight() - getPaddingBottom()));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (View.MeasureSpec.getSize(i2) - getPaddingBottom() > View.MeasureSpec.getSize(i) * 1.3f) {
            i3 = AndroidUtilities.roundPlayingMessageSize;
        } else {
            i3 = AndroidUtilities.roundMessageSize;
        }
        if (this.textureViewSize != i3) {
            this.textureViewSize = i3;
            this.cameraContainer.getLayoutParams().width = AndroidUtilities.dp(28.0f) + i3;
            this.cameraContainer.getLayoutParams().height = AndroidUtilities.dp(28.0f) + i3;
            ((FrameLayout.LayoutParams) this.muteImageView.getLayoutParams()).topMargin = (i3 / 2) - AndroidUtilities.dp(24.0f);
            this.zoomSlider.setTextureViewSize(i3);
        }
        super.onMeasure(i, i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30);
        this.flashViews.backgroundView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.flashViews.foregroundView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    private boolean isRecordingState() {
        RoundVideoSession.StateInfo stateInfo = this.stateInfo;
        return stateInfo != null && stateInfo.getState() == RoundVideoSession.State.RECORDING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecordingUiFrameClockActive(boolean z) {
        if (z == this.recordingUiFallbackRegistered) {
            return;
        }
        this.recordingUiFallbackRegistered = z;
        this.lastPreviewUiFrameRealtimeNs = 0L;
        if (z) {
            Choreographer60FpsContent.getInstance().addFrameCallback(this.recordingUiFallback, 30);
        } else {
            Choreographer60FpsContent.getInstance().removeFrameCallback(this.recordingUiFallback);
        }
        dispatchRecordingUiFrameClockActive(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRecordingUiFrame() {
        RoundVideoSession.StateInfo stateInfo = this.stateInfo;
        if (stateInfo == null || stateInfo.getState() != RoundVideoSession.State.RECORDING) {
            return;
        }
        long jMin = Math.min(stateInfo.getMaximumDurationMs(), (stateInfo.getRecordedDurationMs() + SystemClock.elapsedRealtime()) - stateInfo.getRecordingStartedAtRealtimeMs());
        this.lastVisibleDurationMs = jMin;
        this.progressView.setProgress(jMin / stateInfo.getMaximumDurationMs());
        dispatchRecordingUiFrame(jMin);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopHeavyOperations() {
        if (this.heavyOperationsStopped) {
            return;
        }
        this.heavyOperationsStopped = true;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHeavyOperations() {
        if (this.heavyOperationsStopped) {
            this.heavyOperationsStopped = false;
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
        }
    }

    private void pauseForPreview() {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null || stateInfo.getState() != RoundVideoSession.State.RECORDING) {
            return;
        }
        postRecordStopped(2);
        this.session.pauseRecording();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postRecordStopped(int i) {
        if (this.stopNotificationSent && i == 2) {
            return;
        }
        this.stopNotificationSent = true;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), Integer.valueOf(i));
    }

    private long getCurrentDurationMs() {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null) {
            return 0L;
        }
        if (stateInfo.getState() == RoundVideoSession.State.RECORDING) {
            return this.session.getRecordedDurationMs();
        }
        return this.stateInfo.getRecordedDurationMs();
    }

    private void applyExternalTrim() {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null || this.videoEditedInfo == null) {
            return;
        }
        long recordedDurationMs = stateInfo.getRecordedDurationMs();
        long jMax = Math.max(0L, this.videoEditedInfo.startTime);
        long j = this.videoEditedInfo.endTime;
        if (j >= 0) {
            recordedDurationMs = Math.min(recordedDurationMs, j);
        }
        this.session.setTrimRange(jMax, recordedDurationMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeSend(RoundVideoSession.Result result) {
        SendOptions sendOptions = this.pendingSend;
        if (sendOptions == null) {
            return;
        }
        this.pendingSend = null;
        this.sent = true;
        TelegramRoundVideoUpload telegramRoundVideoUpload = this.upload;
        VideoEditedInfo videoEditedInfoCreateVideoEditedInfo = createVideoEditedInfo(result.getFile(), result.getDurationMs(), telegramRoundVideoUpload == null ? null : telegramRoundVideoUpload.getUploadInfo(result.getOutputId(), result.getFile()));
        videoEditedInfoCreateVideoEditedInfo.muted = true ^ result.hasAudio();
        MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, result.getFile().getAbsolutePath(), 0, true, 0, 0, 0L);
        photoEntry.ttl = sendOptions.ttl;
        photoEntry.effectId = sendOptions.effectId;
        this.delegate.sendMedia(photoEntry, videoEditedInfoCreateVideoEditedInfo, sendOptions.notify, sendOptions.scheduleDate, sendOptions.scheduleRepeatPeriod, false, sendOptions.stars);
        TelegramRoundVideoUpload telegramRoundVideoUpload2 = this.upload;
        if (telegramRoundVideoUpload2 != null) {
            telegramRoundVideoUpload2.release(false);
        }
        this.upload = null;
        MediaController.getInstance().requestRecordAudioFocus(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VideoEditedInfo createVideoEditedInfo(File file, long j, TelegramRoundVideoUpload.UploadInfo uploadInfo) {
        int value;
        VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
        videoEditedInfo.startTime = -1L;
        videoEditedInfo.endTime = -1L;
        videoEditedInfo.estimatedDuration = j;
        videoEditedInfo.estimatedSize = Math.max(1L, uploadInfo == null ? file.length() : uploadInfo.size);
        videoEditedInfo.roundVideo = true;
        RoundVideoSession roundVideoSession = this.session;
        if (roundVideoSession == null || roundVideoSession.getActiveFrameRate() == null) {
            value = RoundVideoSession.FrameRate.FPS_30.getValue();
        } else {
            value = this.session.getActiveFrameRate().getValue();
        }
        videoEditedInfo.framerate = value;
        int size = this.activeOutputSize;
        if (size <= 0) {
            size = RoundVideoSession.OutputResolution.P480.getSize();
        }
        videoEditedInfo.originalWidth = size;
        videoEditedInfo.resultWidth = size;
        videoEditedInfo.originalHeight = size;
        videoEditedInfo.resultHeight = size;
        videoEditedInfo.originalPath = file.getAbsolutePath();
        if (uploadInfo != null) {
            videoEditedInfo.file = uploadInfo.inputFile;
            videoEditedInfo.encryptedFile = uploadInfo.encryptedFile;
            videoEditedInfo.key = uploadInfo.key;
            videoEditedInfo.iv = uploadInfo.iv;
        }
        return videoEditedInfo;
    }

    private void switchCamera() {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null || this.capabilities == null || !stateInfo.canControlCamera() || this.cameraFlipInProgress) {
            return;
        }
        RoundVideoSession.CameraFacing requestedFacing = this.capabilities.getRequestedFacing();
        RoundVideoSession.CameraFacing cameraFacing = RoundVideoSession.CameraFacing.FRONT;
        if (requestedFacing == cameraFacing) {
            cameraFacing = RoundVideoSession.CameraFacing.BACK;
        }
        this.pendingSwitchSnapshot = captureCameraSnapshot(480);
        if (this.session.setCameraFacing(cameraFacing)) {
            this.switchCameraDrawable.setCurrentFrame(0);
            this.switchCameraDrawable.start();
        } else {
            this.pendingSwitchSnapshot = null;
        }
    }

    private void toggleFlash() {
        RoundVideoSession.StateInfo stateInfo;
        RoundVideoSession roundVideoSession = this.session;
        if (roundVideoSession == null || (stateInfo = this.stateInfo) == null || this.capabilities == null || !roundVideoSession.setFlashEnabled(!stateInfo.isFlashEnabled())) {
            return;
        }
        updateFlashIcon();
    }

    private void updateFlashIcon() {
        RoundVideoSession.StateInfo stateInfo = this.stateInfo;
        if (stateInfo != null && stateInfo.isFlashEnabled()) {
            if (this.flashOffDrawable == null) {
                int i = C2807R.raw.roundcamera_flash_off;
                int i2 = this.buttonIconSize;
                RLottieDrawable rLottieDrawable = new RLottieDrawable(i, i2, i2);
                this.flashOffDrawable = rLottieDrawable;
                rLottieDrawable.setCallback(this.flashButton);
            }
            this.flashButton.setImageDrawable(this.flashOffDrawable);
            return;
        }
        if (this.flashOnDrawable == null) {
            int i3 = C2807R.raw.roundcamera_flash_on;
            int i4 = this.buttonIconSize;
            RLottieDrawable rLottieDrawable2 = new RLottieDrawable(i3, i4, i4);
            this.flashOnDrawable = rLottieDrawable2;
            rLottieDrawable2.setCallback(this.flashButton);
        }
        this.flashButton.setImageDrawable(this.flashOnDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtons() {
        RoundVideoSession.CameraCapabilities cameraCapabilities;
        RoundVideoSession.StateInfo stateInfo = this.stateInfo;
        boolean z = false;
        boolean z2 = (stateInfo == null || !stateInfo.canControlCamera() || this.cameraFlipInProgress) ? false : true;
        this.switchCameraButton.setEnabled(z2);
        FlashViews.ImageViewInvertable imageViewInvertable = this.flashButton;
        if (z2 && (cameraCapabilities = this.capabilities) != null && cameraCapabilities.getFlashType() != RoundVideoSession.FlashType.NONE) {
            z = true;
        }
        imageViewInvertable.setEnabled(z);
        updateFlashIcon();
    }

    private void togglePreviewMuted() {
        RoundVideoSession.StateInfo stateInfo;
        if (this.session == null || (stateInfo = this.stateInfo) == null || stateInfo.getState() != RoundVideoSession.State.PREVIEWING) {
            return;
        }
        boolean z = !this.muted;
        this.muted = z;
        this.session.setPreviewMuted(z);
        VideoEditedInfo videoEditedInfo = this.videoEditedInfo;
        if (videoEditedInfo != null) {
            videoEditedInfo.muted = this.muted;
        }
        this.muteImageView.animate().cancel();
        this.muteImageView.animate().alpha(this.muted ? 1.0f : 0.0f).setDuration(180L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleZoomTouch(View view, MotionEvent motionEvent) {
        if (this.session == null || this.stateInfo == null) {
            return false;
        }
        if (motionEvent.getActionMasked() == 0) {
            this.zoomSlider.cancelZoomAnimation();
            this.pinchZoomActive = false;
            this.zoomPointerId1 = motionEvent.getPointerId(0);
            this.zoomPointerId2 = -1;
            if (this.stateInfo.getState() == RoundVideoSession.State.PREVIEWING) {
                togglePreviewMuted();
            } else if (this.stateInfo.canControlCamera() && view.getWidth() > 0 && view.getHeight() > 0) {
                this.session.setFocusPoint(motionEvent.getX() / view.getWidth(), motionEvent.getY() / view.getHeight());
            }
            return true;
        }
        if (motionEvent.getActionMasked() == 5 && motionEvent.getPointerCount() == 2 && this.stateInfo.canControlCamera()) {
            this.zoomPointerId1 = motionEvent.getPointerId(0);
            this.zoomPointerId2 = motionEvent.getPointerId(1);
            float fPointerDistance = pointerDistance(motionEvent, 0, 1);
            this.pinchStartDistance = fPointerDistance;
            boolean z = fPointerDistance > 0.0f;
            this.pinchZoomActive = z;
            if (z) {
                this.pinchStartZoomRatio = this.zoomSlider.getZoom();
                this.zoomSlider.beginPinchZoomGesture();
            }
            return true;
        }
        if (motionEvent.getActionMasked() == 2 && this.pinchZoomActive) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.zoomPointerId1);
            int iFindPointerIndex2 = motionEvent.findPointerIndex(this.zoomPointerId2);
            if (iFindPointerIndex < 0 || iFindPointerIndex2 < 0) {
                finishZoomGesture();
                return true;
            }
            float fPointerDistance2 = pointerDistance(motionEvent, iFindPointerIndex, iFindPointerIndex2) / this.pinchStartDistance;
            this.zoomSlider.setCameraXZoomRatio(this.pinchStartZoomRatio * fPointerDistance2 * fPointerDistance2);
            return true;
        }
        if (motionEvent.getActionMasked() == 6 && this.pinchZoomActive) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (pointerId == this.zoomPointerId1 || pointerId == this.zoomPointerId2) {
                finishZoomGesture();
            }
            return true;
        }
        if ((motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) && this.pinchZoomActive) {
            finishZoomGesture();
        }
        return true;
    }

    private static float pointerDistance(MotionEvent motionEvent, int i, int i2) {
        return (float) Math.hypot(motionEvent.getX(i2) - motionEvent.getX(i), motionEvent.getY(i2) - motionEvent.getY(i));
    }

    private void finishZoomGesture() {
        if (this.pinchZoomActive) {
            this.pinchZoomActive = false;
            this.zoomPointerId1 = -1;
            this.zoomPointerId2 = -1;
            this.zoomSlider.finishPinchZoomGesture();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenFlashEnabled(boolean z) {
        Activity parentActivity = this.delegate.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        WindowManager.LayoutParams attributes = parentActivity.getWindow().getAttributes();
        float f = this.previousWindowBrightness;
        if (z) {
            if (Float.isNaN(f)) {
                this.previousWindowBrightness = attributes.screenBrightness;
            }
            attributes.screenBrightness = 1.0f;
            this.flashViews.flashIn(null);
        } else {
            if (!Float.isNaN(f)) {
                attributes.screenBrightness = this.previousWindowBrightness;
                this.previousWindowBrightness = Float.NaN;
            }
            this.flashViews.flashOut();
        }
        parentActivity.getWindow().setAttributes(attributes);
    }

    private void updateTranslationY() {
        this.cameraContainer.setTranslationY(this.animationTranslationY + this.panTranslationY);
        this.zoomSlider.setBaseTranslationY(this.animationTranslationY + this.panTranslationY);
    }

    private void showInitialPlaceholder() {
        if (this.drawInitialPlaceholder) {
            return;
        }
        if (this.lastBitmap == null) {
            try {
                this.lastBitmap = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), "icthumb.jpg").getAbsolutePath());
            } catch (Throwable unused) {
            }
        }
        Bitmap bitmap = this.lastBitmap;
        BackupImageView backupImageView = this.textureOverlayView;
        if (bitmap != null) {
            backupImageView.setImageBitmap(bitmap);
        } else {
            backupImageView.setImageResource(C2807R.drawable.icplaceholder);
        }
        this.drawInitialPlaceholder = true;
        this.textureOverlayView.animate().cancel();
        this.textureOverlayView.setAlpha(1.0f);
        this.textureOverlayView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideInitialPlaceholder() {
        if (this.drawInitialPlaceholder) {
            this.drawInitialPlaceholder = false;
            this.textureOverlayView.invalidate();
            this.textureOverlayView.animate().cancel();
            this.textureOverlayView.animate().alpha(0.0f).setDuration(120L).setInterpolator(new DecelerateInterpolator()).start();
        }
    }

    private void showCameraSwitchPlaceholder() {
        Bitmap bitmapCaptureCameraSnapshot = this.pendingSwitchSnapshot;
        this.pendingSwitchSnapshot = null;
        if (bitmapCaptureCameraSnapshot == null) {
            bitmapCaptureCameraSnapshot = captureCameraSnapshot(480);
        }
        if (bitmapCaptureCameraSnapshot == null) {
            return;
        }
        storeLastCameraBitmap(Bitmap.createScaledBitmap(bitmapCaptureCameraSnapshot, 180, 180, true), false);
        showSwitchPlaceholderBitmap(bitmapCaptureCameraSnapshot);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showIncomingCameraSide() {
        this.cameraFlipEdgePassed = true;
        if (this.cameraFlipFirstFrameReady) {
            hideCameraSwitchPlaceholder(false);
            return;
        }
        RoundVideoSession.CameraFacing cameraFacing = this.cameraFlipTargetFacing;
        Bitmap cameraThumb = cameraFacing == null ? null : RoundVideoUiHelper.getCameraThumb(cameraFacing);
        if (cameraThumb != null) {
            showSwitchPlaceholderBitmap(cameraThumb);
        } else {
            this.textureOverlayView.setImageResource(C2807R.drawable.icplaceholder);
            showSwitchPlaceholderBitmap(null);
        }
    }

    private void showSwitchPlaceholderBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            this.textureOverlayView.setImageBitmap(bitmap);
        }
        this.switchPlaceholderVisible = true;
        this.textureOverlayView.animate().cancel();
        this.textureOverlayView.setAlpha(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCameraFlipAnimation(RoundVideoSession.CameraFacing cameraFacing) {
        this.cameraFlipGeneration++;
        ValueAnimator valueAnimator = this.cameraFlipAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.cameraFlipAnimator.cancel();
            this.cameraFlipAnimator = null;
        }
        this.cameraFlipInProgress = true;
        this.cameraFlipSessionReady = false;
        this.cameraFlipFirstFrameReady = false;
        this.cameraFlipAnimationCompleted = false;
        this.cameraFlipEdgePassed = false;
        this.cameraFlipTargetFacing = cameraFacing;
        this.cameraFlipStartedRealtimeMs = SystemClock.elapsedRealtime();
        showCameraSwitchPlaceholder();
        this.previewContainer.animate().cancel();
        this.previewContainer.setRotationY(0.0f);
        this.previewContainer.setCameraDistance(r0.getMeasuredHeight() * 8.0f);
        final int i = this.cameraFlipGeneration;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.cameraFlipAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(580L);
        this.cameraFlipAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.cameraFlipAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView2$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$startCameraFlipAnimation$7(i, valueAnimator2);
            }
        });
        this.cameraFlipAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView2.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (i != InstantCameraView2.this.cameraFlipGeneration) {
                    return;
                }
                if (!InstantCameraView2.this.cameraFlipEdgePassed) {
                    InstantCameraView2.this.showIncomingCameraSide();
                }
                InstantCameraView2.this.previewContainer.setRotationY(0.0f);
                InstantCameraView2.this.cameraFlipAnimationCompleted = true;
                InstantCameraView2.this.cameraFlipAnimator = null;
                FileLog.m1037d("RoundVideo camera flip visual animation completed: elapsedMs=" + InstantCameraView2.this.getCameraFlipElapsedMs());
                InstantCameraView2.this.maybeFinishCameraFlip();
            }
        });
        this.cameraFlipAnimator.start();
        FileLog.m1037d("RoundVideo camera flip started: facing=" + cameraFacing + ", minimumDurationMs=580");
        updateButtons();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCameraFlipAnimation$7(int i, ValueAnimator valueAnimator) {
        if (i != this.cameraFlipGeneration) {
            return;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f = fFloatValue < 0.5f ? fFloatValue : fFloatValue - 1.0f;
        if (fFloatValue >= 0.5f && !this.cameraFlipEdgePassed) {
            showIncomingCameraSide();
        }
        this.previewContainer.setRotationY(f * 180.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishCameraFlip() {
        if (this.cameraFlipInProgress && this.cameraFlipAnimationCompleted && this.cameraFlipSessionReady && this.cameraFlipFirstFrameReady) {
            this.cameraFlipInProgress = false;
            FileLog.m1037d("RoundVideo camera flip completed: elapsedMs=" + getCameraFlipElapsedMs());
            updateButtons();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCameraFlipAnimation() {
        if (this.cameraFlipInProgress || this.cameraFlipAnimator != null) {
            this.cameraFlipGeneration++;
            ValueAnimator valueAnimator = this.cameraFlipAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.cameraFlipAnimator.cancel();
                this.cameraFlipAnimator = null;
            }
            this.previewContainer.animate().cancel();
            this.previewContainer.animate().setListener(null);
            this.previewContainer.setRotationY(0.0f);
            this.cameraFlipInProgress = false;
            this.cameraFlipSessionReady = false;
            this.cameraFlipFirstFrameReady = false;
            this.cameraFlipAnimationCompleted = false;
            this.cameraFlipEdgePassed = false;
            this.cameraFlipTargetFacing = null;
            this.pendingSwitchSnapshot = null;
            hideCameraSwitchPlaceholder(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getCameraFlipElapsedMs() {
        if (this.cameraFlipStartedRealtimeMs == 0) {
            return 0L;
        }
        return Math.max(0L, SystemClock.elapsedRealtime() - this.cameraFlipStartedRealtimeMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideCameraSwitchPlaceholder(boolean z) {
        if (this.switchPlaceholderVisible) {
            this.switchPlaceholderVisible = false;
            this.textureOverlayView.animate().cancel();
            BackupImageView backupImageView = this.textureOverlayView;
            if (z) {
                backupImageView.animate().alpha(0.0f).setDuration(120L).setInterpolator(new DecelerateInterpolator()).start();
            } else {
                backupImageView.setAlpha(0.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveLastCameraBitmap(boolean z) {
        Bitmap bitmapCaptureCameraSnapshot = captureCameraSnapshot(180);
        if (bitmapCaptureCameraSnapshot != null) {
            storeLastCameraBitmap(bitmapCaptureCameraSnapshot, z);
        }
    }

    private void storeLastCameraBitmap(Bitmap bitmap, boolean z) {
        Utilities.stackBlurBitmap(bitmap, 15);
        this.lastBitmap = bitmap;
        RoundVideoSession.CameraCapabilities cameraCapabilities = this.capabilities;
        if (cameraCapabilities != null && cameraCapabilities.getActiveFacing() != null) {
            RoundVideoUiHelper.storeCameraThumb(this.capabilities.getActiveFacing(), bitmap);
        }
        if (z) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "icthumb.jpg"));
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                    fileOutputStream.close();
                } finally {
                }
            } catch (Throwable unused) {
            }
        }
    }

    private Bitmap captureCameraSnapshot(int i) {
        Bitmap bitmap;
        if (!this.textureView.isAvailable() || (bitmap = this.textureView.getBitmap(i, i)) == null) {
            return null;
        }
        if (bitmap.getWidth() == 0 || bitmap.getHeight() == 0 || bitmap.getPixel(bitmap.getWidth() / 2, bitmap.getHeight() / 2) == 0) {
            bitmap.recycle();
            return null;
        }
        return applyPreviewBitmapTransform(bitmap);
    }

    private Bitmap applyPreviewBitmapTransform(Bitmap bitmap) {
        if (this.textureView.getWidth() > 0 && this.textureView.getHeight() > 0) {
            this.textureView.getTransform(this.previewBitmapMatrix);
            if (!this.previewBitmapMatrix.isIdentity()) {
                this.previewBitmapMatrix.getValues(this.previewBitmapMatrixValues);
                float width = bitmap.getWidth() / this.textureView.getWidth();
                float height = bitmap.getHeight() / this.textureView.getHeight();
                float[] fArr = this.previewBitmapMatrixValues;
                fArr[1] = fArr[1] * (width / height);
                fArr[2] = fArr[2] * width;
                fArr[3] = fArr[3] * (height / width);
                fArr[5] = fArr[5] * height;
                fArr[6] = fArr[6] / width;
                fArr[7] = fArr[7] / height;
                this.previewBitmapMatrix.setValues(fArr);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, this.previewBitmapMatrix, this.previewBitmapPaint);
                bitmap.recycle();
                return bitmapCreateBitmap;
            }
        }
        return bitmap;
    }

    private TextureView createTextureView(Context context) {
        TextureView textureView = new TextureView(context) { // from class: org.telegram.ui.Components.InstantCameraView2.6
            @Override // android.view.View
            public void invalidate() {
                InstantCameraView2.this.onPreviewTextureInvalidated();
                super.invalidate();
            }
        };
        textureView.setOpaque(true);
        textureView.setClickable(true);
        textureView.setCameraDistance(AndroidUtilities.dp(8000.0f));
        textureView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.InstantCameraView2.7
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setOval(0, 0, view.getWidth(), view.getHeight());
            }
        });
        textureView.setClipToOutline(true);
        return textureView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewTextureInvalidated() {
        if (this.handlingPreviewTextureInvalidate || !isRecordingState()) {
            return;
        }
        this.handlingPreviewTextureInvalidate = true;
        try {
            this.lastPreviewUiFrameRealtimeNs = SystemClock.elapsedRealtimeNanos();
            updateRecordingUiFrame();
        } finally {
            this.handlingPreviewTextureInvalidate = false;
        }
    }

    public final class CameraContainer extends InstantCameraViewBase.InstantViewCameraContainer {
        private float imageProgress;
        private ImageReceiver imageReceiver;
        private boolean messageTransition;

        public CameraContainer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // org.telegram.ui.Components.InstantCameraViewBase.InstantViewCameraContainer
        public void setImageReceiver(ImageReceiver imageReceiver) {
            if (this.imageReceiver == null) {
                this.imageProgress = 0.0f;
            }
            this.imageReceiver = imageReceiver;
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.imageReceiver == null) {
                return;
            }
            float f = this.imageProgress;
            if (f < 1.0f) {
                this.imageProgress = Math.min(1.0f, f + 0.064f);
                invalidate();
            }
            canvas.save();
            canvas.translate(InstantCameraView2.this.progressView.getLeft() + InstantCameraView2.this.previewContainer.getLeft() + InstantCameraView2.this.textureView.getLeft(), InstantCameraView2.this.progressView.getTop() + InstantCameraView2.this.previewContainer.getTop() + InstantCameraView2.this.textureView.getTop());
            if (this.imageReceiver.getImageWidth() != InstantCameraView2.this.textureView.getWidth()) {
                float width = InstantCameraView2.this.textureView.getWidth() / this.imageReceiver.getImageWidth();
                canvas.scale(width, width);
            }
            canvas.translate(-this.imageReceiver.getImageX(), -this.imageReceiver.getImageY());
            float alpha = this.imageReceiver.getAlpha();
            this.imageReceiver.setAlpha(this.imageProgress);
            this.imageReceiver.draw(canvas);
            this.imageReceiver.setAlpha(alpha);
            canvas.restore();
        }
    }

    public static final class SendOptions {
        final long effectId;
        final boolean notify;
        final int scheduleDate;
        final int scheduleRepeatPeriod;
        final long stars;
        final int ttl;

        public SendOptions(boolean z, int i, int i2, int i3, long j, long j2) {
            this.notify = z;
            this.scheduleDate = i;
            this.scheduleRepeatPeriod = i2;
            this.ttl = i3;
            this.effectId = j;
            this.stars = j2;
        }
    }
}
