package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.net.Uri;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.camera.core.Preview;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.CameraType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.VideoMessagesCamera;
import com.exteragram.messenger.camera.CameraDebugUtils;
import com.exteragram.messenger.camera.CameraXSession;
import com.exteragram.messenger.camera.InstantCameraZoomSlider;
import com.exteragram.messenger.camera.RoundVideoEncoder;
import com.exteragram.messenger.debug.DebugConfig;
import com.exteragram.messenger.debug.DebugOverlayView;
import com.exteragram.messenger.utils.system.SystemUtils;
import j$.io.DesugarFile;
import j$.io.FileRetargetInterface;
import j$.nio.file.Path;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.AutoDeleteMediaTask;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.camera.Camera2Session;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraInfo;
import org.telegram.messenger.camera.CameraSession;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.InstantCameraViewBase;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.voip.CellFlickerDrawable;
import org.telegram.ui.Stories.recorder.DualCameraView;
import org.telegram.ui.Stories.recorder.FlashViews;
import org.telegram.ui.Stories.recorder.SliderView;
import org.telegram.ui.Stories.recorder.StoryEntry;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class InstantCameraView extends InstantCameraViewBase implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] ALLOW_BIG_CAMERA_WHITELIST = {285904780, -1394191079};
    private float animationTranslationY;
    private AnimatorSet animatorSet;
    private org.telegram.messenger.camera.Size aspectRatio;
    private volatile boolean bothCameras;
    private final LinearLayout buttonsLayout;
    private final int buttonsSizePx;
    private CameraXSession.CameraLifecycle camLifecycle;
    private Camera2Session camera2SessionCurrent;
    private Camera2Session[] camera2Sessions;
    private InstantViewCameraContainer cameraContainer;
    private File cameraFile;
    private volatile boolean cameraReady;
    private CameraSession cameraSession;
    private final int[] cameraTexture;
    private float cameraTextureAlpha;
    private volatile boolean cameraTextureAvailable;
    private CameraGLThread cameraThread;
    private volatile CameraXSession cameraXSession;
    private float cameraZoom;
    private boolean cancelled;
    private int currentAccount;
    private Delegate delegate;
    private final RoundVideoEncoder.Callback encoderCallback;
    private File encoderFile;
    private boolean encoderFinishRequested;
    private int encoderFrameRate;
    private int encoderSend;
    private SendOptions encoderSendOptions;
    private TLRPC.InputEncryptedFile encryptedFile;
    private TLRPC.InputFile file;
    private ValueAnimator finishZoomTransition;
    private Bitmap firstFrameThumb;
    private final FlashViews.ImageViewInvertable flashButton;
    private RLottieDrawable flashOffDrawable;
    private RLottieDrawable flashOnDrawable;
    private final FlashViews flashViews;
    private boolean flashing;
    private boolean flipAnimationInProgress;
    private boolean frontFlashing;
    private DispatchQueue generateKeyframeThumbsQueue;
    private float initialCameraZoom;
    private int internalPaddingBottom;
    private boolean isFrontface;
    boolean isInPinchToZoomTouchMode;
    private boolean isMessageTransition;
    private boolean isSecretChat;
    private ItemOptions itemOptions;
    private byte[] iv;
    private byte[] key;
    private final ArrayList<Bitmap> keyframeThumbs;
    private Bitmap lastBitmap;
    private final float[] mMVPMatrix;
    private final float[] mSTMatrix;
    boolean maybePinchToZoomTouchMode;
    private final float[] moldSTMatrix;
    private AnimatorSet muteAnimation;
    private ImageView muteImageView;
    private boolean needDrawFlickerStub;
    private final int[] oldCameraTexture;
    private org.telegram.messenger.camera.Size oldTexturePreviewSize;
    private FloatBuffer oldTextureTextureBuffer;
    public boolean opened;
    private Paint paint;
    private float panTranslationY;
    private View parentView;
    private org.telegram.messenger.camera.Size pictureSize;
    float pinchStartDistance;
    private int pointerId1;
    private int pointerId2;
    private final int[] position;
    private File previewFile;
    private org.telegram.messenger.camera.Size[] previewSize;
    private float progress;
    private Timer progressTimer;
    private long recordPlusTime;
    private long recordStartTime;
    private long recordedTime;
    private boolean recording;
    private int recordingGuid;
    private RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ScaleGestureDetector scaleGestureDetector;
    private float scaleX;
    private float scaleY;
    private CameraInfo selectedCamera;
    private boolean sentMedia;
    private boolean setVisibilityFromPause;
    private long size;
    private volatile int surfaceIndex;
    private final FlashViews.ImageViewInvertable switchCameraButton;
    private RLottieDrawable switchCameraDrawable;
    private FloatBuffer textureBuffer;
    private final float[] textureCoordsData;
    private BackupImageView textureOverlayView;
    private TextureView textureView;
    private int textureViewSize;
    private boolean updateTextureViewSize;
    private final boolean useCamera2;
    private FloatBuffer vertexBuffer;
    private boolean videoConvertFirstWrite;
    private VideoEditedInfo videoEditedInfo;
    private RoundVideoEncoder videoEncoder;
    private VideoPlayer videoPlayer;
    private Boolean wasFlashing;
    private ValueAnimator zoomAnimator;
    private InstantCameraZoomSlider zoomSlider;
    private boolean zoomWas;

    /* JADX INFO: loaded from: classes3.dex */
    public interface Delegate {
        int getClassGuid();

        long getDialogId();

        View getFragmentView();

        Activity getParentActivity();

        default boolean isInScheduleMode() {
            return false;
        }

        default boolean isSecretChat() {
            return false;
        }

        void sendMedia(MediaController.PhotoEntry photoEntry, VideoEditedInfo videoEditedInfo, boolean z, int i, int i2, boolean z2, long j);
    }

    private boolean isCameraSessionInitiated() {
        if (this.useCamera2) {
            Camera2Session camera2Session = this.camera2SessionCurrent;
            return camera2Session != null && camera2Session.isInitiated();
        }
        CameraSession cameraSession = this.cameraSession;
        return cameraSession != null && cameraSession.isInitied();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public InstantCameraView(Context context, Delegate delegate, final Theme.ResourcesProvider resourcesProvider, boolean z) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        int i = 1;
        this.isFrontface = true;
        this.position = new int[2];
        this.cameraTexture = new int[]{Integer.MIN_VALUE, Integer.MIN_VALUE};
        this.oldCameraTexture = new int[1];
        this.cameraTextureAlpha = 1.0f;
        this.previewSize = new org.telegram.messenger.camera.Size[2];
        this.aspectRatio = SharedConfig.roundCamera16to9 ? new org.telegram.messenger.camera.Size(16, 9) : new org.telegram.messenger.camera.Size(4, 3);
        this.useCamera2 = ExteraConfig.getCameraType() == CameraType.CAMERA_2;
        this.camera2Sessions = new Camera2Session[2];
        this.mMVPMatrix = new float[16];
        this.mSTMatrix = new float[16];
        this.moldSTMatrix = new float[16];
        this.textureCoordsData = new float[8];
        this.encoderFrameRate = 30;
        this.keyframeThumbs = new ArrayList<>();
        this.encoderCallback = new AnonymousClass12();
        this.initialCameraZoom = 0.0f;
        this.buttonsSizePx = AndroidUtilities.dp(z ? 24.0f : 28.0f);
        this.resourcesProvider = resourcesProvider;
        this.parentView = delegate.getFragmentView();
        setWillNotDraw(false);
        this.delegate = delegate;
        this.recordingGuid = delegate.getClassGuid();
        this.isSecretChat = delegate.isSecretChat();
        Paint paint = new Paint(i) { // from class: org.telegram.ui.Components.InstantCameraView.1
            @Override // android.graphics.Paint
            public void setAlpha(int i2) {
                super.setAlpha(i2);
                InstantCameraView.this.invalidate();
            }
        };
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        this.paint.setColor(-1);
        this.rect = new RectF();
        FlashViews flashViews = new FlashViews(getContext(), null, this, null);
        this.flashViews = flashViews;
        flashViews.setWarmth(ExteraConfig.getFlashWarmth());
        flashViews.setIntensity(ExteraConfig.getFlashIntensity());
        addView(flashViews.backgroundView, LayoutHelper.createFrame(-1, -1, 119));
        this.scaleGestureDetector = new ScaleGestureDetector(getContext(), new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: org.telegram.ui.Components.InstantCameraView.2
            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                InstantCameraView.this.cancelZoomAnimations();
                InstantCameraView.this.zoomSlider.beginPinchZoomGesture();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                if (InstantCameraView.this.cameraXSession == null) {
                    return true;
                }
                InstantCameraView.this.zoomSlider.scaleCameraXZoom((float) Math.pow(scaleGestureDetector.getScaleFactor(), 2.0d));
                InstantCameraView instantCameraView = InstantCameraView.this;
                instantCameraView.cameraZoom = instantCameraView.cameraXSession.getLinearZoom();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                InstantCameraView.this.finishZoom();
                super.onScaleEnd(scaleGestureDetector);
            }
        });
        InstantViewCameraContainer instantViewCameraContainer = new InstantViewCameraContainer(context) { // from class: org.telegram.ui.Components.InstantCameraView.3
            @Override // android.view.View
            public void setRotationY(float f) {
                super.setRotationY(f);
                InstantCameraView.this.invalidate();
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                InstantCameraView.this.invalidate();
            }
        };
        this.cameraContainer = instantViewCameraContainer;
        instantViewCameraContainer.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.InstantCameraView.4
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setOval(0, 0, InstantCameraView.this.textureViewSize, InstantCameraView.this.textureViewSize);
            }
        });
        this.cameraContainer.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda12
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$new$0(view, motionEvent);
            }
        });
        this.cameraContainer.setClipToOutline(true);
        this.cameraContainer.setWillNotDraw(false);
        View view = this.cameraContainer;
        int i2 = AndroidUtilities.roundPlayingMessageSize;
        addView(view, new FrameLayout.LayoutParams(i2, i2, 17));
        addView(flashViews.foregroundView, LayoutHelper.createFrame(-1, -1, 119));
        LinearLayout linearLayout = new LinearLayout(context);
        this.buttonsLayout = linearLayout;
        linearLayout.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createFrame(-2, 56.0f, 83, 1.0f, 0.0f, 0.0f, 0.0f));
        FlashViews.ImageViewInvertable imageViewInvertable = new FlashViews.ImageViewInvertable(context);
        this.switchCameraButton = imageViewInvertable;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageViewInvertable.setScaleType(scaleType);
        imageViewInvertable.setContentDescription(LocaleController.getString(C2665R.string.AccDescrSwitchCamera));
        linearLayout.addView(imageViewInvertable, LayoutHelper.createLinear(44, 44));
        imageViewInvertable.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(view2);
            }
        });
        FlashViews.ImageViewInvertable imageViewInvertable2 = new FlashViews.ImageViewInvertable(context);
        this.flashButton = imageViewInvertable2;
        imageViewInvertable2.setScaleType(scaleType);
        linearLayout.addView(imageViewInvertable2, LayoutHelper.createLinear(44, 44));
        imageViewInvertable2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$3(view2);
            }
        });
        imageViewInvertable2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$new$7(resourcesProvider, view2);
            }
        });
        updateFlash();
        if (!z) {
            flashViews.add(imageViewInvertable);
            flashViews.add(imageViewInvertable2);
        } else if (!resourcesProvider.isDark()) {
            imageViewInvertable.setInvert(0.6f);
            imageViewInvertable2.setInvert(0.6f);
        }
        ImageView imageView = new ImageView(context);
        this.muteImageView = imageView;
        imageView.setScaleType(scaleType);
        this.muteImageView.setImageResource(C2665R.drawable.video_mute);
        this.muteImageView.setAlpha(0.0f);
        addView(this.muteImageView, LayoutHelper.createFrame(48, 48, 17));
        final Paint paint2 = new Paint(1);
        paint2.setColor(ColorUtils.setAlphaComponent(-16777216, 40));
        BackupImageView backupImageView = new BackupImageView(getContext()) { // from class: org.telegram.ui.Components.InstantCameraView.7
            CellFlickerDrawable flickerDrawable = new CellFlickerDrawable();

            @Override // org.telegram.ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (InstantCameraView.this.needDrawFlickerStub) {
                    this.flickerDrawable.setParentWidth(InstantCameraView.this.textureViewSize);
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, InstantCameraView.this.textureViewSize, InstantCameraView.this.textureViewSize);
                    float fWidth = rectF.width() / 2.0f;
                    canvas.drawRoundRect(rectF, fWidth, fWidth, paint2);
                    rectF.inset(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f));
                    this.flickerDrawable.draw(canvas, rectF, fWidth, null);
                    invalidate();
                }
            }
        };
        this.textureOverlayView = backupImageView;
        int i3 = AndroidUtilities.roundPlayingMessageSize;
        addView(backupImageView, new FrameLayout.LayoutParams(i3, i3, 17));
        InstantCameraZoomSlider instantCameraZoomSlider = new InstantCameraZoomSlider(context, resourcesProvider);
        this.zoomSlider = instantCameraZoomSlider;
        instantCameraZoomSlider.setOnCameraZoomChangeListener(new InstantCameraZoomSlider.OnCameraZoomChangeListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda16
            @Override // com.exteragram.messenger.camera.InstantCameraZoomSlider.OnCameraZoomChangeListener
            public final void onCameraZoomChanged(float f, boolean z2) {
                this.f$0.lambda$new$8(f, z2);
            }
        });
        this.zoomSlider.setOpenAlpha(0.0f);
        addView(this.zoomSlider, LayoutHelper.createFrame(-2, -2, 17));
        if (DebugConfig.getDebugCameraMetrics()) {
            DebugOverlayView debugOverlayView = new DebugOverlayView(context);
            debugOverlayView.setDataSource(new DebugOverlayView.DataSource() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda17
                @Override // com.exteragram.messenger.debug.DebugOverlayView.DataSource
                public final void build(DebugOverlayView.ContentBuilder contentBuilder) {
                    this.f$0.populateCameraDebugOverlay(contentBuilder);
                }
            });
            addView(debugOverlayView, DebugOverlayView.createLayoutParams());
        }
        this.setVisibilityFromPause = false;
        setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || this.cameraXSession == null) {
            return false;
        }
        this.cameraXSession.focusToPoint(motionEvent.getX(), motionEvent.getY(), view.getWidth(), view.getHeight());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        if (isCameraReady()) {
            CameraType cameraType = ExteraConfig.getCameraType();
            CameraType cameraType2 = CameraType.CAMERA_X;
            final boolean z = cameraType == cameraType2 && this.cameraXSession != null && this.cameraXSession.isDualMode();
            if (ExteraConfig.getCameraType() != cameraType2) {
                if (!this.bothCameras) {
                    switchCamera();
                }
            } else if (!z) {
                switchCameraX();
            }
            RLottieDrawable rLottieDrawable = this.switchCameraDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setCurrentFrame(0);
                this.switchCameraDrawable.start();
            }
            if (ExteraConfig.getCameraType() != cameraType2 || z) {
                this.flipAnimationInProgress = true;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.setDuration(450L);
                valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                final boolean[] zArr = new boolean[1];
                final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$1(z);
                    }
                };
                this.cameraContainer.setCameraDistance(r6.getMeasuredHeight() * 8.0f);
                this.textureOverlayView.setCameraDistance(r6.getMeasuredHeight() * 8.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (fFloatValue > 0.5f) {
                            boolean[] zArr2 = zArr;
                            if (!zArr2[0]) {
                                zArr2[0] = true;
                                runnable.run();
                            }
                        }
                        if (fFloatValue >= 0.5f) {
                            fFloatValue -= 1.0f;
                        }
                        float f = fFloatValue * 180.0f;
                        InstantCameraView.this.cameraContainer.setRotationY(f);
                        InstantCameraView.this.textureOverlayView.setRotationY(f);
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        boolean[] zArr2 = zArr;
                        if (!zArr2[0]) {
                            zArr2[0] = true;
                            runnable.run();
                        }
                        InstantCameraView.this.cameraContainer.setRotationY(0.0f);
                        InstantCameraView.this.textureOverlayView.setRotationY(0.0f);
                        InstantCameraView.this.flipAnimationInProgress = false;
                        InstantCameraView.this.invalidate();
                    }
                });
                valueAnimatorOfFloat.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(boolean z) {
        if (this.bothCameras && ExteraConfig.getCameraType() != CameraType.CAMERA_X) {
            switchCamera();
        } else if (z) {
            switchCameraX();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.flashing = !this.flashing;
        updateFlash();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$7(Theme.ResourcesProvider resourcesProvider, View view) {
        if (!this.isFrontface || !isCameraReady()) {
            return false;
        }
        final boolean z = this.flashing;
        if (!z) {
            this.flashing = true;
            updateFlash();
        }
        this.itemOptions = ItemOptions.makeOptions(this, resourcesProvider, this.flashButton).addView(new SliderView(getContext(), 1).setValue(ExteraConfig.getFlashWarmth()).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$4((Float) obj);
            }
        })).addSpaceGap().addView(new SliderView(getContext(), 2).setMinMax(0.5f, 1.0f).setValue(ExteraConfig.getFlashIntensity()).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$5((Float) obj);
            }
        })).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6(z);
            }
        }).setDimAlpha(50).setGravity(5).translate(AndroidUtilities.dp(46.0f), AndroidUtilities.dp(4.0f)).setBackgroundColor(-1155851493).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(Float f) {
        ExteraConfig.setFlashWarmth(f.floatValue());
        this.flashViews.setWarmth(f.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Float f) {
        ExteraConfig.setFlashIntensity(f.floatValue());
        this.flashViews.setIntensity(f.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(boolean z) {
        if (z) {
            return;
        }
        this.flashing = false;
        updateFlash();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(float f, boolean z) {
        if (z) {
            cancelZoomAnimations();
        }
        this.cameraZoom = f;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFlash() {
        boolean z = this.flashing && this.recording && this.isFrontface;
        if (this.frontFlashing != z) {
            this.frontFlashing = z;
            FlashViews flashViews = this.flashViews;
            if (z) {
                flashViews.flashIn(null);
            } else {
                flashViews.flashOut();
            }
        }
        boolean z2 = this.flashing && this.recording;
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_X) {
            if (this.useCamera2) {
                Camera2Session camera2Session = this.camera2SessionCurrent;
                if (camera2Session != null) {
                    camera2Session.setFlash(z2 && !this.isFrontface);
                }
            } else {
                CameraSession cameraSession = this.cameraSession;
                if (cameraSession != null) {
                    cameraSession.setTorchEnabled(z2 && !this.isFrontface);
                }
            }
        } else if (isCameraReady() && this.cameraXSession != null) {
            this.cameraXSession.setTorchEnabled(z2);
        }
        if (this.flashButton != null) {
            Boolean bool = this.wasFlashing;
            if (bool == null || bool.booleanValue() != this.flashing) {
                this.flashButton.setContentDescription(LocaleController.getString(this.flashing ? C2665R.string.AccDescrCameraFlashOff : C2665R.string.AccDescrCameraFlashOn));
                if (!this.flashing) {
                    if (this.flashOnDrawable == null) {
                        int i = C2665R.raw.roundcamera_flash_on;
                        int i2 = this.buttonsSizePx;
                        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, i2, i2);
                        this.flashOnDrawable = rLottieDrawable;
                        rLottieDrawable.setCallback(this.flashButton);
                    }
                    this.flashButton.setImageDrawable(this.flashOnDrawable);
                    Boolean bool2 = this.wasFlashing;
                    RLottieDrawable rLottieDrawable2 = this.flashOnDrawable;
                    if (bool2 == null) {
                        rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getFramesCount() - 1);
                    } else {
                        rLottieDrawable2.setCurrentFrame(0);
                        this.flashOnDrawable.start();
                    }
                } else {
                    if (this.flashOffDrawable == null) {
                        int i3 = C2665R.raw.roundcamera_flash_off;
                        int i4 = this.buttonsSizePx;
                        RLottieDrawable rLottieDrawable3 = new RLottieDrawable(i3, i4, i4);
                        this.flashOffDrawable = rLottieDrawable3;
                        rLottieDrawable3.setCallback(this.flashButton);
                    }
                    this.flashButton.setImageDrawable(this.flashOffDrawable);
                    Boolean bool3 = this.wasFlashing;
                    RLottieDrawable rLottieDrawable4 = this.flashOffDrawable;
                    if (bool3 == null) {
                        rLottieDrawable4.setCurrentFrame(rLottieDrawable4.getFramesCount() - 1);
                    } else {
                        rLottieDrawable4.setCurrentFrame(0);
                        this.flashOffDrawable.start();
                    }
                }
                this.wasFlashing = Boolean.valueOf(this.flashing);
            }
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void setInternalPadding(int i) {
        this.internalPaddingBottom = i;
        setPadding(0, 0, 0, i);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.updateTextureViewSize) {
            if (View.MeasureSpec.getSize(i2) - getPaddingBottom() > View.MeasureSpec.getSize(i) * 1.3f) {
                i3 = AndroidUtilities.roundPlayingMessageSize;
            } else {
                i3 = AndroidUtilities.roundMessageSize;
            }
            if (i3 != this.textureViewSize) {
                this.textureViewSize = i3;
                ViewGroup.LayoutParams layoutParams = this.textureOverlayView.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = this.textureOverlayView.getLayoutParams();
                int i4 = this.textureViewSize;
                layoutParams2.height = i4;
                layoutParams.width = i4;
                ViewGroup.LayoutParams layoutParams3 = this.cameraContainer.getLayoutParams();
                ViewGroup.LayoutParams layoutParams4 = this.cameraContainer.getLayoutParams();
                int i5 = this.textureViewSize;
                layoutParams4.height = i5;
                layoutParams3.width = i5;
                ((FrameLayout.LayoutParams) this.muteImageView.getLayoutParams()).topMargin = (this.textureViewSize / 2) - AndroidUtilities.dp(24.0f);
                this.zoomSlider.setTextureViewSize(this.textureViewSize);
                this.textureOverlayView.setRoundRadius(this.textureViewSize / 2);
                this.cameraContainer.invalidateOutline();
            }
            this.updateTextureViewSize = false;
        }
        super.onMeasure(i, i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30);
        this.flashViews.backgroundView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.flashViews.foregroundView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    private boolean checkPointerIds(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() < 2) {
            return false;
        }
        if (this.pointerId1 == motionEvent.getPointerId(0) && this.pointerId2 == motionEvent.getPointerId(1)) {
            return true;
        }
        return this.pointerId1 == motionEvent.getPointerId(1) && this.pointerId2 == motionEvent.getPointerId(0);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (getVisibility() != 0) {
            this.animationTranslationY = getMeasuredHeight() / 2.0f;
            updateTranslationY();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileUploaded);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
        FlashViews flashViews = this.flashViews;
        if (flashViews != null) {
            flashViews.flashOut();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileUploaded) {
            String str = (String) objArr[0];
            File file = this.cameraFile;
            if (file == null || !file.getAbsolutePath().equals(str)) {
                return;
            }
            this.file = (TLRPC.InputFile) objArr[1];
            this.encryptedFile = (TLRPC.InputEncryptedFile) objArr[2];
            this.size = ((Long) objArr[5]).longValue();
            if (this.encryptedFile != null) {
                this.key = (byte[]) objArr[3];
                this.iv = (byte[]) objArr[4];
            }
        }
    }

    public void destroy(boolean z) {
        cancelZoomAnimations();
        this.zoomSlider.unbindSession();
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_X) {
            if (!this.useCamera2) {
                CameraSession cameraSession = this.cameraSession;
                if (cameraSession != null) {
                    cameraSession.destroy();
                    CameraController.getInstance().close(this.cameraSession, !z ? new CountDownLatch(1) : null, null);
                    this.cameraSession = null;
                    return;
                }
                return;
            }
            int i = 0;
            while (true) {
                Camera2Session[] camera2SessionArr = this.camera2Sessions;
                if (i < camera2SessionArr.length) {
                    Camera2Session camera2Session = camera2SessionArr[i];
                    if (camera2Session != null) {
                        camera2Session.destroy(z);
                        this.camera2Sessions[i] = null;
                    }
                    i++;
                } else {
                    this.camera2SessionCurrent = null;
                    return;
                }
            }
        } else {
            releaseCameraXSession();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCameraXSession() {
        if (this.cameraXSession == null) {
            return;
        }
        this.zoomSlider.unbindSession();
        try {
            this.cameraXSession.closeCamera();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        this.cameraXSession = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float x = this.cameraContainer.getX();
        float y = this.cameraContainer.getY();
        this.rect.set(x - AndroidUtilities.dp(8.0f), y - AndroidUtilities.dp(8.0f), x + this.cameraContainer.getMeasuredWidth() + AndroidUtilities.dp(8.0f), y + this.cameraContainer.getMeasuredHeight() + AndroidUtilities.dp(8.0f));
        if (this.recording) {
            long jCurrentTimeMillis = (System.currentTimeMillis() - this.recordStartTime) + this.recordPlusTime;
            this.recordedTime = jCurrentTimeMillis;
            this.progress = Math.min(1.0f, jCurrentTimeMillis / SystemUtils.getRoundVideoMaxDurationMs());
            invalidate();
        }
        if (this.progress != 0.0f) {
            canvas.save();
            if (!this.flipAnimationInProgress) {
                canvas.scale(this.cameraContainer.getScaleX(), this.cameraContainer.getScaleY(), this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawArc(this.rect, -90.0f, this.progress * 360.0f, false, this.paint);
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void populateCameraDebugOverlay(DebugOverlayView.ContentBuilder contentBuilder) {
        DebugOverlayView.ContentBuilder contentBuilderKv = contentBuilder.title("InstantCamera").kv("front", Boolean.valueOf(this.isFrontface)).kv("recording", Boolean.valueOf(this.recording)).kv("ready", Boolean.valueOf(this.cameraReady)).kv("dual", Boolean.valueOf(this.bothCameras)).kv("surface", Integer.valueOf(this.surfaceIndex)).kv("flash", Boolean.valueOf(this.flashing)).kv("frontFlash", Boolean.valueOf(this.frontFlashing)).kv("texture", Boolean.valueOf(this.cameraTextureAvailable));
        StringBuilder sb = new StringBuilder("preview0=");
        boolean z = false;
        sb.append(CameraDebugUtils.formatCameraSize(this.previewSize[0]));
        contentBuilderKv.line(sb.toString()).line("preview1=" + CameraDebugUtils.formatCameraSize(this.previewSize[1])).line("zoom.stops=" + CameraDebugUtils.formatZoomStops(this.zoomSlider.getToggleStops())).line("zoom.lenses=" + CameraDebugUtils.formatZoomStops(this.zoomSlider.getOpticalZoomRatios()));
        if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
            contentBuilder.section("CameraX");
            if (this.cameraXSession == null) {
                contentBuilder.line("session=null");
                return;
            }
            DebugOverlayView.ContentBuilder contentBuilderLine = contentBuilder.kv("cx.init", Boolean.valueOf(this.cameraXSession.isInitiated())).kv("cx.ready", Boolean.valueOf(this.cameraXSession.isReady())).kv("cx.dual", Boolean.valueOf(this.cameraXSession.isDualMode())).kv("cx.front", Boolean.valueOf(this.cameraXSession.isFrontface())).line("cx.zoom=" + CameraDebugUtils.safeCameraXZoomRatio(this.cameraXSession) + " [" + CameraDebugUtils.safeCameraXMinZoomRatio(this.cameraXSession) + ".." + CameraDebugUtils.safeCameraXMaxZoomRatio(this.cameraXSession) + "]");
            StringBuilder sb2 = new StringBuilder("cx.fpsRanges=");
            sb2.append(CameraDebugUtils.getCameraXSupportedFpsRanges(this.cameraXSession));
            DebugOverlayView.ContentBuilder contentBuilderLine2 = contentBuilderLine.line(sb2.toString());
            StringBuilder sb3 = new StringBuilder("bound=");
            sb3.append(CameraDebugUtils.getCameraXBoundCameraList(this.cameraXSession));
            contentBuilderLine2.line(sb3.toString()).line("avail=" + CameraDebugUtils.getCameraXAvailableCameraList(this.cameraXSession)).line("phys=" + CameraDebugUtils.getCameraXPhysicalCameraList(this.cameraXSession));
            return;
        }
        if (this.useCamera2) {
            contentBuilder.section("Camera2");
            Camera2Session camera2Session = this.camera2SessionCurrent;
            if (camera2Session == null) {
                contentBuilder.line("session=null");
                return;
            }
            DebugOverlayView.ContentBuilder contentBuilderLine3 = contentBuilder.kv("c2.init", Boolean.valueOf(camera2Session.isInitiated())).kv("c2.flash", Boolean.valueOf(this.camera2SessionCurrent.getFlash())).kv("c2.both", Boolean.valueOf(this.bothCameras)).line("c2.zoom=" + this.camera2SessionCurrent.getZoom() + " [" + this.camera2SessionCurrent.getMinZoom() + ".." + this.camera2SessionCurrent.getMaxZoom() + "]");
            StringBuilder sb4 = new StringBuilder("c2.fpsRanges=");
            sb4.append(CameraDebugUtils.getCamera2SupportedFpsRanges(this.camera2SessionCurrent));
            DebugOverlayView.ContentBuilder contentBuilderLine4 = contentBuilderLine3.line(sb4.toString());
            StringBuilder sb5 = new StringBuilder("ids=");
            sb5.append(CameraDebugUtils.getCamera2CameraList(getContext()));
            contentBuilderLine4.line(sb5.toString());
            return;
        }
        DebugOverlayView.ContentBuilder contentBuilderSection = contentBuilder.section("Camera1");
        CameraSession cameraSession = this.cameraSession;
        if (cameraSession != null && cameraSession.isInitied()) {
            z = true;
        }
        contentBuilderSection.kv("c1.init", Boolean.valueOf(z)).kv("c1.zoom", Float.valueOf(this.cameraZoom)).line("c1.fpsRanges=" + CameraDebugUtils.getLegacySupportedFpsRanges(this.cameraSession)).line("ids=" + CameraDebugUtils.getLegacyCameraList());
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.buttonsLayout.setAlpha(0.0f);
        this.cameraContainer.setAlpha(0.0f);
        this.textureOverlayView.setAlpha(0.0f);
        this.muteImageView.setAlpha(0.0f);
        this.zoomSlider.setOpenAlpha(0.0f);
        this.muteImageView.setScaleX(1.0f);
        this.muteImageView.setScaleY(1.0f);
        this.cameraContainer.setScaleX(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.cameraContainer.setScaleY(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.textureOverlayView.setScaleX(this.setVisibilityFromPause ? 1.0f : 0.1f);
        this.textureOverlayView.setScaleY(this.setVisibilityFromPause ? 1.0f : 0.1f);
        if (this.cameraContainer.getMeasuredWidth() != 0) {
            this.cameraContainer.setPivotX(r0.getMeasuredWidth() / 2);
            this.cameraContainer.setPivotY(r0.getMeasuredHeight() / 2);
            this.textureOverlayView.setPivotX(r0.getMeasuredWidth() / 2);
            this.textureOverlayView.setPivotY(r0.getMeasuredHeight() / 2);
        }
        try {
            if (i == 0) {
                ((Activity) getContext()).getWindow().addFlags(128);
            } else {
                ((Activity) getContext()).getWindow().clearFlags(128);
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void togglePause() {
        if (this.recording) {
            this.cancelled = this.recordedTime < 800;
            this.recording = false;
            updateFlash();
            if (this.cameraThread != null) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), Integer.valueOf(this.cancelled ? 4 : 2));
                saveLastCameraBitmap();
                CameraGLThread cameraGLThread = this.cameraThread;
                boolean z = this.cancelled;
                cameraGLThread.shutdown(z ? 0 : 2, true, 0, 0, z ? 0 : -2, 0L);
                this.cameraThread = null;
            }
            if (this.cancelled) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.TRUE, Integer.valueOf((int) this.recordedTime));
                startAnimation(false, false);
                MediaController.getInstance().requestRecordAudioFocus(false);
                return;
            } else {
                if (this.videoEncoder != null) {
                    File file = this.previewFile;
                    if (file != null) {
                        file.delete();
                    }
                    File fileMakeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, true);
                    this.previewFile = fileMakeCacheFile;
                    this.videoEncoder.pause(fileMakeCacheFile);
                    return;
                }
                return;
            }
        }
        if (this.videoEncoder != null) {
            hideCamera(false);
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.releasePlayer(true);
                this.videoPlayer = null;
            }
            showCamera(true);
            try {
                performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.lockOrientation(this.delegate.getParentActivity());
            invalidate();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordResumed, new Object[0]);
        }
    }

    public void setFrontface(boolean z) {
        this.isFrontface = z;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public boolean isPaused() {
        return !this.recording;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void showCamera(boolean z) {
        if (this.textureView != null) {
            return;
        }
        this.camLifecycle = new CameraXSession.CameraLifecycle();
        if (this.switchCameraDrawable == null) {
            int i = C2665R.raw.roundcamera_flip;
            int i2 = this.buttonsSizePx;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, i2, i2);
            this.switchCameraDrawable = rLottieDrawable;
            rLottieDrawable.setCurrentFrame(0);
            this.switchCameraDrawable.setCallback(this.switchCameraButton);
        }
        this.switchCameraButton.setImageDrawable(this.switchCameraDrawable);
        this.textureOverlayView.setAlpha(1.0f);
        this.textureOverlayView.invalidate();
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
            backupImageView.setImageResource(C2665R.drawable.icplaceholder);
        }
        this.cameraReady = false;
        this.selectedCamera = null;
        if (!z) {
            if (ExteraConfig.getVideoMessagesCamera() != VideoMessagesCamera.ASK) {
                this.isFrontface = ExteraConfig.getVideoMessagesCamera() == VideoMessagesCamera.FRONT;
            }
            updateFlash();
            this.recordedTime = 0L;
            this.progress = 0.0f;
        }
        this.cancelled = false;
        this.file = null;
        this.encryptedFile = null;
        this.key = null;
        this.iv = null;
        this.needDrawFlickerStub = true;
        if (initCamera()) {
            if (MediaController.getInstance().getPlayingMessageObject() != null) {
                if (MediaController.getInstance().getPlayingMessageObject().isVideo() || MediaController.getInstance().getPlayingMessageObject().isRoundVideo()) {
                    MediaController.getInstance().cleanupPlayer(true, true);
                } else if (SharedConfig.pauseMusicOnRecord) {
                    MediaController.getInstance().pauseByRewind();
                }
            }
            if (!z) {
                this.cameraFile = new C39148(FileLoader.getDirectory(3), System.currentTimeMillis() + "_" + SharedConfig.getLastLocalId() + ".mp4");
            }
            SharedConfig.saveConfig();
            AutoDeleteMediaTask.lockFile(this.cameraFile);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("InstantCamera show round camera " + this.cameraFile.getAbsolutePath());
            }
            if (this.useCamera2) {
                this.bothCameras = DualCameraView.roundDualAvailableStatic(getContext());
                if (this.bothCameras) {
                    int i3 = 0;
                    while (i3 < 2) {
                        Camera2Session[] camera2SessionArr = this.camera2Sessions;
                        if (camera2SessionArr[i3] == null) {
                            camera2SessionArr[i3] = Camera2Session.create(i3 == 0, SystemUtils.getRoundVideoResolution(), SystemUtils.getRoundVideoResolution());
                            Camera2Session camera2Session = this.camera2Sessions[i3];
                            if (camera2Session != null) {
                                camera2Session.setRecordingVideo(true);
                                this.previewSize[i3] = new org.telegram.messenger.camera.Size(this.camera2Sessions[i3].getPreviewWidth(), this.camera2Sessions[i3].getPreviewHeight());
                            }
                        }
                        i3++;
                    }
                    updateFlash();
                    Camera2Session[] camera2SessionArr2 = this.camera2Sessions;
                    boolean z2 = this.isFrontface;
                    Camera2Session camera2Session2 = camera2SessionArr2[!z2 ? 1 : 0];
                    this.camera2SessionCurrent = camera2Session2;
                    if (camera2Session2 != null && camera2SessionArr2[z2 ? 1 : 0] == null) {
                        this.bothCameras = false;
                    }
                    this.surfaceIndex = (!this.bothCameras || this.isFrontface) ? 0 : 1;
                    if (this.camera2SessionCurrent == null) {
                        return;
                    }
                } else {
                    this.surfaceIndex = 0;
                    Camera2Session[] camera2SessionArr3 = this.camera2Sessions;
                    boolean z3 = this.isFrontface;
                    int i4 = !z3 ? 1 : 0;
                    Camera2Session camera2SessionCreate = Camera2Session.create(z3, SystemUtils.getRoundVideoResolution(), SystemUtils.getRoundVideoResolution());
                    camera2SessionArr3[i4] = camera2SessionCreate;
                    this.camera2SessionCurrent = camera2SessionCreate;
                    if (camera2SessionCreate == null) {
                        return;
                    }
                    camera2SessionCreate.setRecordingVideo(true);
                    this.previewSize[0] = new org.telegram.messenger.camera.Size(this.camera2SessionCurrent.getPreviewWidth(), this.camera2SessionCurrent.getPreviewHeight());
                }
                bindCamera2ZoomSlider(this.camera2SessionCurrent);
            } else if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
                this.bothCameras = CameraXSession.isRoundDualAvailable(getContext());
                this.surfaceIndex = (!this.bothCameras || this.isFrontface) ? 0 : 1;
                if (this.previewSize[0] == null) {
                    int roundVideoResolution = SystemUtils.getRoundVideoResolution();
                    this.previewSize[0] = new org.telegram.messenger.camera.Size(roundVideoResolution, roundVideoResolution);
                }
                org.telegram.messenger.camera.Size[] sizeArr = this.previewSize;
                if (sizeArr[1] == null) {
                    sizeArr[1] = sizeArr[0];
                }
            } else {
                this.bothCameras = false;
                this.surfaceIndex = 0;
            }
            TextureView textureView = new TextureView(getContext());
            this.textureView = textureView;
            textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: org.telegram.ui.Components.InstantCameraView.9
                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i5, int i6) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("InstantCamera camera surface available");
                    }
                    if (InstantCameraView.this.cameraThread != null || surfaceTexture == null || InstantCameraView.this.cancelled) {
                        return;
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("InstantCamera start create thread");
                    }
                    InstantCameraView.this.cameraThread = InstantCameraView.this.new CameraGLThread(surfaceTexture, i5, i6);
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i5, int i6) {
                    if (InstantCameraView.this.cameraThread != null) {
                        InstantCameraView.this.cameraThread.surfaceWidth = i5;
                        InstantCameraView.this.cameraThread.surfaceHeight = i6;
                        InstantCameraView.this.cameraThread.updateScale();
                    }
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                    InstantCameraView.this.cancelZoomAnimations();
                    InstantCameraView.this.zoomSlider.unbindSession();
                    if (InstantCameraView.this.cameraThread != null) {
                        InstantCameraView.this.cameraThread.shutdown(0, true, 0, 0, 0, 0L);
                        InstantCameraView.this.cameraThread = null;
                    }
                    CameraType cameraType = ExteraConfig.getCameraType();
                    CameraType cameraType2 = CameraType.CAMERA_X;
                    InstantCameraView instantCameraView = InstantCameraView.this;
                    if (cameraType != cameraType2) {
                        if (!instantCameraView.useCamera2) {
                            if (InstantCameraView.this.cameraSession == null) {
                                return true;
                            }
                            CameraController.getInstance().close(InstantCameraView.this.cameraSession, null, null);
                            InstantCameraView.this.cameraSession = null;
                            return true;
                        }
                        int i5 = 0;
                        while (true) {
                            int length = InstantCameraView.this.camera2Sessions.length;
                            InstantCameraView instantCameraView2 = InstantCameraView.this;
                            if (i5 < length) {
                                if (instantCameraView2.camera2Sessions[i5] != null) {
                                    InstantCameraView.this.camera2Sessions[i5].destroy(false);
                                    InstantCameraView.this.camera2Sessions[i5] = null;
                                }
                                i5++;
                            } else {
                                instantCameraView2.camera2SessionCurrent = null;
                                return true;
                            }
                        }
                    } else {
                        instantCameraView.releaseCameraXSession();
                        return true;
                    }
                }
            });
            this.cameraContainer.addView(this.textureView, LayoutHelper.createFrame(-1, -1.0f));
            this.updateTextureViewSize = true;
            this.setVisibilityFromPause = z;
            setVisibility(0);
            startAnimation(true, z);
            MediaController.getInstance().requestRecordAudioFocus(true);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.InstantCameraView$8 */
    public class C39148 extends File implements FileRetargetInterface {
        @Override // java.io.File, j$.io.FileRetargetInterface
        public /* synthetic */ Path toPath() {
            return DesugarFile.toPath(this);
        }

        public C39148(File file, String str) {
            super(file, str);
        }

        @Override // java.io.File
        public boolean delete() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m990e("delete camera file");
            }
            return super.delete();
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public InstantViewCameraContainer getCameraContainer() {
        return this.cameraContainer;
    }

    public void startAnimation(boolean z, final boolean z2) {
        dispatchAnimationState(z, z2);
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.animatorSet.cancel();
        }
        PipRoundVideoView pipRoundVideoView = PipRoundVideoView.getInstance();
        if (pipRoundVideoView != null) {
            pipRoundVideoView.showTemporary(!z);
        }
        if (z && !this.opened) {
            this.cameraContainer.setTranslationX(0.0f);
            this.textureOverlayView.setTranslationX(0.0f);
            this.animationTranslationY = z2 ? 0.0f : getMeasuredHeight() / 2.0f;
            updateTranslationY();
        }
        this.opened = z;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
        this.animatorSet = new AnimatorSet();
        float fDp = (z || this.recordedTime <= 300) ? 0.0f : AndroidUtilities.dp(24.0f) - (getMeasuredWidth() / 2.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z ? 1.0f : 0.0f, z ? 0.0f : 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startAnimation$9(z2, valueAnimator);
            }
        });
        AnimatorSet animatorSet2 = this.animatorSet;
        LinearLayout linearLayout = this.buttonsLayout;
        float[] fArr = {z ? 1.0f : 0.0f};
        Property property = View.ALPHA;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) property, fArr);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.zoomSlider, InstantCameraZoomSlider.OPEN_ALPHA, z ? 1.0f : 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.muteImageView, (Property<ImageView, Float>) property, 0.0f);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.paint, AnimationProperties.PAINT_ALPHA, z ? 255 : 0);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.cameraContainer, (Property<InstantViewCameraContainer, Float>) property, z ? 1.0f : 0.0f);
        InstantViewCameraContainer instantViewCameraContainer = this.cameraContainer;
        float f = z ? 1.0f : 0.1f;
        Property property2 = View.SCALE_X;
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(instantViewCameraContainer, (Property<InstantViewCameraContainer, Float>) property2, f);
        InstantViewCameraContainer instantViewCameraContainer2 = this.cameraContainer;
        float f2 = z ? 1.0f : 0.1f;
        Property property3 = View.SCALE_Y;
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(instantViewCameraContainer2, (Property<InstantViewCameraContainer, Float>) property3, f2);
        Property property4 = View.TRANSLATION_X;
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfInt, objectAnimatorOfFloat4, objectAnimatorOfFloat5, objectAnimatorOfFloat6, ObjectAnimator.ofFloat(this.cameraContainer, (Property<InstantViewCameraContainer, Float>) property4, fDp), ObjectAnimator.ofFloat(this.textureOverlayView, (Property<BackupImageView, Float>) property, z ? 1.0f : 0.0f), ObjectAnimator.ofFloat(this.textureOverlayView, (Property<BackupImageView, Float>) property2, z ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.textureOverlayView, (Property<BackupImageView, Float>) property3, z ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.textureOverlayView, (Property<BackupImageView, Float>) property4, fDp), valueAnimatorOfFloat);
        if (!z) {
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(InstantCameraView.this.animatorSet)) {
                        InstantCameraView.this.hideCamera(true);
                        InstantCameraView.this.setVisibilityFromPause = false;
                        InstantCameraView.this.setVisibility(4);
                    }
                }
            });
        } else {
            setTranslationX(0.0f);
        }
        this.animatorSet.setDuration(180L);
        this.animatorSet.setInterpolator(new DecelerateInterpolator());
        this.animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAnimation$9(boolean z, ValueAnimator valueAnimator) {
        this.animationTranslationY = z ? 0.0f : (getMeasuredHeight() / 2.0f) * ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateTranslationY();
    }

    private void updateTranslationY() {
        this.textureOverlayView.setTranslationY(this.animationTranslationY + this.panTranslationY);
        this.cameraContainer.setTranslationY(this.animationTranslationY + this.panTranslationY);
        this.zoomSlider.setBaseTranslationY(this.animationTranslationY + this.panTranslationY);
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public RectF getCameraRect() {
        this.cameraContainer.getLocationOnScreen(this.position);
        return new RectF(this.position[0], r1[1], r2 + this.cameraContainer.getWidth(), this.position[1] + this.cameraContainer.getHeight());
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void changeVideoPreviewState(int i, float f) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        if (i == 0) {
            startProgressTimer();
            this.videoPlayer.play();
        } else if (i == 1) {
            stopProgressTimer();
            this.videoPlayer.pause();
        } else if (i == 2) {
            videoPlayer.seekTo((long) (f * videoPlayer.getDuration()));
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void send(int i, boolean z, int i2, int i3, int i4, long j, long j2) {
        if (this.textureView == null) {
            return;
        }
        stopProgressTimer();
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        }
        if (i == 4) {
            if (this.videoEncoder != null && this.recordedTime > 800) {
                requestStopRecording(1, new SendOptions(z, i2, i3, i4, j, j2));
                return;
            }
            if (BuildVars.DEBUG_VERSION && !this.cameraFile.exists()) {
                FileLog.m992e(new RuntimeException("file not found :( round video"));
            }
            if (this.videoEditedInfo == null) {
                VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
                this.videoEditedInfo = videoEditedInfo;
                videoEditedInfo.startTime = -1L;
                videoEditedInfo.endTime = -1L;
            }
            if (this.videoEditedInfo.needConvert()) {
                this.file = null;
                this.encryptedFile = null;
                this.key = null;
                this.iv = null;
                VideoEditedInfo videoEditedInfo2 = this.videoEditedInfo;
                long j3 = videoEditedInfo2.estimatedDuration;
                double d = j3;
                long j4 = videoEditedInfo2.startTime;
                if (j4 < 0) {
                    j4 = 0;
                }
                long j5 = videoEditedInfo2.endTime;
                if (j5 >= 0) {
                    j3 = j5;
                }
                long j6 = j3 - j4;
                videoEditedInfo2.estimatedDuration = j6;
                videoEditedInfo2.estimatedSize = Math.max(1L, (long) (this.size * (j6 / d)));
                this.videoEditedInfo.bitrate = SystemUtils.getRoundVideoBitrate() * 1024;
                VideoEditedInfo videoEditedInfo3 = this.videoEditedInfo;
                long j7 = videoEditedInfo3.startTime;
                if (j7 > 0) {
                    videoEditedInfo3.startTime = j7 * 1000;
                }
                long j8 = videoEditedInfo3.endTime;
                if (j8 > 0) {
                    videoEditedInfo3.endTime = j8 * 1000;
                }
                FileLoader.getInstance(this.currentAccount).cancelFileUpload(this.cameraFile.getAbsolutePath(), false);
            } else {
                this.videoEditedInfo.estimatedSize = Math.max(1L, this.size);
            }
            VideoEditedInfo videoEditedInfo4 = this.videoEditedInfo;
            videoEditedInfo4.file = this.file;
            videoEditedInfo4.encryptedFile = this.encryptedFile;
            videoEditedInfo4.key = this.key;
            videoEditedInfo4.iv = this.iv;
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, this.cameraFile.getAbsolutePath(), 0, true, 0, 0, 0L);
            photoEntry.ttl = i4;
            photoEntry.effectId = j;
            this.delegate.sendMedia(photoEntry, this.videoEditedInfo, z, i2, i3, false, j2);
            if (i2 != 0) {
                startAnimation(false, false);
            }
            MediaController.getInstance().requestRecordAudioFocus(false);
            return;
        }
        this.cancelled = this.recordedTime < 800;
        this.recording = false;
        this.flashing = false;
        updateFlash();
        int i5 = this.cancelled ? 4 : i == 3 ? 2 : 5;
        if (this.cameraThread != null) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), Integer.valueOf(i5));
            int i6 = this.cancelled ? 0 : i == 3 ? 2 : 1;
            saveLastCameraBitmap();
            this.cameraThread.shutdown(i6, z, i2, i3, i4, j);
            this.cameraThread = null;
        }
        if (this.cancelled) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.TRUE, Integer.valueOf((int) this.recordedTime));
            startAnimation(false, false);
            MediaController.getInstance().requestRecordAudioFocus(false);
        }
    }

    private void saveLastCameraBitmap() {
        Bitmap bitmap = this.textureView.getBitmap();
        if (bitmap == null || bitmap.getPixel(0, 0) == 0) {
            return;
        }
        final Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 50, 50, true);
        this.lastBitmap = bitmapCreateScaledBitmap;
        Utilities.blurBitmap(bitmapCreateScaledBitmap, 7);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                InstantCameraView.$r8$lambda$dwdTlZURzTW3rnHrKLBue44ayhQ(bitmapCreateScaledBitmap);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$dwdTlZURzTW3rnHrKLBue44ayhQ(Bitmap bitmap) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "icthumb.jpg"));
            bitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable unused) {
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void cancel(boolean z) {
        stopProgressTimer();
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        }
        if (this.textureView == null) {
            return;
        }
        this.cancelled = true;
        this.recording = false;
        this.flashing = false;
        updateFlash();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), Integer.valueOf(z ? 0 : 6));
        if (this.cameraThread != null) {
            saveLastCameraBitmap();
            this.cameraThread.shutdown(0, true, 0, 0, 0, 0L);
            this.cameraThread = null;
        } else if (this.videoEncoder != null) {
            requestStopRecording(0, new SendOptions(true, 0, 0, 0, 0L, 0L));
        }
        if (this.cameraFile != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m990e("delete camera file by cancel");
            }
            this.cameraFile.delete();
            AutoDeleteMediaTask.unlockFile(this.cameraFile);
            this.cameraFile = null;
        }
        MediaController.getInstance().requestRecordAudioFocus(false);
        startAnimation(false, false);
        invalidate();
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public View getButtonsLayout() {
        return this.buttonsLayout;
    }

    public InstantCameraZoomSlider getZoomSlider() {
        return this.zoomSlider;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public View getMuteImageView() {
        return this.muteImageView;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public Paint getPaint() {
        return this.paint;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void hideCamera(boolean z) {
        ViewGroup viewGroup;
        destroy(z);
        this.cameraContainer.setTranslationX(0.0f);
        this.textureOverlayView.setTranslationX(0.0f);
        this.animationTranslationY = 0.0f;
        updateTranslationY();
        MediaController.getInstance().resumeByRewind();
        TextureView textureView = this.textureView;
        if (textureView != null && (viewGroup = (ViewGroup) textureView.getParent()) != null) {
            viewGroup.removeView(this.textureView);
        }
        this.textureView = null;
        this.cameraContainer.setImageReceiver(null);
    }

    private void bindCamera2ZoomSlider(final Camera2Session camera2Session) {
        if (camera2Session == null) {
            this.zoomSlider.unbindSession();
            return;
        }
        this.cameraZoom = camera2Session.getZoom();
        this.zoomSlider.bindSession(camera2Session);
        camera2Session.whenDone(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$bindCamera2ZoomSlider$11(camera2Session);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindCamera2ZoomSlider$11(Camera2Session camera2Session) {
        if (this.camera2SessionCurrent == camera2Session && ExteraConfig.getCameraType() == CameraType.CAMERA_2) {
            this.cameraZoom = camera2Session.getZoom();
            this.zoomSlider.bindSession(camera2Session);
        }
    }

    private void switchCamera() {
        Camera2Session camera2Session;
        if (this.cameraThread == null) {
            return;
        }
        cancelZoomAnimations();
        this.zoomSlider.beginCameraSwitch();
        if (!this.useCamera2 || !this.bothCameras) {
            saveLastCameraBitmap();
            Bitmap bitmap = this.lastBitmap;
            if (bitmap != null) {
                this.needDrawFlickerStub = false;
                this.textureOverlayView.setImageBitmap(bitmap);
                this.textureOverlayView.setAlpha(1.0f);
            }
        }
        this.isFrontface = !this.isFrontface;
        if (ExteraConfig.getRememberLastUsedCamera() && ExteraConfig.getVideoMessagesCamera() != VideoMessagesCamera.ASK) {
            ExteraConfig.setVideoMessagesCamera(this.isFrontface ? VideoMessagesCamera.FRONT : VideoMessagesCamera.REAR);
        }
        updateFlash();
        if (this.useCamera2) {
            if (this.bothCameras) {
                Camera2Session camera2Session2 = this.camera2Sessions[!this.isFrontface ? 1 : 0];
                this.camera2SessionCurrent = camera2Session2;
                bindCamera2ZoomSlider(camera2Session2);
                this.cameraThread.flipSurfaces();
                return;
            }
            Camera2Session camera2Session3 = this.camera2SessionCurrent;
            if (camera2Session3 != null) {
                camera2Session3.destroy(false);
                this.camera2SessionCurrent = null;
                this.camera2Sessions[this.isFrontface ? 1 : 0] = null;
            }
            Camera2Session[] camera2SessionArr = this.camera2Sessions;
            boolean z = this.isFrontface;
            int i = !z ? 1 : 0;
            Camera2Session camera2SessionCreate = Camera2Session.create(z, SystemUtils.getRoundVideoResolution(), SystemUtils.getRoundVideoResolution());
            camera2SessionArr[i] = camera2SessionCreate;
            this.camera2SessionCurrent = camera2SessionCreate;
            if (camera2SessionCreate == null) {
                return;
            }
            camera2SessionCreate.setRecordingVideo(true);
            this.previewSize[0] = new org.telegram.messenger.camera.Size(this.camera2SessionCurrent.getPreviewWidth(), this.camera2SessionCurrent.getPreviewHeight());
            this.cameraThread.setCurrentSession(this.camera2SessionCurrent);
            bindCamera2ZoomSlider(this.camera2SessionCurrent);
        } else {
            CameraSession cameraSession = this.cameraSession;
            if (cameraSession != null) {
                cameraSession.destroy();
                CameraController.getInstance().close(this.cameraSession, null, null);
                this.cameraSession = null;
            }
        }
        initCamera();
        this.cameraReady = false;
        this.cameraZoom = (!this.useCamera2 || (camera2Session = this.camera2SessionCurrent) == null) ? 0.0f : camera2Session.getZoom();
        this.cameraThread.reinitForNewCamera();
    }

    private void switchCameraX() {
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_X) {
            return;
        }
        cancelZoomAnimations();
        boolean z = this.cameraXSession != null && this.cameraXSession.isDualMode();
        this.isFrontface = true ^ this.isFrontface;
        if (ExteraConfig.getRememberLastUsedCamera() && ExteraConfig.getVideoMessagesCamera() != VideoMessagesCamera.ASK) {
            ExteraConfig.setVideoMessagesCamera(this.isFrontface ? VideoMessagesCamera.FRONT : VideoMessagesCamera.REAR);
        }
        updateFlash();
        if (z) {
            CameraGLThread cameraGLThread = this.cameraThread;
            if (cameraGLThread != null) {
                cameraGLThread.flipSurfaces();
            }
            if (this.cameraXSession != null) {
                this.cameraXSession.switchCamera();
                this.zoomSlider.bindSession(this.cameraXSession);
                return;
            }
            return;
        }
        this.cameraReady = false;
        this.cameraZoom = 0.0f;
        if (this.cameraXSession != null) {
            this.cameraXSession.switchCamera();
            this.zoomSlider.bindSession(this.cameraXSession);
        } else {
            this.cameraThread.reinitForNewCamera();
        }
    }

    @Deprecated
    private boolean initCamera() {
        int i;
        int i2;
        if (this.useCamera2) {
            return true;
        }
        ArrayList<CameraInfo> cameras = CameraController.getInstance().getCameras();
        if (cameras == null) {
            return false;
        }
        CameraInfo cameraInfo = null;
        int i3 = 0;
        while (i3 < cameras.size()) {
            CameraInfo cameraInfo2 = cameras.get(i3);
            if (!cameraInfo2.isFrontface()) {
                cameraInfo = cameraInfo2;
            }
            if ((this.isFrontface && cameraInfo2.isFrontface()) || (!this.isFrontface && !cameraInfo2.isFrontface())) {
                this.selectedCamera = cameraInfo2;
                break;
            }
            i3++;
            cameraInfo = cameraInfo2;
        }
        if (this.selectedCamera == null) {
            this.selectedCamera = cameraInfo;
        }
        CameraInfo cameraInfo3 = this.selectedCamera;
        if (cameraInfo3 == null) {
            return false;
        }
        ArrayList<org.telegram.messenger.camera.Size> previewSizes = cameraInfo3.getPreviewSizes();
        ArrayList<org.telegram.messenger.camera.Size> pictureSizes = this.selectedCamera.getPictureSizes();
        this.previewSize[0] = chooseOptimalSize(previewSizes);
        org.telegram.messenger.camera.Size sizeChooseOptimalSize = chooseOptimalSize(pictureSizes);
        this.pictureSize = sizeChooseOptimalSize;
        if (this.previewSize[0].mWidth != sizeChooseOptimalSize.mWidth) {
            boolean z = false;
            for (int size = previewSizes.size() - 1; size >= 0; size--) {
                org.telegram.messenger.camera.Size size2 = previewSizes.get(size);
                int size3 = pictureSizes.size() - 1;
                while (true) {
                    if (size3 < 0) {
                        break;
                    }
                    org.telegram.messenger.camera.Size size4 = pictureSizes.get(size3);
                    int i4 = size2.mWidth;
                    org.telegram.messenger.camera.Size size5 = this.pictureSize;
                    if (i4 >= size5.mWidth && (i2 = size2.mHeight) >= size5.mHeight && i4 == size4.mWidth && i2 == size4.mHeight) {
                        this.previewSize[0] = size2;
                        this.pictureSize = size4;
                        z = true;
                        break;
                    }
                    size3--;
                }
                if (z) {
                    break;
                }
            }
            if (!z) {
                for (int size6 = previewSizes.size() - 1; size6 >= 0; size6--) {
                    org.telegram.messenger.camera.Size size7 = previewSizes.get(size6);
                    int size8 = pictureSizes.size() - 1;
                    while (true) {
                        if (size8 < 0) {
                            break;
                        }
                        org.telegram.messenger.camera.Size size9 = pictureSizes.get(size8);
                        int i5 = size7.mWidth;
                        if (i5 >= 360 && (i = size7.mHeight) >= 360 && i5 == size9.mWidth && i == size9.mHeight) {
                            this.previewSize[0] = size7;
                            this.pictureSize = size9;
                            z = true;
                            break;
                        }
                        size8--;
                    }
                    if (z) {
                        break;
                    }
                }
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("InstantCamera preview w = " + this.previewSize[0].mWidth + " h = " + this.previewSize[0].mHeight);
        }
        return true;
    }

    @Deprecated
    private org.telegram.messenger.camera.Size chooseOptimalSize(ArrayList<org.telegram.messenger.camera.Size> arrayList) {
        ArrayList<org.telegram.messenger.camera.Size> arrayList2 = new ArrayList<>();
        int i = Build.MANUFACTURER.equalsIgnoreCase("Samsung") ? 1200 : allowBigSizeCamera() ? 1440 : 1200;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (Math.max(arrayList.get(i2).mHeight, arrayList.get(i2).mWidth) <= i && Math.min(arrayList.get(i2).mHeight, arrayList.get(i2).mWidth) >= 320) {
                arrayList2.add(arrayList.get(i2));
            }
        }
        if (arrayList2.isEmpty() || !allowBigSizeCamera()) {
            if (!arrayList2.isEmpty()) {
                arrayList = arrayList2;
            }
            boolean zEqualsIgnoreCase = Build.MANUFACTURER.equalsIgnoreCase("Xiaomi");
            org.telegram.messenger.camera.Size size = this.aspectRatio;
            if (zEqualsIgnoreCase) {
                return CameraController.chooseOptimalSize(arrayList, 640, 480, size, false);
            }
            return CameraController.chooseOptimalSize(arrayList, 480, 270, size, false);
        }
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda9
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return InstantCameraView.$r8$lambda$JGI5kBaG7zbZNQIRRLRBaADb4XI((org.telegram.messenger.camera.Size) obj, (org.telegram.messenger.camera.Size) obj2);
            }
        });
        return arrayList2.get(0);
    }

    public static /* synthetic */ int $r8$lambda$JGI5kBaG7zbZNQIRRLRBaADb4XI(org.telegram.messenger.camera.Size size, org.telegram.messenger.camera.Size size2) {
        float fAbs = Math.abs(1.0f - (Math.min(size.mHeight, size.mWidth) / Math.max(size.mHeight, size.mWidth)));
        float fAbs2 = Math.abs(1.0f - (Math.min(size2.mHeight, size2.mWidth) / Math.max(size2.mHeight, size2.mWidth)));
        if (fAbs < fAbs2) {
            return -1;
        }
        return fAbs > fAbs2 ? 1 : 0;
    }

    @Deprecated
    private boolean allowBigSizeCamera() {
        if (SharedConfig.bigCameraForRound || SharedConfig.deviceIsAboveAverage() || Math.max(SharedConfig.getDevicePerformanceClass(), SharedConfig.getLegacyDevicePerformanceClass()) == 2) {
            return true;
        }
        int iHashCode = (Build.MANUFACTURER + " " + Build.DEVICE).toUpperCase().hashCode();
        int i = 0;
        while (true) {
            int[] iArr = ALLOW_BIG_CAMERA_WHITELIST;
            if (i >= iArr.length) {
                return false;
            }
            if (iArr[i] == iHashCode) {
                return true;
            }
            i++;
        }
    }

    @Deprecated
    public static boolean allowBigSizeCameraDebug() {
        if (Math.max(SharedConfig.getDevicePerformanceClass(), SharedConfig.getLegacyDevicePerformanceClass()) == 2) {
            return true;
        }
        int iHashCode = (Build.MANUFACTURER + " " + Build.DEVICE).toUpperCase().hashCode();
        int i = 0;
        while (true) {
            int[] iArr = ALLOW_BIG_CAMERA_WHITELIST;
            if (i >= iArr.length) {
                return false;
            }
            if (iArr[i] == iHashCode) {
                return true;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCamera(final int i, final SurfaceTexture surfaceTexture) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createCamera$17(i, surfaceTexture);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCamera$17(final int i, SurfaceTexture surfaceTexture) {
        CameraXSession cameraXSession;
        if (this.cameraThread == null) {
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("InstantCamera create camera session " + i);
        }
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_X) {
            if (!this.useCamera2) {
                if (i == 1) {
                    return;
                }
                surfaceTexture.setDefaultBufferSize(this.previewSize[0].getWidth(), this.previewSize[0].getHeight());
                final CameraSession cameraSession = new CameraSession(this.selectedCamera, this.previewSize[0], this.pictureSize, 256, true);
                this.cameraSession = cameraSession;
                updateFlash();
                this.cameraThread.setCurrentSession(cameraSession);
                CameraController.getInstance().openRound(cameraSession, surfaceTexture, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createCamera$13(cameraSession);
                    }
                }, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createCamera$14(cameraSession);
                    }
                });
                return;
            }
            if (this.bothCameras) {
                Camera2Session camera2Session = this.camera2Sessions[i];
                if (camera2Session != null) {
                    camera2Session.open(surfaceTexture);
                    return;
                }
                return;
            }
            if (i == 1) {
                return;
            }
            this.cameraThread.setCurrentSession(this.camera2SessionCurrent);
            this.camera2SessionCurrent.open(surfaceTexture);
            return;
        }
        Preview.SurfaceProvider surfaceProviderCreateSurfaceProvider = CameraXSession.createSurfaceProvider(getContext(), surfaceTexture, new CameraXSession.PreviewSizeListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda25
            @Override // com.exteragram.messenger.camera.CameraXSession.PreviewSizeListener
            public final void onPreviewSize(int i2, int i3) {
                this.f$0.lambda$createCamera$15(i, i2, i3);
            }
        });
        if (i == 0) {
            final CameraXSession cameraXSession2 = new CameraXSession(this.camLifecycle, surfaceProviderCreateSurfaceProvider);
            this.cameraXSession = cameraXSession2;
            cameraXSession2.initCamera(getContext(), this.isFrontface, this.bothCameras, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createCamera$16(cameraXSession2);
                }
            });
            updateFlash();
            return;
        }
        if (!this.bothCameras || (cameraXSession = this.cameraXSession) == null) {
            return;
        }
        cameraXSession.setSecondSurfaceProvider(surfaceProviderCreateSurfaceProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCamera$13(CameraSession cameraSession) {
        CameraGLThread cameraGLThread;
        if (this.cameraSession == cameraSession) {
            updateFlash();
            boolean z = false;
            try {
                Camera.Size currentPreviewSize = cameraSession.getCurrentPreviewSize();
                if (currentPreviewSize.width != this.previewSize[0].getWidth() || currentPreviewSize.height != this.previewSize[0].getHeight()) {
                    this.previewSize[0] = new org.telegram.messenger.camera.Size(currentPreviewSize.width, currentPreviewSize.height);
                    FileLog.m989d("InstantCamera change preview size to w = " + this.previewSize[0].getWidth() + " h = " + this.previewSize[0].getHeight());
                }
            } catch (Exception e) {
                FileLog.m992e(e);
            }
            try {
                Camera.Size currentPictureSize = cameraSession.getCurrentPictureSize();
                if (currentPictureSize.width != this.pictureSize.getWidth() || currentPictureSize.height != this.pictureSize.getHeight()) {
                    this.pictureSize = new org.telegram.messenger.camera.Size(currentPictureSize.width, currentPictureSize.height);
                    FileLog.m989d("InstantCamera change picture size to w = " + this.pictureSize.getWidth() + " h = " + this.pictureSize.getHeight());
                    z = true;
                }
            } catch (Exception e2) {
                FileLog.m992e(e2);
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("InstantCamera camera initied");
            }
            cameraSession.setInitied();
            this.zoomSlider.bindSession(cameraSession, this.cameraZoom);
            if (!z || (cameraGLThread = this.cameraThread) == null) {
                return;
            }
            cameraGLThread.reinitForNewCamera();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCamera$14(CameraSession cameraSession) {
        CameraGLThread cameraGLThread = this.cameraThread;
        if (cameraGLThread == null || this.cameraSession != cameraSession) {
            return;
        }
        cameraGLThread.setCurrentSession(cameraSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCamera$15(int i, int i2, int i3) {
        CameraGLThread cameraGLThread = this.cameraThread;
        if (cameraGLThread != null) {
            cameraGLThread.setCameraXPreviewSize(i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCamera$16(CameraXSession cameraXSession) {
        CameraGLThread cameraGLThread;
        if (this.cameraXSession != cameraXSession) {
            return;
        }
        boolean zIsDualMode = cameraXSession.isDualMode();
        if (!zIsDualMode && this.bothCameras && this.surfaceIndex != 0 && (cameraGLThread = this.cameraThread) != null) {
            cameraGLThread.flipSurfaces();
        }
        this.bothCameras = zIsDualMode;
        CameraGLThread cameraGLThread2 = this.cameraThread;
        if (cameraGLThread2 != null) {
            cameraGLThread2.setOrientation();
        }
        this.zoomSlider.bindSession(cameraXSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int loadShader(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m990e(GLES20.glGetShaderInfoLog(iGlCreateShader));
        }
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    private void startProgressTimer() {
        Timer timer = this.progressTimer;
        if (timer != null) {
            try {
                timer.cancel();
                this.progressTimer = null;
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
        Timer timer2 = new Timer();
        this.progressTimer = timer2;
        timer2.schedule(new AnonymousClass11(), 0L, 17L);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.InstantCameraView$11, reason: invalid class name */
    public class AnonymousClass11 extends TimerTask {
        public AnonymousClass11() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$11$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            try {
                if (InstantCameraView.this.videoPlayer == null || InstantCameraView.this.videoEditedInfo == null) {
                    return;
                }
                if (InstantCameraView.this.videoEditedInfo.endTime <= 0 || InstantCameraView.this.videoPlayer.getCurrentPosition() < InstantCameraView.this.videoEditedInfo.endTime) {
                    return;
                }
                InstantCameraView.this.videoPlayer.seekTo(InstantCameraView.this.videoEditedInfo.startTime > 0 ? InstantCameraView.this.videoEditedInfo.startTime : 0L);
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
    }

    private void stopProgressTimer() {
        Timer timer = this.progressTimer;
        if (timer != null) {
            try {
                timer.cancel();
                this.progressTimer = null;
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void onPanTranslationUpdate(float f) {
        this.panTranslationY = f / 2.0f;
        updateTranslationY();
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public TextureView getTextureView() {
        return this.textureView;
    }

    @Override // org.telegram.ui.Components.InstantCameraViewBase
    public void setIsMessageTransition(boolean z) {
        this.isMessageTransition = z;
    }

    public void resetCameraFile() {
        this.cameraFile = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int resolveEncoderFrameRate() {
        CameraXSession cameraXSession;
        if (!ExteraConfig.getExtendedFramesPerSecond()) {
            return 30;
        }
        if (this.useCamera2) {
            Camera2Session camera2Session = this.camera2SessionCurrent;
            if (camera2Session != null) {
                return camera2Session.getRecordingFrameRate();
            }
            return 30;
        }
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_X || (cameraXSession = this.cameraXSession) == null) {
            return 30;
        }
        return cameraXSession.getRecordingFrameRate();
    }

    public class CameraGLThread extends DispatchQueue {
        private final int DO_FLIP;
        private final int DO_REINIT_MESSAGE;
        private final int DO_RENDER_MESSAGE;
        private final int DO_SETORIENTATION_MESSAGE;
        private final int DO_SETSESSION_MESSAGE;
        private final int DO_SET_CAMERAX_PREVIEW_SIZE;
        private final int DO_SHUTDOWN_MESSAGE;
        private Integer cameraId;
        private final SurfaceTexture[] cameraSurface;
        private Object currentSession;
        private int drawProgram;
        private EGL10 egl10;
        private EGLContext eglContext;
        private EGLDisplay eglDisplay;
        private EGLSurface eglSurface;
        private final RoundVideoEncoder.FrameSnapshot frameSnapshotScratch;
        private boolean initied;
        private final AtomicInteger pendingRenderMask;
        private int positionHandle;
        private boolean recording;
        private volatile boolean running;
        private final int[] surfaceGeneration;
        private int surfaceHeight;
        private SurfaceTexture surfaceTexture;
        private int surfaceWidth;
        private int textureHandle;
        private int textureMatrixHandle;
        private int vertexMatrixHandle;

        public CameraGLThread(SurfaceTexture surfaceTexture, int i, int i2) {
            super("CameraGLThread", false);
            this.cameraSurface = new SurfaceTexture[2];
            this.DO_RENDER_MESSAGE = 0;
            this.DO_SHUTDOWN_MESSAGE = 1;
            this.DO_REINIT_MESSAGE = 2;
            this.DO_SETSESSION_MESSAGE = 3;
            this.DO_FLIP = 4;
            this.DO_SETORIENTATION_MESSAGE = 5;
            this.DO_SET_CAMERAX_PREVIEW_SIZE = 6;
            this.cameraId = 0;
            this.running = true;
            this.pendingRenderMask = new AtomicInteger(0);
            this.surfaceGeneration = new int[2];
            this.frameSnapshotScratch = new RoundVideoEncoder.FrameSnapshot();
            this.surfaceTexture = surfaceTexture;
            this.surfaceWidth = i;
            this.surfaceHeight = i2;
            start();
            postRunnable(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.initied = initGL();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateScale() {
            if (InstantCameraView.this.previewSize[InstantCameraView.this.surfaceIndex] != null) {
                int width = InstantCameraView.this.previewSize[InstantCameraView.this.surfaceIndex].getWidth();
                float fMin = this.surfaceWidth / Math.min(width, r1);
                int i = (int) (width * fMin);
                int height = (int) (InstantCameraView.this.previewSize[InstantCameraView.this.surfaceIndex].getHeight() * fMin);
                if (i == height) {
                    InstantCameraView.this.scaleX = 1.0f;
                    InstantCameraView.this.scaleY = 1.0f;
                } else {
                    InstantCameraView instantCameraView = InstantCameraView.this;
                    if (i > height) {
                        instantCameraView.scaleX = 1.0f;
                        InstantCameraView.this.scaleY = i / this.surfaceHeight;
                    } else {
                        instantCameraView.scaleX = height / this.surfaceWidth;
                        InstantCameraView.this.scaleY = 1.0f;
                    }
                }
                FileLog.m989d("InstantCamera camera scaleX = " + InstantCameraView.this.scaleX + " scaleY = " + InstantCameraView.this.scaleY);
            }
        }

        private void updateTextureBuffer() {
            updateScale();
            float f = (1.0f / InstantCameraView.this.scaleX) / 2.0f;
            float f2 = (1.0f / InstantCameraView.this.scaleY) / 2.0f;
            float f3 = 0.5f - f;
            float f4 = 0.5f - f2;
            float f5 = f + 0.5f;
            float f6 = f2 + 0.5f;
            float[] fArr = {f3, f4, f5, f4, f3, f6, f5, f6};
            System.arraycopy(fArr, 0, InstantCameraView.this.textureCoordsData, 0, 8);
            InstantCameraView.this.textureBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
            InstantCameraView.this.textureBuffer.put(fArr).position(0);
        }

        private void attachFrameListener(final int i) {
            SurfaceTexture surfaceTexture = this.cameraSurface[i];
            final int i2 = this.surfaceGeneration[i];
            surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                    this.f$0.lambda$attachFrameListener$1(i, i2, surfaceTexture2);
                }
            }, getHandler());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$attachFrameListener$1(int i, int i2, SurfaceTexture surfaceTexture) {
            if (this.running && this.cameraSurface[i] == surfaceTexture && this.surfaceGeneration[i] == i2) {
                InstantCameraView.this.cameraTextureAvailable = true;
                requestRender(i == 0, i == 1);
            }
        }

        private void fillFrameSnapshot(RoundVideoEncoder.FrameSnapshot frameSnapshot, int i, int i2) {
            SurfaceTexture surfaceTexture = this.cameraSurface[i];
            frameSnapshot.sourceTimestampNs = surfaceTexture.getTimestamp();
            frameSnapshot.arrivalTimeNs = System.nanoTime();
            frameSnapshot.cameraId = i2;
            frameSnapshot.surfaceIndex = i;
            frameSnapshot.textureId = InstantCameraView.this.cameraTexture[i];
            surfaceTexture.getTransformMatrix(frameSnapshot.stMatrix);
            System.arraycopy(InstantCameraView.this.mMVPMatrix, 0, frameSnapshot.mvpMatrix, 0, 16);
            System.arraycopy(InstantCameraView.this.textureCoordsData, 0, frameSnapshot.textureCoords, 0, 8);
            org.telegram.messenger.camera.Size size = InstantCameraView.this.previewSize[i];
            frameSnapshot.previewWidth = size != null ? size.getWidth() : 0;
            frameSnapshot.previewHeight = size != null ? size.getHeight() : 0;
        }

        private boolean initGL() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("InstantCamera start init gl");
            }
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.egl10 = egl10;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.eglDisplay = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m990e("InstantCamera eglGetDisplay failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                }
                finish();
                return false;
            }
            if (!this.egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m990e("InstantCamera eglInitialize failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                }
                finish();
                return false;
            }
            int[] iArr = new int[1];
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (!this.egl10.eglChooseConfig(this.eglDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 0, 12325, 0, 12326, 0, 12344}, eGLConfigArr, 1, iArr)) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m990e("InstantCamera eglChooseConfig failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                }
                finish();
                return false;
            }
            if (iArr[0] > 0) {
                EGLConfig eGLConfig = eGLConfigArr[0];
                EGLContext eGLContextEglCreateContext = this.egl10.eglCreateContext(this.eglDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                this.eglContext = eGLContextEglCreateContext;
                if (eGLContextEglCreateContext == null) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m990e("InstantCamera eglCreateContext failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                    }
                    finish();
                    return false;
                }
                if (this.surfaceTexture != null) {
                    EGLSurface eGLSurfaceEglCreateWindowSurface = this.egl10.eglCreateWindowSurface(this.eglDisplay, eGLConfig, this.surfaceTexture, null);
                    this.eglSurface = eGLSurfaceEglCreateWindowSurface;
                    if (eGLSurfaceEglCreateWindowSurface == null || eGLSurfaceEglCreateWindowSurface == EGL10.EGL_NO_SURFACE) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m990e("InstantCamera createWindowSurface failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                        }
                        finish();
                        return false;
                    }
                    if (!this.egl10.eglMakeCurrent(this.eglDisplay, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, this.eglContext)) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m990e("InstantCamera eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                        }
                        finish();
                        return false;
                    }
                    InstantCameraView.this.vertexBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
                    InstantCameraView.this.vertexBuffer.put(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f}).position(0);
                    updateTextureBuffer();
                    Matrix.setIdentityM(InstantCameraView.this.mSTMatrix, 0);
                    int iLoadShader = InstantCameraView.this.loadShader(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
                    int iLoadShader2 = InstantCameraView.this.loadShader(35632, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
                    if (iLoadShader != 0 && iLoadShader2 != 0) {
                        int iGlCreateProgram = GLES20.glCreateProgram();
                        this.drawProgram = iGlCreateProgram;
                        GLES20.glAttachShader(iGlCreateProgram, iLoadShader);
                        GLES20.glAttachShader(this.drawProgram, iLoadShader2);
                        GLES20.glLinkProgram(this.drawProgram);
                        int[] iArr2 = new int[1];
                        GLES20.glGetProgramiv(this.drawProgram, 35714, iArr2, 0);
                        if (iArr2[0] == 0) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m990e("InstantCamera failed link shader");
                            }
                            GLES20.glDeleteProgram(this.drawProgram);
                            this.drawProgram = 0;
                        } else {
                            this.positionHandle = GLES20.glGetAttribLocation(this.drawProgram, "aPosition");
                            this.textureHandle = GLES20.glGetAttribLocation(this.drawProgram, "aTextureCoord");
                            this.vertexMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uMVPMatrix");
                            this.textureMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uSTMatrix");
                        }
                        Matrix.setIdentityM(InstantCameraView.this.mMVPMatrix, 0);
                        GLES20.glGenTextures(2, InstantCameraView.this.cameraTexture, 0);
                        for (int i = 0; i < 2; i++) {
                            GLES20.glBindTexture(36197, InstantCameraView.this.cameraTexture[i]);
                            GLES20.glTexParameteri(36197, 10241, 9729);
                            GLES20.glTexParameteri(36197, 10240, 9729);
                            GLES20.glTexParameteri(36197, 10242, 33071);
                            GLES20.glTexParameteri(36197, 10243, 33071);
                            this.cameraSurface[i] = new SurfaceTexture(InstantCameraView.this.cameraTexture[i]);
                            attachFrameListener(i);
                            if (ExteraConfig.getCameraType() != CameraType.CAMERA_X || i == 0 || InstantCameraView.this.bothCameras) {
                                InstantCameraView.this.createCamera(i, this.cameraSurface[i]);
                            }
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m990e("InstantCamera gl initied");
                        }
                        return true;
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m990e("InstantCamera failed creating shader");
                    }
                    finish();
                    return false;
                }
                finish();
                return false;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m990e("InstantCamera eglConfig not initialized");
            }
            finish();
            return false;
        }

        public void reinitForNewCamera() {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(2), 0);
            }
        }

        public void finish() {
            EGLContext eGLContext;
            int[] iArr = this.surfaceGeneration;
            iArr[0] = iArr[0] + 1;
            iArr[1] = iArr[1] + 1;
            this.pendingRenderMask.set(0);
            if (this.cameraSurface != null) {
                for (int i = 0; i < 2; i++) {
                    SurfaceTexture surfaceTexture = this.cameraSurface[i];
                    if (surfaceTexture != null) {
                        surfaceTexture.release();
                        this.cameraSurface[i] = null;
                    }
                }
            }
            InstantCameraView.this.cameraTextureAvailable = false;
            if (this.eglSurface != null && (eGLContext = this.eglContext) != null) {
                if (!eGLContext.equals(this.egl10.eglGetCurrentContext()) || !this.eglSurface.equals(this.egl10.eglGetCurrentSurface(12377))) {
                    EGL10 egl10 = this.egl10;
                    EGLDisplay eGLDisplay = this.eglDisplay;
                    EGLSurface eGLSurface = this.eglSurface;
                    egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext);
                }
                if (InstantCameraView.this.cameraTexture != null && InstantCameraView.this.cameraTexture[0] != Integer.MIN_VALUE) {
                    GLES20.glDeleteTextures(1, InstantCameraView.this.cameraTexture, 0);
                    InstantCameraView.this.cameraTexture[0] = Integer.MIN_VALUE;
                }
                if (InstantCameraView.this.cameraTexture != null && InstantCameraView.this.cameraTexture[1] != Integer.MIN_VALUE) {
                    GLES20.glDeleteTextures(1, InstantCameraView.this.cameraTexture, 1);
                    InstantCameraView.this.cameraTexture[1] = Integer.MIN_VALUE;
                }
            }
            if (this.eglSurface != null) {
                EGL10 egl102 = this.egl10;
                EGLDisplay eGLDisplay2 = this.eglDisplay;
                EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
                egl102.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT);
                this.egl10.eglDestroySurface(this.eglDisplay, this.eglSurface);
                this.eglSurface = null;
            }
            EGLContext eGLContext2 = this.eglContext;
            if (eGLContext2 != null) {
                this.egl10.eglDestroyContext(this.eglDisplay, eGLContext2);
                this.eglContext = null;
            }
            EGLDisplay eGLDisplay3 = this.eglDisplay;
            if (eGLDisplay3 != null) {
                this.egl10.eglTerminate(eGLDisplay3);
                this.eglDisplay = null;
            }
        }

        public void setCurrentSession(CameraSession cameraSession) {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(3, cameraSession), 0);
            }
        }

        public void setCurrentSession(Camera2Session camera2Session) {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(3, camera2Session), 0);
            }
        }

        public void setOrientation() {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(5), 0);
            }
        }

        public void setCameraXPreviewSize(int i, int i2, int i3) {
            Handler handler;
            if (i < 0 || i >= InstantCameraView.this.previewSize.length || i2 <= 0 || i3 <= 0 || (handler = getHandler()) == null) {
                return;
            }
            sendMessage(handler.obtainMessage(6, i, 0, new org.telegram.messenger.camera.Size(i2, i3)), 0);
        }

        public void flipSurfaces() {
            Handler handler = getHandler();
            if (handler != null) {
                sendMessage(handler.obtainMessage(4), 0);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:70:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x019c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void onDraw(Integer num, boolean z, boolean z2) {
            boolean z3;
            int displayOrientation;
            if (this.initied) {
                Integer num2 = this.cameraId;
                if (num2 == null || num2.equals(num)) {
                    if (!this.eglContext.equals(this.egl10.eglGetCurrentContext()) || !this.eglSurface.equals(this.egl10.eglGetCurrentSurface(12377))) {
                        EGL10 egl10 = this.egl10;
                        EGLDisplay eGLDisplay = this.eglDisplay;
                        EGLSurface eGLSurface = this.eglSurface;
                        if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m990e("eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                                return;
                            }
                            return;
                        }
                    }
                    if (z) {
                        try {
                            this.cameraSurface[0].updateTexImage();
                        } catch (Throwable th) {
                            FileLog.m992e(th);
                            return;
                        }
                    }
                    if (z2) {
                        try {
                            this.cameraSurface[1].updateTexImage();
                        } catch (Throwable th2) {
                            FileLog.m992e(th2);
                            return;
                        }
                    }
                    boolean z4 = InstantCameraView.this.surfaceIndex == 0 ? z : z2;
                    CameraType cameraType = ExteraConfig.getCameraType();
                    CameraType cameraType2 = CameraType.CAMERA_X;
                    if (cameraType == cameraType2 && InstantCameraView.this.bothCameras && !z4) {
                        return;
                    }
                    if (this.recording) {
                        z3 = false;
                    } else {
                        if (InstantCameraView.this.videoEncoder == null) {
                            InstantCameraView.this.sentMedia = false;
                            InstantCameraView.this.videoConvertFirstWrite = true;
                            InstantCameraView.this.encoderFinishRequested = false;
                            InstantCameraView.this.encoderSend = 0;
                            InstantCameraView.this.encoderSendOptions = null;
                            InstantCameraView.this.keyframeThumbs.clear();
                            if (InstantCameraView.this.generateKeyframeThumbsQueue != null) {
                                InstantCameraView.this.generateKeyframeThumbsQueue.cleanupQueue();
                                InstantCameraView.this.generateKeyframeThumbsQueue.recycle();
                            }
                            InstantCameraView.this.generateKeyframeThumbsQueue = new DispatchQueue("keyframes_thumb_queue");
                            InstantCameraView instantCameraView = InstantCameraView.this;
                            instantCameraView.videoEncoder = new RoundVideoEncoder(new EncoderRenderer(), InstantCameraView.this.encoderCallback, InstantCameraView.this.isSecretChat);
                            InstantCameraView instantCameraView2 = InstantCameraView.this;
                            instantCameraView2.encoderFrameRate = instantCameraView2.resolveEncoderFrameRate();
                        }
                        if (InstantCameraView.this.videoEncoder.isStarted()) {
                            if (!InstantCameraView.this.cameraReady) {
                                InstantCameraView.this.cameraReady = true;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onDraw$2();
                                    }
                                });
                            }
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
                            }
                        });
                        InstantCameraView instantCameraView3 = InstantCameraView.this;
                        instantCameraView3.encoderFile = instantCameraView3.cameraFile;
                        InstantCameraView.this.videoEncoder.startRecording(InstantCameraView.this.cameraFile, EGL14.eglGetCurrentContext(), InstantCameraView.this.encoderFrameRate);
                        this.recording = true;
                        if (ExteraConfig.getCameraType() != cameraType2) {
                            Object obj = this.currentSession;
                            if (obj instanceof CameraSession) {
                                displayOrientation = ((CameraSession) obj).getCurrentOrientation();
                            } else {
                                displayOrientation = obj instanceof Camera2Session ? ((Camera2Session) obj).getCurrentOrientation() : 0;
                            }
                            if (displayOrientation != 90 || displayOrientation == 270) {
                                float f = InstantCameraView.this.scaleX;
                                InstantCameraView instantCameraView4 = InstantCameraView.this;
                                instantCameraView4.scaleX = instantCameraView4.scaleY;
                                InstantCameraView.this.scaleY = f;
                            }
                            this.recording = true;
                            InstantCameraView.this.updateFlash();
                        } else {
                            CameraXSession cameraXSession = InstantCameraView.this.cameraXSession;
                            if (cameraXSession != null) {
                                displayOrientation = cameraXSession.getDisplayOrientation();
                            }
                            if (displayOrientation != 90) {
                                float f2 = InstantCameraView.this.scaleX;
                                InstantCameraView instantCameraView42 = InstantCameraView.this;
                                instantCameraView42.scaleX = instantCameraView42.scaleY;
                                InstantCameraView.this.scaleY = f2;
                                this.recording = true;
                                InstantCameraView.this.updateFlash();
                            }
                        }
                    }
                    if (InstantCameraView.this.videoEncoder != null && ((InstantCameraView.this.surfaceIndex == 0 && z) || (InstantCameraView.this.surfaceIndex == 1 && z2))) {
                        fillFrameSnapshot(this.frameSnapshotScratch, InstantCameraView.this.surfaceIndex, InstantCameraView.this.bothCameras ? InstantCameraView.this.surfaceIndex : num.intValue());
                        InstantCameraView.this.videoEncoder.frameAvailable(this.frameSnapshotScratch);
                    }
                    this.cameraSurface[InstantCameraView.this.surfaceIndex].getTransformMatrix(InstantCameraView.this.mSTMatrix);
                    GLES20.glUseProgram(this.drawProgram);
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(36197, InstantCameraView.this.cameraTexture[InstantCameraView.this.surfaceIndex]);
                    GLES20.glVertexAttribPointer(this.positionHandle, 3, 5126, false, 12, (Buffer) InstantCameraView.this.vertexBuffer);
                    GLES20.glEnableVertexAttribArray(this.positionHandle);
                    GLES20.glVertexAttribPointer(this.textureHandle, 2, 5126, false, 8, (Buffer) InstantCameraView.this.textureBuffer);
                    GLES20.glEnableVertexAttribArray(this.textureHandle);
                    GLES20.glUniformMatrix4fv(this.textureMatrixHandle, 1, false, InstantCameraView.this.mSTMatrix, 0);
                    GLES20.glUniformMatrix4fv(this.vertexMatrixHandle, 1, false, InstantCameraView.this.mMVPMatrix, 0);
                    GLES20.glDrawArrays(5, 0, 4);
                    GLES20.glDisableVertexAttribArray(this.positionHandle);
                    GLES20.glDisableVertexAttribArray(this.textureHandle);
                    GLES20.glBindTexture(36197, 0);
                    GLES20.glUseProgram(0);
                    this.egl10.eglSwapBuffers(this.eglDisplay, this.eglSurface);
                    if (z3) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$CameraGLThread$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onDraw$4();
                            }
                        });
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$2() {
            InstantCameraView.this.textureOverlayView.animate().setDuration(120L).alpha(0.0f).setInterpolator(new DecelerateInterpolator()).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$4() {
            if (InstantCameraView.this.textureView == null) {
                return;
            }
            if (InstantCameraView.this.firstFrameThumb != null) {
                InstantCameraView.this.firstFrameThumb.recycle();
                InstantCameraView.this.firstFrameThumb = null;
            }
            InstantCameraView instantCameraView = InstantCameraView.this;
            instantCameraView.firstFrameThumb = instantCameraView.textureView.getBitmap();
        }

        @Override // org.telegram.messenger.DispatchQueue
        public void handleMessage(Message message) {
            int worldAngle;
            switch (message.what) {
                case 0:
                    int andSet = this.pendingRenderMask.getAndSet(0);
                    if (andSet != 0) {
                        onDraw(Integer.valueOf(message.arg1), (andSet & 1) != 0, (andSet & 2) != 0);
                        return;
                    }
                    return;
                case 1:
                    synchronized (this) {
                        finish();
                        break;
                    }
                    if (this.recording) {
                        Object obj = message.obj;
                        if ((!(obj instanceof SendOptions) || ((SendOptions) obj).ttl != -2) && InstantCameraView.this.videoEncoder != null) {
                            InstantCameraView instantCameraView = InstantCameraView.this;
                            int i = message.arg1;
                            Object obj2 = message.obj;
                            instantCameraView.requestStopRecording(i, obj2 instanceof SendOptions ? (SendOptions) obj2 : null);
                        }
                    }
                    Looper looperMyLooper = Looper.myLooper();
                    if (looperMyLooper != null) {
                        looperMyLooper.quitSafely();
                        return;
                    }
                    return;
                case 2:
                    EGL10 egl10 = this.egl10;
                    EGLDisplay eGLDisplay = this.eglDisplay;
                    EGLSurface eGLSurface = this.eglSurface;
                    if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("InstantCamera eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                            return;
                        }
                        return;
                    }
                    int[] iArr = this.surfaceGeneration;
                    iArr[0] = iArr[0] + 1;
                    Handler handler = getHandler();
                    if (handler != null) {
                        handler.removeMessages(0);
                    }
                    int andSet2 = this.pendingRenderMask.getAndSet(0);
                    SurfaceTexture surfaceTexture = this.cameraSurface[0];
                    if (surfaceTexture != null) {
                        surfaceTexture.getTransformMatrix(InstantCameraView.this.moldSTMatrix);
                        this.cameraSurface[0].setOnFrameAvailableListener(null);
                        this.cameraSurface[0].release();
                        InstantCameraView.this.oldCameraTexture[0] = InstantCameraView.this.cameraTexture[0];
                        InstantCameraView.this.cameraTextureAlpha = 0.0f;
                        InstantCameraView.this.cameraTexture[0] = 0;
                        InstantCameraView instantCameraView2 = InstantCameraView.this;
                        instantCameraView2.oldTextureTextureBuffer = instantCameraView2.textureBuffer.duplicate();
                        InstantCameraView instantCameraView3 = InstantCameraView.this;
                        instantCameraView3.oldTexturePreviewSize = instantCameraView3.previewSize[0];
                    }
                    this.cameraId = Integer.valueOf(this.cameraId.intValue() + 1);
                    InstantCameraView.this.cameraReady = false;
                    GLES20.glGenTextures(1, InstantCameraView.this.cameraTexture, 0);
                    GLES20.glBindTexture(36197, InstantCameraView.this.cameraTexture[0]);
                    GLES20.glTexParameteri(36197, 10241, 9729);
                    GLES20.glTexParameteri(36197, 10240, 9729);
                    GLES20.glTexParameteri(36197, 10242, 33071);
                    GLES20.glTexParameteri(36197, 10243, 33071);
                    this.cameraSurface[0] = new SurfaceTexture(InstantCameraView.this.cameraTexture[0]);
                    attachFrameListener(0);
                    InstantCameraView.this.createCamera(0, this.cameraSurface[0]);
                    updateTextureBuffer();
                    if ((andSet2 & 2) == 0 || this.cameraSurface[1] == null) {
                        return;
                    }
                    requestRender(false, true);
                    return;
                case 3:
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("InstantCamera set gl renderer session");
                    }
                    Object obj3 = message.obj;
                    Object obj4 = this.currentSession;
                    if (obj4 == obj3) {
                        if (obj4 instanceof CameraSession) {
                            worldAngle = ((CameraSession) obj4).getWorldAngle();
                        } else {
                            worldAngle = obj4 instanceof Camera2Session ? ((Camera2Session) obj4).getWorldAngle() : 0;
                        }
                        Matrix.setIdentityM(InstantCameraView.this.mMVPMatrix, 0);
                        if (worldAngle != 0) {
                            Matrix.rotateM(InstantCameraView.this.mMVPMatrix, 0, worldAngle, 0.0f, 0.0f, 1.0f);
                            return;
                        }
                        return;
                    }
                    this.currentSession = obj3;
                    return;
                case 4:
                    InstantCameraView instantCameraView4 = InstantCameraView.this;
                    instantCameraView4.surfaceIndex = 1 - instantCameraView4.surfaceIndex;
                    updateTextureBuffer();
                    requestRender(true, true);
                    return;
                case 5:
                    CameraXSession cameraXSession = InstantCameraView.this.cameraXSession;
                    int displayOrientation = cameraXSession != null ? cameraXSession.getDisplayOrientation() : 0;
                    Matrix.setIdentityM(InstantCameraView.this.mMVPMatrix, 0);
                    if (displayOrientation != 0) {
                        Matrix.rotateM(InstantCameraView.this.mMVPMatrix, 0, displayOrientation, 0.0f, 0.0f, 1.0f);
                        return;
                    }
                    return;
                case 6:
                    int i2 = message.arg1;
                    InstantCameraView.this.previewSize[i2] = (org.telegram.messenger.camera.Size) message.obj;
                    if (i2 == InstantCameraView.this.surfaceIndex) {
                        updateTextureBuffer();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        public void shutdown(int i, boolean z, int i2, int i3, int i4, long j) {
            Handler handler = getHandler();
            if (handler != null) {
                synchronized (this) {
                    try {
                        this.running = false;
                        for (SurfaceTexture surfaceTexture : this.cameraSurface) {
                            if (surfaceTexture != null) {
                                surfaceTexture.setOnFrameAvailableListener(null);
                            }
                        }
                        handler.removeMessages(0);
                        this.pendingRenderMask.set(0);
                        sendMessage(handler.obtainMessage(1, i, 0, new SendOptions(z, i2, i3, i4, j, 0L)), 0);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public void requestRender(boolean z, boolean z2) {
            Handler handler;
            int i;
            int i2 = (z ? 1 : 0) | (z2 ? 2 : 0);
            if (i2 == 0 || (handler = getHandler()) == null) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.running) {
                        do {
                            i = this.pendingRenderMask.get();
                        } while (!this.pendingRenderMask.compareAndSet(i, i | i2));
                        if (i == 0) {
                            sendMessage(handler.obtainMessage(0, this.cameraId.intValue(), 0), 0);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static class SendOptions {
        long effectId;
        boolean notify;
        int scheduleDate;
        int scheduleRepeatPeriod;
        long stars;
        int ttl;

        public SendOptions(boolean z, int i, int i2, int i3, long j, long j2) {
            this.notify = z;
            this.scheduleDate = i;
            this.scheduleRepeatPeriod = i2;
            this.ttl = i3;
            this.effectId = j;
            this.stars = j2;
        }
    }

    public static class AudioBufferInfo {
        public boolean last;
        public int lastWroteBuffer;
        public int results;
        public ByteBuffer[] buffer = new ByteBuffer[10];
        public long[] offset = new long[10];
        public int[] read = new int[10];

        public AudioBufferInfo() {
            for (int i = 0; i < 10; i++) {
                this.buffer[i] = ByteBuffer.allocateDirect(2048);
                this.buffer[i].order(ByteOrder.nativeOrder());
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.InstantCameraView$12, reason: invalid class name */
    public class AnonymousClass12 implements RoundVideoEncoder.Callback {
        public AnonymousClass12() {
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Callback
        public void onRecordingStarted(boolean z) {
            if (InstantCameraView.this.cancelled) {
                return;
            }
            try {
                InstantCameraView.this.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.lockOrientation(InstantCameraView.this.delegate.getParentActivity());
            InstantCameraView instantCameraView = InstantCameraView.this;
            instantCameraView.recordPlusTime = z ? instantCameraView.recordedTime : 0L;
            InstantCameraView.this.recordStartTime = System.currentTimeMillis();
            InstantCameraView.this.recording = true;
            InstantCameraView.this.updateFlash();
            InstantCameraView.this.invalidate();
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStarted, Integer.valueOf(InstantCameraView.this.recordingGuid), Boolean.FALSE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAudioAmplitude$0(double d) {
            NotificationCenter.getInstance(InstantCameraView.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordProgressChanged, Integer.valueOf(InstantCameraView.this.recordingGuid), Double.valueOf(d));
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Callback
        public void onAudioAmplitude(final double d) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$12$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAudioAmplitude$0(d);
                }
            });
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Callback
        public void onWriteData(long j) {
            File file = InstantCameraView.this.encoderFile;
            if (file != null) {
                InstantCameraView.this.didWriteData(file, j, false);
            }
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Callback
        public void onPaused(File file) {
            InstantCameraView.this.handleEncoderPaused(file);
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Callback
        public void onFinished(RoundVideoEncoder.FinishReason finishReason) {
            InstantCameraView.this.handleEncoderFinished(finishReason);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestStopRecording(int i, final SendOptions sendOptions) {
        RoundVideoEncoder roundVideoEncoder = this.videoEncoder;
        if (roundVideoEncoder == null) {
            return;
        }
        if (!this.encoderFinishRequested) {
            this.encoderFinishRequested = true;
            this.encoderSend = i;
            this.encoderSendOptions = sendOptions;
            if (i == 1) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$requestStopRecording$18(sendOptions);
                    }
                });
            }
        }
        if (i == 0) {
            roundVideoEncoder.cancel();
        } else {
            roundVideoEncoder.stop();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendMediaBeforeDone, reason: merged with bridge method [inline-methods] */
    public void lambda$requestStopRecording$18(SendOptions sendOptions) {
        File file = this.encoderFile;
        if (this.sentMedia || file == null) {
            return;
        }
        VideoEditedInfo videoEditedInfo = this.videoEditedInfo;
        if ((videoEditedInfo == null || !videoEditedInfo.needConvert()) && !this.delegate.isInScheduleMode()) {
            this.sentMedia = true;
            VideoEditedInfo videoEditedInfo2 = new VideoEditedInfo();
            this.videoEditedInfo = videoEditedInfo2;
            videoEditedInfo2.startTime = -1L;
            videoEditedInfo2.endTime = -1L;
            videoEditedInfo2.estimatedSize = Math.max(1L, this.size);
            VideoEditedInfo videoEditedInfo3 = this.videoEditedInfo;
            videoEditedInfo3.roundVideo = true;
            videoEditedInfo3.file = this.file;
            videoEditedInfo3.encryptedFile = this.encryptedFile;
            videoEditedInfo3.key = this.key;
            videoEditedInfo3.iv = this.iv;
            videoEditedInfo3.framerate = this.encoderFrameRate;
            int roundVideoResolution = SystemUtils.getRoundVideoResolution();
            videoEditedInfo3.originalWidth = roundVideoResolution;
            videoEditedInfo3.resultWidth = roundVideoResolution;
            VideoEditedInfo videoEditedInfo4 = this.videoEditedInfo;
            int roundVideoResolution2 = SystemUtils.getRoundVideoResolution();
            videoEditedInfo4.originalHeight = roundVideoResolution2;
            videoEditedInfo4.resultHeight = roundVideoResolution2;
            this.videoEditedInfo.originalPath = file.getAbsolutePath();
            VideoEditedInfo videoEditedInfo5 = this.videoEditedInfo;
            videoEditedInfo5.notReadyYet = true;
            videoEditedInfo5.thumb = this.firstFrameThumb;
            videoEditedInfo5.estimatedDuration = this.recordedTime;
            this.firstFrameThumb = null;
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file.getAbsolutePath(), 0, true, 0, 0, 0L);
            if (sendOptions != null) {
                photoEntry.ttl = sendOptions.ttl;
                photoEntry.effectId = sendOptions.effectId;
            }
            this.delegate.sendMedia(photoEntry, this.videoEditedInfo, sendOptions == null || sendOptions.notify, sendOptions != null ? sendOptions.scheduleDate : 0, sendOptions != null ? sendOptions.scheduleRepeatPeriod : 0, false, sendOptions != null ? sendOptions.stars : 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEncoderPaused(File file) {
        if (file == null || this.cancelled) {
            return;
        }
        VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
        this.videoEditedInfo = videoEditedInfo;
        videoEditedInfo.roundVideo = true;
        videoEditedInfo.startTime = -1L;
        videoEditedInfo.endTime = -1L;
        videoEditedInfo.file = this.file;
        videoEditedInfo.encryptedFile = this.encryptedFile;
        videoEditedInfo.key = this.key;
        videoEditedInfo.iv = this.iv;
        videoEditedInfo.estimatedSize = Math.max(1L, this.size);
        VideoEditedInfo videoEditedInfo2 = this.videoEditedInfo;
        videoEditedInfo2.framerate = this.encoderFrameRate;
        int roundVideoResolution = SystemUtils.getRoundVideoResolution();
        videoEditedInfo2.originalWidth = roundVideoResolution;
        videoEditedInfo2.resultWidth = roundVideoResolution;
        VideoEditedInfo videoEditedInfo3 = this.videoEditedInfo;
        int roundVideoResolution2 = SystemUtils.getRoundVideoResolution();
        videoEditedInfo3.originalHeight = roundVideoResolution2;
        videoEditedInfo3.resultHeight = roundVideoResolution2;
        this.videoEditedInfo.originalPath = file.getAbsolutePath();
        setupVideoPlayer(file);
        this.videoEditedInfo.estimatedDuration = this.recordedTime;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(this.recordingGuid), this.videoEditedInfo, file.getAbsolutePath(), this.keyframeThumbs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEncoderFinished(RoundVideoEncoder.FinishReason finishReason) {
        long j;
        int i;
        DispatchQueue dispatchQueue;
        this.videoEncoder = null;
        int i2 = finishReason == RoundVideoEncoder.FinishReason.COMPLETED ? this.encoderSend : 0;
        final SendOptions sendOptions = this.encoderSendOptions;
        this.encoderSendOptions = null;
        File file = this.previewFile;
        if (file != null) {
            file.delete();
            this.previewFile = null;
        }
        if (i2 != 2 && (dispatchQueue = this.generateKeyframeThumbsQueue) != null) {
            dispatchQueue.cleanupQueue();
            this.generateKeyframeThumbsQueue.recycle();
            this.generateKeyframeThumbsQueue = null;
        }
        FileLog.m989d("InstantCamera encoder finished send " + i2);
        final File file2 = this.encoderFile;
        if (i2 == 0 || file2 == null) {
            if (file2 != null) {
                FileLoader.getInstance(this.currentAccount).cancelFileUpload(file2.getAbsolutePath(), false);
            }
            MediaController.getInstance().requestRecordAudioFocus(false);
            if (finishReason != RoundVideoEncoder.FinishReason.FAILED || this.cancelled) {
                return;
            }
            handleEncoderFailure();
            return;
        }
        if (!this.sentMedia) {
            this.sentMedia = true;
            if (this.videoEditedInfo == null) {
                VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
                this.videoEditedInfo = videoEditedInfo;
                videoEditedInfo.startTime = -1L;
                videoEditedInfo.endTime = -1L;
            }
            if (this.videoEditedInfo.needConvert()) {
                this.file = null;
                this.encryptedFile = null;
                this.key = null;
                this.iv = null;
                VideoEditedInfo videoEditedInfo2 = this.videoEditedInfo;
                long j2 = videoEditedInfo2.estimatedDuration;
                double d = j2;
                j = 0;
                long j3 = videoEditedInfo2.startTime;
                if (j3 < 0) {
                    j3 = 0;
                }
                i = i2;
                long j4 = videoEditedInfo2.endTime;
                if (j4 >= 0) {
                    j2 = j4;
                }
                long j5 = j2 - j3;
                videoEditedInfo2.estimatedDuration = j5;
                videoEditedInfo2.estimatedSize = Math.max(1L, (long) (this.size * (j5 / d)));
                this.videoEditedInfo.bitrate = SystemUtils.getRoundVideoBitrate() * 1024;
                VideoEditedInfo videoEditedInfo3 = this.videoEditedInfo;
                long j6 = videoEditedInfo3.startTime;
                if (j6 > 0) {
                    videoEditedInfo3.startTime = j6 * 1000;
                }
                long j7 = videoEditedInfo3.endTime;
                if (j7 > 0) {
                    videoEditedInfo3.endTime = j7 * 1000;
                }
                FileLoader.getInstance(this.currentAccount).cancelFileUpload(file2.getAbsolutePath(), false);
            } else {
                i = i2;
                j = 0;
                this.videoEditedInfo.estimatedSize = Math.max(1L, this.size);
            }
            VideoEditedInfo videoEditedInfo4 = this.videoEditedInfo;
            videoEditedInfo4.roundVideo = true;
            videoEditedInfo4.file = this.file;
            videoEditedInfo4.encryptedFile = this.encryptedFile;
            videoEditedInfo4.key = this.key;
            videoEditedInfo4.iv = this.iv;
            videoEditedInfo4.framerate = this.encoderFrameRate;
            int roundVideoResolution = SystemUtils.getRoundVideoResolution();
            videoEditedInfo4.originalWidth = roundVideoResolution;
            videoEditedInfo4.resultWidth = roundVideoResolution;
            VideoEditedInfo videoEditedInfo5 = this.videoEditedInfo;
            int roundVideoResolution2 = SystemUtils.getRoundVideoResolution();
            videoEditedInfo5.originalHeight = roundVideoResolution2;
            videoEditedInfo5.resultHeight = roundVideoResolution2;
            this.videoEditedInfo.originalPath = file2.getAbsolutePath();
            final VideoEditedInfo videoEditedInfo6 = this.videoEditedInfo;
            if (i == 1) {
                if (this.delegate.isInScheduleMode()) {
                    AlertsCreator.createScheduleDatePickerDialog(this.delegate.getParentActivity(), this.delegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda0
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i3, int i4) {
                            this.f$0.lambda$handleEncoderFinished$20(file2, sendOptions, videoEditedInfo6, z, i3, i4);
                        }
                    }, new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$handleEncoderFinished$21();
                        }
                    }, this.resourcesProvider);
                } else {
                    MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file2.getAbsolutePath(), 0, true, 0, 0, 0L);
                    if (sendOptions != null) {
                        photoEntry.ttl = sendOptions.ttl;
                        photoEntry.effectId = sendOptions.effectId;
                    }
                    this.delegate.sendMedia(photoEntry, videoEditedInfo6, sendOptions == null || sendOptions.notify, sendOptions != null ? sendOptions.scheduleDate : 0, sendOptions != null ? sendOptions.scheduleRepeatPeriod : 0, false, sendOptions != null ? sendOptions.stars : j);
                }
                this.videoEditedInfo = null;
            } else {
                setupVideoPlayer(file2);
                videoEditedInfo6.estimatedDuration = this.recordedTime;
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(this.recordingGuid), videoEditedInfo6, file2.getAbsolutePath(), this.keyframeThumbs);
            }
        } else {
            j = 0;
            VideoEditedInfo videoEditedInfo7 = this.videoEditedInfo;
            if (videoEditedInfo7 != null) {
                videoEditedInfo7.notReadyYet = false;
            }
        }
        didWriteData(file2, j, true);
        MediaController.getInstance().requestRecordAudioFocus(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleEncoderFinished$20(File file, SendOptions sendOptions, VideoEditedInfo videoEditedInfo, boolean z, int i, int i2) {
        MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file.getAbsolutePath(), 0, true, 0, 0, 0L);
        if (sendOptions != null) {
            photoEntry.ttl = sendOptions.ttl;
            photoEntry.effectId = sendOptions.effectId;
        }
        this.delegate.sendMedia(photoEntry, videoEditedInfo, z || sendOptions == null || sendOptions.notify, i != 0 ? i : sendOptions != null ? sendOptions.scheduleDate : 0, i2 != 0 ? i2 : sendOptions != null ? sendOptions.scheduleRepeatPeriod : 0, false, sendOptions != null ? sendOptions.stars : 0L);
        startAnimation(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleEncoderFinished$21() {
        startAnimation(false, false);
    }

    private void handleEncoderFailure() {
        boolean z = this.recording || this.cameraThread != null;
        this.cancelled = true;
        this.recording = false;
        this.flashing = false;
        updateFlash();
        stopProgressTimer();
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        }
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStopped, Integer.valueOf(this.recordingGuid), 6);
        }
        CameraGLThread cameraGLThread = this.cameraThread;
        if (cameraGLThread != null) {
            cameraGLThread.shutdown(0, true, 0, 0, 0, 0L);
            this.cameraThread = null;
        }
        File file = this.cameraFile;
        if (file != null) {
            file.delete();
            AutoDeleteMediaTask.unlockFile(this.cameraFile);
            this.cameraFile = null;
        }
        this.encoderFile = null;
        startAnimation(false, false);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void didWriteData(File file, long j, boolean z) {
        boolean z2 = this.videoConvertFirstWrite;
        int i = this.currentAccount;
        if (z2) {
            FileLoader.getInstance(i).uploadFile(file.toString(), this.isSecretChat, false, 1L, 33554432, false);
            this.videoConvertFirstWrite = false;
            if (z) {
                FileLoader.getInstance(this.currentAccount).checkUploadNewDataAvailable(file.toString(), this.isSecretChat, j, z ? file.length() : 0L);
                return;
            }
            return;
        }
        FileLoader.getInstance(i).checkUploadNewDataAvailable(file.toString(), this.isSecretChat, j, z ? file.length() : 0L);
    }

    private void setupVideoPlayer(File file) {
        VideoPlayer videoPlayer = new VideoPlayer();
        this.videoPlayer = videoPlayer;
        videoPlayer.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Components.InstantCameraView.13
            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onRenderedFirstFrame() {
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onStateChanged(boolean z, int i) {
                if (InstantCameraView.this.videoPlayer != null && InstantCameraView.this.videoPlayer.isPlaying() && i == 4 && InstantCameraView.this.videoEditedInfo != null) {
                    InstantCameraView.this.videoPlayer.seekTo(InstantCameraView.this.videoEditedInfo.startTime > 0 ? InstantCameraView.this.videoEditedInfo.startTime : 0L);
                }
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onError(VideoPlayer videoPlayer2, Exception exc) {
                FileLog.m992e(exc);
            }
        });
        releaseCameraXSession();
        this.videoPlayer.setTextureView(this.textureView);
        this.videoPlayer.preparePlayer(Uri.fromFile(file), "other");
        this.videoPlayer.play();
        this.videoPlayer.setMute(true);
        startProgressTimer();
        AnimatorSet animatorSet = new AnimatorSet();
        Property property = View.ALPHA;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.buttonsLayout, (Property<LinearLayout, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.zoomSlider, InstantCameraZoomSlider.OPEN_ALPHA, 0.0f), ObjectAnimator.ofInt(this.paint, AnimationProperties.PAINT_ALPHA, 0), ObjectAnimator.ofFloat(this.muteImageView, (Property<ImageView, Float>) property, 1.0f));
        animatorSet.setDuration(180L);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.start();
    }

    public class GenerateKeyframeThumbTask implements Runnable {
        private final AtomicBoolean inFlight;

        public GenerateKeyframeThumbTask(AtomicBoolean atomicBoolean) {
            this.inFlight = atomicBoolean;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TextureView textureView = InstantCameraView.this.textureView;
                if (textureView != null) {
                    try {
                        final Bitmap bitmap = textureView.getBitmap(AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f));
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$GenerateKeyframeThumbTask$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$run$0(bitmap);
                            }
                        });
                    } catch (Exception e) {
                        FileLog.m992e(e);
                    }
                }
            } finally {
                this.inFlight.set(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Bitmap bitmap) {
            if ((bitmap == null || bitmap.getPixel(0, 0) == 0) && InstantCameraView.this.keyframeThumbs.size() > 1) {
                InstantCameraView.this.keyframeThumbs.add((Bitmap) InstantCameraView.this.keyframeThumbs.get(InstantCameraView.this.keyframeThumbs.size() - 1));
            } else {
                InstantCameraView.this.keyframeThumbs.add(bitmap);
            }
        }
    }

    public class EncoderRenderer implements RoundVideoEncoder.Renderer {
        private int alphaHandle;
        private boolean blendEnabled;
        private int drawProgram;
        private boolean firstThumbPending;
        private final FloatBuffer frameTextureBuffer;
        private long nextThumbActiveTimeNs;
        private InstantCameraVideoEncoderOverlayHelper overlayHelper;
        private int positionHandle;
        private int previewSizeHandle;
        private int resolutionHandle;
        private int texelSizeHandle;
        private int textureHandle;
        private int textureMatrixHandle;
        private long thumbActiveTimeNs;
        private final AtomicBoolean thumbTaskInFlight;
        private int vertexMatrixHandle;
        private int videoHeight;
        private int videoWidth;

        private EncoderRenderer() {
            this.frameTextureBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
            this.firstThumbPending = true;
            this.thumbTaskInFlight = new AtomicBoolean();
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Renderer
        public void onEncoderSurfaceCreated(int i, int i2) {
            String strCreateFragmentShaderV2;
            this.videoWidth = i;
            this.videoHeight = i2;
            this.blendEnabled = false;
            GLES20.glBlendFunc(770, 771);
            InstantCameraVideoEncoderOverlayHelper instantCameraVideoEncoderOverlayHelper = this.overlayHelper;
            if (instantCameraVideoEncoderOverlayHelper != null) {
                instantCameraVideoEncoderOverlayHelper.destroy();
            }
            this.overlayHelper = new InstantCameraVideoEncoderOverlayHelper(this.videoWidth, this.videoHeight);
            int iLoadShader = InstantCameraView.this.loadShader(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
            InstantCameraView instantCameraView = InstantCameraView.this;
            if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
                strCreateFragmentShaderV2 = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float alpha;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec4 color = texture2D(sTexture, vTextureCoord);\n   gl_FragColor = vec4(color.rgb * alpha, alpha);\n}\n";
            } else {
                InstantCameraView instantCameraView2 = InstantCameraView.this;
                strCreateFragmentShaderV2 = instantCameraView2.createFragmentShaderV2(instantCameraView2.previewSize[0]);
            }
            int iLoadShader2 = instantCameraView.loadShader(35632, strCreateFragmentShaderV2);
            if (iLoadShader == 0 || iLoadShader2 == 0) {
                return;
            }
            int iGlCreateProgram = GLES20.glCreateProgram();
            this.drawProgram = iGlCreateProgram;
            GLES20.glAttachShader(iGlCreateProgram, iLoadShader);
            GLES20.glAttachShader(this.drawProgram, iLoadShader2);
            GLES20.glLinkProgram(this.drawProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(this.drawProgram, 35714, iArr, 0);
            int i3 = iArr[0];
            int i4 = this.drawProgram;
            if (i3 == 0) {
                GLES20.glDeleteProgram(i4);
                this.drawProgram = 0;
                return;
            }
            this.positionHandle = GLES20.glGetAttribLocation(i4, "aPosition");
            this.textureHandle = GLES20.glGetAttribLocation(this.drawProgram, "aTextureCoord");
            this.previewSizeHandle = GLES20.glGetUniformLocation(this.drawProgram, "preview");
            this.resolutionHandle = GLES20.glGetUniformLocation(this.drawProgram, "resolution");
            this.alphaHandle = GLES20.glGetUniformLocation(this.drawProgram, "alpha");
            this.vertexMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uMVPMatrix");
            this.textureMatrixHandle = GLES20.glGetUniformLocation(this.drawProgram, "uSTMatrix");
            this.texelSizeHandle = GLES20.glGetUniformLocation(this.drawProgram, "texelSize");
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Renderer
        public boolean onDrawEncoderFrame(long j, RoundVideoEncoder.FrameSnapshot frameSnapshot) {
            int i;
            if (!InstantCameraView.this.cameraTextureAvailable || this.drawProgram == 0) {
                return false;
            }
            FloatBuffer floatBuffer = InstantCameraView.this.vertexBuffer;
            FloatBuffer floatBuffer2 = InstantCameraView.this.oldTextureTextureBuffer;
            if (floatBuffer == null) {
                FileLog.m989d("InstantCamera encoder skip frame, no vertex buffer");
                return false;
            }
            this.frameTextureBuffer.clear();
            this.frameTextureBuffer.put(frameSnapshot.textureCoords);
            this.frameTextureBuffer.position(0);
            InstantCameraVideoEncoderOverlayHelper instantCameraVideoEncoderOverlayHelper = this.overlayHelper;
            if (instantCameraVideoEncoderOverlayHelper != null) {
                instantCameraVideoEncoderOverlayHelper.bind();
            }
            GLES20.glUseProgram(this.drawProgram);
            GLES20.glActiveTexture(33984);
            GLES20.glVertexAttribPointer(this.positionHandle, 3, 5126, false, 12, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.positionHandle);
            GLES20.glVertexAttribPointer(this.textureHandle, 2, 5126, false, 8, (Buffer) this.frameTextureBuffer);
            GLES20.glEnableVertexAttribArray(this.textureHandle);
            GLES20.glUniformMatrix4fv(this.vertexMatrixHandle, 1, false, frameSnapshot.mvpMatrix, 0);
            GLES20.glUniform2f(this.resolutionHandle, this.videoWidth, this.videoHeight);
            if (InstantCameraView.this.oldCameraTexture[0] != 0 && floatBuffer2 != null && !InstantCameraView.this.bothCameras) {
                if (!this.blendEnabled) {
                    GLES20.glEnable(3042);
                    this.blendEnabled = true;
                }
                if (InstantCameraView.this.oldTexturePreviewSize != null) {
                    GLES20.glUniform2f(this.previewSizeHandle, InstantCameraView.this.oldTexturePreviewSize.getWidth(), InstantCameraView.this.oldTexturePreviewSize.getHeight());
                }
                GLES20.glVertexAttribPointer(this.textureHandle, 2, 5126, false, 8, (Buffer) floatBuffer2);
                GLES20.glUniformMatrix4fv(this.textureMatrixHandle, 1, false, InstantCameraView.this.moldSTMatrix, 0);
                GLES20.glUniform1f(this.alphaHandle, 1.0f);
                GLES20.glBindTexture(36197, InstantCameraView.this.oldCameraTexture[0]);
                GLES20.glDrawArrays(5, 0, 4);
            }
            int i2 = frameSnapshot.previewWidth;
            if (i2 > 0 && (i = frameSnapshot.previewHeight) > 0) {
                GLES20.glUniform2f(this.previewSizeHandle, i2, i);
                GLES20.glUniform2f(this.texelSizeHandle, (1.0f / frameSnapshot.previewWidth) / 2.0f, (1.0f / frameSnapshot.previewHeight) / 2.0f);
            }
            int i3 = frameSnapshot.textureId;
            if (i3 != Integer.MIN_VALUE) {
                GLES20.glUniformMatrix4fv(this.textureMatrixHandle, 1, false, frameSnapshot.stMatrix, 0);
                GLES20.glUniform1f(this.alphaHandle, InstantCameraView.this.cameraTextureAlpha);
                GLES20.glBindTexture(36197, i3);
                GLES20.glDrawArrays(5, 0, 4);
            }
            GLES20.glDisableVertexAttribArray(this.positionHandle);
            GLES20.glDisableVertexAttribArray(this.textureHandle);
            GLES20.glBindTexture(36197, 0);
            GLES20.glUseProgram(0);
            InstantCameraVideoEncoderOverlayHelper instantCameraVideoEncoderOverlayHelper2 = this.overlayHelper;
            if (instantCameraVideoEncoderOverlayHelper2 != null) {
                instantCameraVideoEncoderOverlayHelper2.render(j);
                if (this.blendEnabled) {
                    GLES20.glEnable(3042);
                }
            }
            this.thumbActiveTimeNs += j;
            maybeScheduleKeyframeThumb();
            if (InstantCameraView.this.oldCameraTexture[0] != 0 && InstantCameraView.this.cameraTextureAlpha < 1.0f && !InstantCameraView.this.bothCameras) {
                InstantCameraView.this.cameraTextureAlpha += j / 2.0E8f;
                if (InstantCameraView.this.cameraTextureAlpha > 1.0f) {
                    GLES20.glDisable(3042);
                    this.blendEnabled = false;
                    InstantCameraView.this.cameraTextureAlpha = 1.0f;
                    GLES20.glDeleteTextures(1, InstantCameraView.this.oldCameraTexture, 0);
                    InstantCameraView.this.oldCameraTexture[0] = 0;
                    if (!InstantCameraView.this.cameraReady) {
                        InstantCameraView.this.cameraReady = true;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$EncoderRenderer$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onDrawEncoderFrame$0();
                            }
                        });
                    }
                }
            } else if (!InstantCameraView.this.cameraReady) {
                InstantCameraView.this.cameraReady = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InstantCameraView$EncoderRenderer$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onDrawEncoderFrame$1();
                    }
                });
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDrawEncoderFrame$0() {
            InstantCameraView.this.textureOverlayView.animate().setDuration(120L).alpha(0.0f).setInterpolator(new DecelerateInterpolator()).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDrawEncoderFrame$1() {
            InstantCameraView.this.textureOverlayView.animate().setDuration(120L).alpha(0.0f).setInterpolator(new DecelerateInterpolator()).start();
        }

        @Override // com.exteragram.messenger.camera.RoundVideoEncoder.Renderer
        public void onEncoderSurfaceDestroyed() {
            InstantCameraVideoEncoderOverlayHelper instantCameraVideoEncoderOverlayHelper = this.overlayHelper;
            if (instantCameraVideoEncoderOverlayHelper != null) {
                instantCameraVideoEncoderOverlayHelper.destroy();
                this.overlayHelper = null;
            }
            int i = this.drawProgram;
            if (i != 0) {
                GLES20.glDeleteProgram(i);
                this.drawProgram = 0;
            }
        }

        private void maybeScheduleKeyframeThumb() {
            if (InstantCameraView.this.generateKeyframeThumbsQueue == null || SharedConfig.getDevicePerformanceClass() != 2) {
                return;
            }
            if ((this.firstThumbPending || this.thumbActiveTimeNs >= this.nextThumbActiveTimeNs) && this.thumbTaskInFlight.compareAndSet(false, true)) {
                this.firstThumbPending = false;
                this.nextThumbActiveTimeNs = this.thumbActiveTimeNs + 1100000000;
                InstantCameraView.this.generateKeyframeThumbsQueue.postRunnable(InstantCameraView.this.new GenerateKeyframeThumbTask(this.thumbTaskInFlight));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String createFragmentShaderV2(org.telegram.messenger.camera.Size size) {
        if (SharedConfig.deviceIsLow() || !allowBigSizeCamera()) {
            return "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float alpha;\nuniform vec2 preview;\nuniform vec2 resolution;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec4 textColor = texture2D(sTexture, vTextureCoord);\n   gl_FragColor = vec4(textColor.rgb * alpha, alpha);\n}\n";
        }
        if (size != null && Math.max(size.getHeight(), size.getWidth()) * 0.7f < MessagesController.getInstance(this.currentAccount).roundVideoSize) {
            return "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float alpha;\nuniform vec2 preview;\nuniform vec2 resolution;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec4 textColor = texture2D(sTexture, vTextureCoord);\n   gl_FragColor = vec4(textColor.rgb * alpha, alpha);\n}\n";
        }
        return "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform vec2 resolution;\nuniform vec2 preview;\nuniform float alpha;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec2 c_textureSize = preview;\n   vec2 c_onePixel = (1.0 / c_textureSize);\n   vec2 uv = vTextureCoord;\n   vec2 pixel = uv * c_textureSize + 0.5;\n   vec2 frac = fract(pixel);\n   pixel = (floor(pixel) / c_textureSize) - vec2(c_onePixel);\n   vec4 tl = texture2D(sTexture, pixel + vec2(0.0         , 0.0));\n   vec4 tr = texture2D(sTexture, pixel + vec2(c_onePixel.x, 0.0));\n   vec4 bl = texture2D(sTexture, pixel + vec2(0.0         , c_onePixel.y));\n   vec4 br = texture2D(sTexture, pixel + vec2(c_onePixel.x, c_onePixel.y));\n   vec4 x1 = mix(tl, tr, frac.x);\n   vec4 x2 = mix(bl, br, frac.x);\n   gl_FragColor = mix(x1, x2, frac.y) * alpha;\n}\n";
    }

    public class InstantViewCameraContainer extends InstantCameraViewBase.InstantViewCameraContainer {
        float imageProgress;
        ImageReceiver imageReceiver;

        public InstantViewCameraContainer(Context context) {
            super(context);
            InstantCameraView.this.setWillNotDraw(false);
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
            float f = this.imageProgress;
            if (f != 1.0f) {
                float f2 = f + 0.064f;
                this.imageProgress = f2;
                if (f2 > 1.0f) {
                    this.imageProgress = 1.0f;
                }
                invalidate();
            }
            if (this.imageReceiver != null) {
                canvas.save();
                if (this.imageReceiver.getImageWidth() != InstantCameraView.this.textureViewSize) {
                    float imageWidth = InstantCameraView.this.textureViewSize / this.imageReceiver.getImageWidth();
                    canvas.scale(imageWidth, imageWidth);
                }
                canvas.translate(-this.imageReceiver.getImageX(), -this.imageReceiver.getImageY());
                float alpha = this.imageReceiver.getAlpha();
                this.imageReceiver.setAlpha(this.imageProgress);
                this.imageReceiver.draw(canvas);
                this.imageReceiver.setAlpha(alpha);
                canvas.restore();
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Camera2Session camera2Session;
        VideoPlayer videoPlayer;
        if (motionEvent.getAction() == 0 && motionEvent.getY() > getMeasuredHeight() - getPaddingBottom()) {
            return false;
        }
        if (motionEvent.getAction() == 0 && this.delegate != null && (videoPlayer = this.videoPlayer) != null) {
            boolean zIsMuted = videoPlayer.isMuted();
            this.videoPlayer.setMute(!zIsMuted);
            AnimatorSet animatorSet = this.muteAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.muteAnimation = animatorSet2;
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.muteImageView, (Property<ImageView, Float>) View.ALPHA, !zIsMuted ? 1.0f : 0.0f), ObjectAnimator.ofFloat(this.muteImageView, (Property<ImageView, Float>) View.SCALE_X, !zIsMuted ? 1.0f : 0.5f), ObjectAnimator.ofFloat(this.muteImageView, (Property<ImageView, Float>) View.SCALE_Y, zIsMuted ? 0.5f : 1.0f));
            this.muteAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.14
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(InstantCameraView.this.muteAnimation)) {
                        InstantCameraView.this.muteAnimation = null;
                    }
                }
            });
            this.muteAnimation.setDuration(180L);
            this.muteAnimation.setInterpolator(new DecelerateInterpolator());
            this.muteAnimation.start();
        }
        if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
            getParent().requestDisallowInterceptTouchEvent(true);
            this.scaleGestureDetector.onTouchEvent(motionEvent);
            return true;
        }
        if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
            if (this.maybePinchToZoomTouchMode && !this.isInPinchToZoomTouchMode && motionEvent.getPointerCount() == 2 && this.finishZoomTransition == null && this.recording) {
                this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                this.pointerId1 = motionEvent.getPointerId(0);
                this.pointerId2 = motionEvent.getPointerId(1);
                this.isInPinchToZoomTouchMode = true;
                this.zoomSlider.beginPinchZoomGesture();
                this.zoomWas = false;
                this.initialCameraZoom = this.cameraZoom;
            }
            if (motionEvent.getActionMasked() == 0) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.cameraContainer.getX(), this.cameraContainer.getY(), this.cameraContainer.getX() + this.cameraContainer.getMeasuredWidth(), this.cameraContainer.getY() + this.cameraContainer.getMeasuredHeight());
                this.maybePinchToZoomTouchMode = rectF.contains(motionEvent.getX(), motionEvent.getY());
            }
            return true;
        }
        if (motionEvent.getActionMasked() == 2 && this.isInPinchToZoomTouchMode) {
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < motionEvent.getPointerCount(); i3++) {
                if (this.pointerId1 == motionEvent.getPointerId(i3)) {
                    i = i3;
                }
                if (this.pointerId2 == motionEvent.getPointerId(i3)) {
                    i2 = i3;
                }
            }
            if (i == -1 || i2 == -1) {
                this.isInPinchToZoomTouchMode = false;
                finishZoom();
                return false;
            }
            float fHypot = (float) Math.hypot(motionEvent.getX(i2) - motionEvent.getX(i), motionEvent.getY(i2) - motionEvent.getY(i));
            float maxZoom = 0.002f;
            if (this.useCamera2 && (camera2Session = this.camera2SessionCurrent) != null) {
                maxZoom = 0.002f * (camera2Session.getMaxZoom() - this.camera2SessionCurrent.getMinZoom());
            }
            float f = this.initialCameraZoom + ((fHypot - this.pinchStartDistance) * maxZoom);
            this.cameraZoom = f;
            if (this.useCamera2) {
                Camera2Session camera2Session2 = this.camera2SessionCurrent;
                if (camera2Session2 != null) {
                    float fClamp = Utilities.clamp(f, camera2Session2.getMaxZoom(), this.camera2SessionCurrent.getMinZoom());
                    this.cameraZoom = fClamp;
                    this.camera2SessionCurrent.setZoom(fClamp);
                }
            } else {
                float fClamp2 = Utilities.clamp(f, 1.0f, 0.0f);
                this.cameraZoom = fClamp2;
                CameraSession cameraSession = this.cameraSession;
                if (cameraSession != null) {
                    cameraSession.setZoom(fClamp2);
                }
            }
            this.zoomSlider.syncZoom(this.cameraZoom);
            this.zoomWas = true;
        } else if ((motionEvent.getActionMasked() == 1 || ((motionEvent.getActionMasked() == 6 && checkPointerIds(motionEvent)) || motionEvent.getActionMasked() == 3)) && this.isInPinchToZoomTouchMode) {
            this.isInPinchToZoomTouchMode = false;
            if (this.zoomWas) {
                finishZoom();
            } else {
                this.zoomSlider.endPinchZoomGesture();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelZoomAnimations() {
        ValueAnimator valueAnimator = this.zoomAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.zoomAnimator = null;
        }
        ValueAnimator valueAnimator2 = this.finishZoomTransition;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.finishZoomTransition = null;
        }
    }

    public void finishZoom() {
        this.zoomSlider.endPinchZoomGesture();
        if (this.finishZoomTransition != null || ExteraConfig.getStaticZoom()) {
            return;
        }
        if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
            if (this.cameraXSession != null) {
                float zoom = this.zoomSlider.getZoom();
                float fClamp = Utilities.clamp(this.zoomSlider.getCameraXResetZoom(), this.zoomSlider.getMaximumZoom(), this.zoomSlider.getMinimumZoom());
                float displayOneZoom = this.zoomSlider.getDisplayOneZoom();
                if ((zoom >= displayOneZoom || fClamp < displayOneZoom || this.zoomSlider.getMinimumZoom() >= displayOneZoom) && Math.abs(zoom - fClamp) > 0.001f) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(zoom, fClamp);
                    this.finishZoomTransition = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda10
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$finishZoom$22(valueAnimator);
                        }
                    });
                    this.finishZoomTransition.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.15
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (InstantCameraView.this.finishZoomTransition != null) {
                                InstantCameraView.this.finishZoomTransition = null;
                            }
                        }
                    });
                    this.finishZoomTransition.setDuration(350L);
                    this.finishZoomTransition.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    this.finishZoomTransition.start();
                    return;
                }
                return;
            }
            return;
        }
        float f = this.cameraZoom;
        if (f > 0.0f) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f, this.useCamera2 ? 1.0f : 0.0f);
            this.finishZoomTransition = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda11
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$finishZoom$23(valueAnimator);
                }
            });
            this.finishZoomTransition.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InstantCameraView.16
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (InstantCameraView.this.finishZoomTransition != null) {
                        InstantCameraView.this.finishZoomTransition = null;
                    }
                }
            });
            this.finishZoomTransition.setDuration(350L);
            this.finishZoomTransition.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.finishZoomTransition.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishZoom$22(ValueAnimator valueAnimator) {
        if (this.cameraXSession != null) {
            this.zoomSlider.setCameraXZoomRatio(((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.cameraZoom = this.cameraXSession.getLinearZoom();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishZoom$23(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.cameraZoom = fFloatValue;
        if (this.useCamera2) {
            Camera2Session camera2Session = this.camera2SessionCurrent;
            if (camera2Session != null) {
                camera2Session.setZoom(fFloatValue);
            }
        } else {
            CameraSession cameraSession = this.cameraSession;
            if (cameraSession != null) {
                cameraSession.setZoom(fFloatValue);
            }
        }
        this.zoomSlider.syncZoom(this.cameraZoom);
    }

    private void adjustZoom(boolean z) {
        float fClamp;
        if (isCameraReady()) {
            ValueAnimator valueAnimator = this.zoomAnimator;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                cancelZoomAnimations();
                this.zoomSlider.beginSteppedZoomGesture();
                if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
                    float zoom = this.zoomSlider.getZoom();
                    float minimumZoom = this.zoomSlider.getMinimumZoom();
                    float maximumZoom = this.zoomSlider.getMaximumZoom();
                    float fClamp2 = Utilities.clamp(this.zoomSlider.getDisplayOneZoom(), maximumZoom, minimumZoom);
                    double d = maximumZoom / fClamp2;
                    int iRound = (int) Math.round(Math.log(d) / Math.log(1.75d));
                    if (iRound < 1) {
                        iRound = 1;
                    }
                    float fPow = (float) Math.pow(d, 1.0d / ((double) iRound));
                    if (z) {
                        if (zoom >= fClamp2) {
                            fClamp2 = zoom * fPow;
                        }
                    } else if (zoom > fClamp2) {
                        float f = zoom / fPow;
                        if (f >= fClamp2) {
                            fClamp2 = f;
                        }
                    } else {
                        fClamp2 = minimumZoom;
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(zoom, Utilities.clamp(fClamp2, maximumZoom, minimumZoom));
                    this.zoomAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setDuration(175L);
                    this.zoomAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    this.zoomAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda6
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$adjustZoom$24(valueAnimator2);
                        }
                    });
                    this.zoomAnimator.start();
                    return;
                }
                float f2 = this.cameraZoom;
                float f3 = 1.0f;
                if (this.useCamera2) {
                    Camera2Session camera2Session = this.camera2SessionCurrent;
                    if (camera2Session == null) {
                        return;
                    }
                    float minZoom = camera2Session.getMinZoom();
                    float maxZoom = this.camera2SessionCurrent.getMaxZoom();
                    double d2 = maxZoom;
                    int iRound2 = (int) Math.round(Math.log(d2) / Math.log(1.75d));
                    if (iRound2 < 1) {
                        iRound2 = 1;
                    }
                    float fPow2 = (float) Math.pow(d2, 1.0d / ((double) iRound2));
                    float f4 = this.cameraZoom;
                    if (z) {
                        f3 = f4 * fPow2;
                    } else {
                        float f5 = f4 / fPow2;
                        if (f5 >= 1.0f) {
                            f3 = f5;
                        }
                    }
                    fClamp = Utilities.clamp(f3, maxZoom, minZoom);
                } else {
                    fClamp = Utilities.clamp(f2 + ((z ? 1 : -1) * 0.125f), 1.0f, 0.0f);
                }
                float f6 = this.cameraZoom;
                if (f6 == fClamp) {
                    return;
                }
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f6, fClamp);
                this.zoomAnimator = valueAnimatorOfFloat2;
                valueAnimatorOfFloat2.setDuration(175L);
                this.zoomAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.zoomAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InstantCameraView$$ExternalSyntheticLambda7
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$adjustZoom$25(valueAnimator2);
                    }
                });
                this.zoomAnimator.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$adjustZoom$24(ValueAnimator valueAnimator) {
        if (this.cameraXSession != null) {
            this.zoomSlider.setCameraXZoomRatio(((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.cameraZoom = this.cameraXSession.getLinearZoom();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$adjustZoom$25(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.cameraZoom = fFloatValue;
        if (this.useCamera2) {
            Camera2Session camera2Session = this.camera2SessionCurrent;
            if (camera2Session != null) {
                camera2Session.setZoom(fFloatValue);
            }
        } else {
            CameraSession cameraSession = this.cameraSession;
            if (cameraSession != null) {
                cameraSession.setZoom(fFloatValue);
            }
        }
        this.zoomSlider.syncZoom(this.cameraZoom);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && i == 24) {
            adjustZoom(true);
            return true;
        }
        if (keyEvent.getAction() == 0 && i == 25) {
            adjustZoom(false);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean isCameraReady() {
        boolean zIsCameraSessionInitiated;
        if (ExteraConfig.getCameraType() == CameraType.CAMERA_X) {
            zIsCameraSessionInitiated = this.cameraXSession != null && this.cameraXSession.isReady();
        } else {
            zIsCameraSessionInitiated = isCameraSessionInitiated();
        }
        return this.cameraReady && zIsCameraSessionInitiated && this.cameraThread != null;
    }
}
