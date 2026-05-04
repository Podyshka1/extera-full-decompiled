.class public Lorg/telegram/ui/Components/InstantCameraView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$Delegate;,
        Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;,
        Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;,
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;,
        Lorg/telegram/ui/Components/InstantCameraView$SendOptions;,
        Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;,
        Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    }
.end annotation


# static fields
.field private static final ALLOW_BIG_CAMERA_WHITELIST:[I


# instance fields
.field public WRITE_TO_FILE_IN_BACKGROUND:Z

.field private allowSendingWhileRecording:Z

.field private animationTranslationY:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private aspectRatio:Lorg/telegram/messenger/camera/Size;

.field private bothCameras:Z

.field private final buttonsLayout:Landroid/widget/LinearLayout;

.field private final buttonsSizePx:I

.field private camLifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

.field private camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

.field private camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

.field private cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

.field private cameraFile:Ljava/io/File;

.field private volatile cameraReady:Z

.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private final cameraTexture:[I

.field private cameraTextureAlpha:F

.field private volatile cameraTextureAvailable:Z

.field private cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

.field private cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

.field private cameraZoom:F

.field private cancelled:Z

.field private currentAccount:I

.field private delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

.field private encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field private file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field finishZoomTransition:Landroid/animation/ValueAnimator;

.field private firstFrameThumb:Landroid/graphics/Bitmap;

.field private final flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

.field private flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

.field private flashing:Z

.field private flipAnimationInProgress:Z

.field private frontFlashing:Z

.field private initialCameraZoom:F

.field private internalPaddingBottom:I

.field private isFrontface:Z

.field isInPinchToZoomTouchMode:Z

.field private isMessageTransition:Z

.field private isSecretChat:Z

.field private itemOptions:Lorg/telegram/ui/Components/ItemOptions;

.field private iv:[B

.field private key:[B

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private final mMVPMatrix:[F

.field private final mSTMatrix:[F

.field maybePinchToZoomTouchMode:Z

.field private final moldSTMatrix:[F

.field private muteAnimation:Landroid/animation/AnimatorSet;

.field private muteImageView:Landroid/widget/ImageView;

.field private needDrawFlickerStub:Z

.field private final oldCameraTexture:[I

.field private oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

.field private oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

.field public opened:Z

.field private paint:Landroid/graphics/Paint;

.field private panTranslationY:F

.field private parentView:Landroid/view/View;

.field private pictureSize:Lorg/telegram/messenger/camera/Size;

.field pinchStartDistance:F

.field private pointerId1:I

.field private pointerId2:I

.field private final position:[I

.field private previewFile:Ljava/io/File;

.field private previewSize:[Lorg/telegram/messenger/camera/Size;

.field private progress:F

.field private progressTimer:Ljava/util/Timer;

.field private recordPlusTime:J

.field private recordStartTime:J

.field private recordedTime:J

.field private recording:Z

.field private recordingGuid:I

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaleX:F

.field private scaleY:F

.field private selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

.field private setVisibilityFromPause:Z

.field private size:J

.field private volatile surfaceIndex:I

.field private final switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

.field private switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

.field private textureView:Landroid/view/TextureView;

.field private textureViewSize:I

.field private updateTextureViewSize:Z

.field private final useCamera2:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field private videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private wasFlashing:Ljava/lang/Boolean;

.field private zoomAnimator:Landroid/animation/ValueAnimator;

.field private zoomWas:Z


# direct methods
.method public static synthetic $r8$lambda$3iIrvyNp3Veb5bw6QkfQ8M2Svd0(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$16(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3kNL4md-5hEHXyCBvgLDBLA_uyE(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$adjustZoom$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6dHFuIFxuYbGUG7a79KPHNi5utI(Lorg/telegram/ui/Components/InstantCameraView;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$5(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7SOx7u73KarerTbYmRmTGFqAKHg(Lorg/telegram/ui/Components/InstantCameraView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$startAnimation$8(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRa4Pcs5xh0fkWGp3KPRvenlfmA(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 3

    .line 1450
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1451
    iget v1, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p1, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p1, v0, p0

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BsWOIRYuL-PzRjQECjqYuJlFeH8(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$adjustZoom$20(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVLSm7SQ9LvX3HDowYPztFvaLNw(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HgFJif0yWNQgnPDsRHh8bqFva5s(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$finishZoom$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IiWCjr66BWqR_2qv-FE6LxiokYg(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$14(Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kty-iQd9EHalYVOSGhjvMBJNtes(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1189
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "icthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1190
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1191
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x57

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1192
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic $r8$lambda$MmSPFcYcm7lZCfCKLzjTKVSEodc(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$NfSNZjzT6vAAaL1VNMpqpd6lwnc(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$RQKmJOtbpZYfJO3eqrCwph_i88o(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VZgvTrEoect_1lhrcWm4wi8Uy1Y(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$b69RJPt9jnQcwR_76FCi_TFpApo(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$2(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqgBRRwilQpcenqxHjHc4UkqOc0(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tFP9ihZA51UDSVe4pkaXNGPePSQ(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tKrGS3LPlg1yB3xqdvCGOg33MCg(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$finishZoom$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZf71xbzpSaDnel0YRXy688JHKw(Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$v7buj4tgsTwWmdxkwuIz667cGec(Lorg/telegram/ui/Components/InstantCameraView;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$4(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEB77aHHyDsrdOIjVUsBdvgcmxM(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$11()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->allowSendingWhileRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbothCameras(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonsLayout(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcamera2Sessions(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Camera2Session;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraContainer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraReady(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraSession(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraTextureAvailable(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraThread(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcancelled(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetencryptedFile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->firstFrameThumb:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSecretChat(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isSecretChat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiv(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkey(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmoldSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmuteAnimation(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmuteImageView(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneedDrawFlickerStub(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldTexturePreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldTextureTextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaint(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecordedTime(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrecordingGuid(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleX(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleY(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->surfaceIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureOverlayView(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureView(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureViewSize(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseCamera2(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvertexBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->allowSendingWhileRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraReady(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraTextureAvailable(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraThread(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraZoom(Lorg/telegram/ui/Components/InstantCameraView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputencryptedFile(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfile(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->firstFrameThumb:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputflipAnimationInProgress(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiv(Lorg/telegram/ui/Components/InstantCameraView;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkey(Lorg/telegram/ui/Components/InstantCameraView;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmuteAnimation(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldTexturePreviewSize(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldTextureTextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewFile:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecordPlusTime(Lorg/telegram/ui/Components/InstantCameraView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordPlusTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecordStartTime(Lorg/telegram/ui/Components/InstantCameraView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecording(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscaleX(Lorg/telegram/ui/Components/InstantCameraView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscaleY(Lorg/telegram/ui/Components/InstantCameraView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetVisibilityFromPause(Lorg/telegram/ui/Components/InstantCameraView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->surfaceIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvertexBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateCamera(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->createCamera(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadShader(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->loadShader(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartProgressTimer(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFlash(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, 0x110a8f8c

    const v1, -0x5319aae7

    .line 271
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 283
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 144
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    const/4 v3, 0x1

    .line 158
    iput-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    const/4 v4, 0x2

    .line 174
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/high16 v5, -0x80000000

    .line 175
    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    .line 176
    new-array v5, v3, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 177
    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    .line 195
    new-array v5, v4, [Lorg/telegram/messenger/camera/Size;

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    .line 197
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const/4 v6, 0x4

    const/16 v7, 0x10

    if-eqz v5, :cond_0

    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/16 v8, 0x9

    invoke-direct {v5, v7, v8}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    :goto_0
    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    .line 200
    sget v5, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v8, 0x0

    if-ne v5, v3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    iput-boolean v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    .line 203
    new-array v4, v4, [Lorg/telegram/messenger/camera/Camera2Session;

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    .line 222
    new-array v4, v7, [F

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    .line 223
    new-array v4, v7, [F

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    .line 224
    new-array v4, v7, [F

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    const/4 v4, 0x0

    .line 4083
    iput v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->initialCameraZoom:F

    if-eqz p4, :cond_2

    const/high16 v5, 0x41c00000    # 24.0f

    goto :goto_2

    :cond_2
    const/high16 v5, 0x41e00000    # 28.0f

    .line 284
    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsSizePx:I

    .line 286
    iput-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    .line 287
    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 288
    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getFragmentView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    .line 289
    invoke-virtual {v0, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    move-object/from16 v5, p2

    .line 291
    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    .line 292
    invoke-interface {v5}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getClassGuid()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    .line 293
    invoke-interface {v5}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isSecretChat()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->isSecretChat:Z

    .line 294
    new-instance v5, Lorg/telegram/ui/Components/InstantCameraView$1;

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/Components/InstantCameraView$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView;I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    .line 301
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 303
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    .line 308
    new-instance v5, Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10, v0, v10}, Lorg/telegram/ui/Stories/recorder/FlashViews;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    .line 309
    sget v9, Lcom/exteragram/messenger/ExteraConfig;->flashWarmth:F

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setWarmth(F)V

    .line 310
    sget v9, Lcom/exteragram/messenger/ExteraConfig;->flashIntensity:F

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setIntensity(F)V

    .line 312
    iget-object v9, v5, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    const/16 v10, 0x77

    invoke-static {v7, v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v9, Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/InstantCameraView$2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/InstantCameraView$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-direct {v9, v11, v12}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 331
    new-instance v9, Lorg/telegram/ui/Components/InstantCameraView$3;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    .line 344
    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/InstantCameraView$4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 350
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v9, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 359
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v9, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 361
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    const/16 v13, 0x11

    invoke-direct {v11, v12, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v9, v5, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-static {v7, v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/high16 v9, 0x40c00000    # 6.0f

    .line 366
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v7, v10, v11, v12, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 368
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/high16 v15, 0x42600000    # 56.0f

    const/16 v16, 0x53

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    .line 369
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance v9, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    .line 372
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    sget v11, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v11, 0x2c

    .line 374
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v12, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    new-instance v12, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    .line 445
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 446
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 492
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    if-nez p4, :cond_3

    .line 495
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    .line 496
    invoke-virtual {v5, v12}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    goto :goto_3

    .line 497
    :cond_3
    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v2

    if-nez v2, :cond_4

    const v2, 0x3f19999a    # 0.6f

    .line 498
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;->setInvert(F)V

    .line 499
    invoke-virtual {v12, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;->setInvert(F)V

    .line 502
    :cond_4
    :goto_3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    .line 503
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 504
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->video_mute:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 506
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/16 v2, 0x30

    invoke-static {v2, v2, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    const/16 v3, 0x28

    .line 509
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$7;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/Components/InstantCameraView$7;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    .line 528
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    invoke-direct {v1, v3, v3, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iput-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    .line 531
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    return-void
.end method

.method private adjustZoom(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 4150
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 4155
    :cond_0
    sget v1, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0xaf

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3ffc000000000000L    # 1.75

    if-ne v1, v3, :cond_6

    .line 4156
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {v1}, Lcom/exteragram/messenger/camera/CameraXSession;->getZoomRatio()F

    move-result v1

    .line 4157
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {v12}, Lcom/exteragram/messenger/camera/CameraXSession;->getMinZoomRatio()F

    move-result v12

    .line 4158
    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {v13}, Lcom/exteragram/messenger/camera/CameraXSession;->getMaxZoomRatio()F

    move-result v13

    float-to-double v14, v13

    .line 4160
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v16, v16, v10

    .line 4161
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    if-ge v10, v8, :cond_1

    move v10, v8

    :cond_1
    int-to-double v10, v10

    div-double/2addr v6, v10

    .line 4163
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    if-eqz p1, :cond_3

    cmpg-float v7, v1, v9

    if-gez v7, :cond_2

    goto :goto_0

    :cond_2
    mul-float v9, v1, v6

    goto :goto_0

    :cond_3
    cmpl-float v7, v1, v9

    if-lez v7, :cond_5

    div-float v6, v1, v6

    cmpg-float v7, v6, v9

    if-gez v7, :cond_4

    goto :goto_0

    :cond_4
    move v9, v6

    goto :goto_0

    :cond_5
    move v9, v12

    .line 4183
    :goto_0
    invoke-static {v9, v13, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    .line 4185
    new-array v3, v3, [F

    aput v1, v3, v2

    aput v6, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    .line 4186
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4187
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4188
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4195
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 4197
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 4198
    iget-boolean v12, v0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v12, :cond_b

    .line 4199
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v1, :cond_7

    goto/16 :goto_4

    .line 4200
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Camera2Session;->getMinZoom()F

    move-result v1

    .line 4201
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Camera2Session;->getMaxZoom()F

    move-result v12

    float-to-double v13, v12

    .line 4203
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v15, v10

    .line 4204
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    if-ge v10, v8, :cond_8

    move v10, v8

    :cond_8
    int-to-double v10, v10

    div-double/2addr v6, v10

    .line 4206
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    if-eqz p1, :cond_9

    .line 4209
    iget v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    mul-float v9, v7, v6

    goto :goto_1

    .line 4211
    :cond_9
    iget v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    div-float/2addr v7, v6

    cmpg-float v6, v7, v9

    if-gez v6, :cond_a

    goto :goto_1

    :cond_a
    move v9, v7

    .line 4216
    :goto_1
    invoke-static {v9, v12, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    move v6, v8

    goto :goto_2

    :cond_c
    const/4 v6, -0x1

    :goto_2
    int-to-float v6, v6

    const/high16 v7, 0x3e000000    # 0.125f

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    const/4 v6, 0x0

    .line 4219
    invoke-static {v1, v9, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 4222
    :goto_3
    iget v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    cmpl-float v7, v6, v1

    if-nez v7, :cond_d

    goto :goto_4

    .line 4226
    :cond_d
    new-array v3, v3, [F

    aput v6, v3, v2

    aput v1, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    .line 4227
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4228
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4229
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4239
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->zoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_e
    :goto_4
    return-void
.end method

.method private allowBigSizeCamera()Z
    .locals 6

    .line 1465
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1468
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAboveAverage()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1471
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLegacyDevicePerformanceClass()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    return v1

    .line 1475
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 1476
    :goto_0
    sget-object v4, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 1477
    aget v4, v4, v3

    if-ne v4, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static allowBigSizeCameraDebug()Z
    .locals 6

    .line 1486
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLegacyDevicePerformanceClass()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1490
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    .line 1491
    :goto_0
    sget-object v4, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 1492
    aget v4, v4, v3

    if-ne v4, v0, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 643
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return v3

    .line 646
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;
    .locals 6

    .line 1424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v1

    const/16 v2, 0x4b0

    if-eqz v1, :cond_0

    const/16 v1, 0x5a0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1427
    :goto_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v1, 0x0

    move v3, v1

    .line 1431
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1432
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x140

    if-lt v4, v5, :cond_2

    .line 1433
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1436
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 1449
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1460
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/camera/Size;

    return-object p1

    .line 1438
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object p1, v0

    .line 1443
    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x1e0

    if-eqz v0, :cond_7

    const/16 v0, 0x280

    .line 1444
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    invoke-static {p1, v0, v2, v3, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v0, 0x10e

    .line 1446
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    invoke-static {p1, v2, v0, v3, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    return-object p1
.end method

.method private createCamera(ILandroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1500
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initCamera()Z
    .locals 12

    .line 1347
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1350
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    move v4, v2

    .line 1355
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 1356
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/CameraInfo;

    .line 1357
    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v3, v5

    .line 1360
    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1361
    :cond_4
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object v3, v5

    goto :goto_0

    .line 1367
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_7

    .line 1368
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    .line 1370
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_8

    return v2

    .line 1374
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v0

    .line 1375
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v3

    .line 1377
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1378
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 1380
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-eq v5, v4, :cond_10

    .line 1382
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    move v5, v2

    :goto_2
    if-ltz v4, :cond_c

    .line 1383
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/Size;

    .line 1384
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_3
    if-ltz v7, :cond_a

    .line 1385
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 1386
    iget v9, v6, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v10, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-lt v9, v11, :cond_9

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v10, v10, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v11, v10, :cond_9

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v9, v10, :cond_9

    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v11, v9, :cond_9

    .line 1387
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v6, v5, v2

    .line 1388
    iput-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    move v5, v1

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_c
    :goto_5
    if-nez v5, :cond_10

    .line 1399
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_6
    if-ltz v4, :cond_10

    .line 1400
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/Size;

    .line 1401
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_7
    if-ltz v7, :cond_e

    .line 1402
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 1403
    iget v9, v6, Lorg/telegram/messenger/camera/Size;->mWidth:I

    const/16 v10, 0x168

    if-lt v9, v10, :cond_d

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v11, v10, :cond_d

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v9, v10, :cond_d

    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v11, v9, :cond_d

    .line 1404
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v6, v5, v2

    .line 1405
    iput-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    move v5, v1

    goto :goto_8

    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_e
    :goto_8
    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 1416
    :cond_10
    :goto_9
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_11

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera preview w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v3, v2

    iget v3, v3, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v3, v2

    iget v2, v2, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_11
    return v1
.end method

.method private isCameraSessionInitiated()Z
    .locals 3

    .line 212
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private synthetic lambda$adjustZoom$19(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4189
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v0, :cond_0

    .line 4190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 4191
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->setZoomRatio(F)V

    .line 4192
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {p1}, Lcom/exteragram/messenger/camera/CameraXSession;->getLinearZoom()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    :cond_0
    return-void
.end method

.method private synthetic lambda$adjustZoom$20(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4230
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 4231
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_0

    .line 4232
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_1

    .line 4233
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setZoom(F)V

    return-void

    .line 4235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    .line 4236
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createCamera$11()V
    .locals 6

    .line 1526
    const-string v0, " h = "

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_5

    .line 1527
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    const/4 v1, 0x0

    .line 1531
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1532
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 1533
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v4, Lorg/telegram/messenger/camera/Size;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v4, v3, v1

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera change preview size to w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1537
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1541
    :cond_1
    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1542
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 1543
    :cond_2
    :goto_3
    new-instance v3, Lorg/telegram/messenger/camera/Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 1544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera change picture size to w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_5

    .line 1548
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1550
    :cond_3
    :goto_5
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1551
    const-string v0, "InstantCamera camera initied"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1553
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    if-eqz v1, :cond_5

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_5

    .line 1556
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createCamera$12()V
    .locals 2

    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createCamera$14(Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    .line 1569
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p1, v0, v1}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$createCamera$15()V
    .locals 1

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setOrientation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createCamera$16(ILandroid/graphics/SurfaceTexture;)V
    .locals 9

    .line 1501
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1504
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera create camera session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1508
    :cond_1
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 1509
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1510
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_2

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object p1, v0, p1

    if-eqz p1, :cond_8

    .line 1512
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/Camera2Session;->open(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_2
    if-ne p1, v1, :cond_3

    goto/16 :goto_0

    .line 1516
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/Camera2Session;)V

    .line 1517
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/Camera2Session;->open(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_4
    if-ne p1, v1, :cond_5

    goto/16 :goto_0

    .line 1521
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1522
    new-instance v3, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v5, p1, v2

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    const/16 v7, 0x100

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 1523
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1525
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->openRound(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 1567
    :cond_6
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1568
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/Surface;)V

    if-nez p1, :cond_7

    .line 1573
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1574
    new-instance p1, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p1, p2, v0}, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;-><init>(FF)V

    .line 1576
    new-instance p2, Lcom/exteragram/messenger/camera/CameraXSession;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camLifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-direct {p2, v0, p1, v1}, Lcom/exteragram/messenger/camera/CameraXSession;-><init>(Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;Landroidx/camera/core/MeteringPointFactory;Landroidx/camera/core/Preview$SurfaceProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    .line 1577
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/exteragram/messenger/camera/CameraXSession;->initCamera(Landroid/content/Context;ZZLjava/lang/Runnable;)V

    .line 1580
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->camLifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-virtual {p1}, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;->start()V

    .line 1581
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    return-void

    .line 1582
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz p1, :cond_8

    .line 1583
    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/camera/CameraXSession;->setSecondSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 1584
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object p1, p1, v2

    if-eqz p1, :cond_8

    .line 1585
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_8
    :goto_0
    return-void
.end method

.method private synthetic lambda$finishZoom$17(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4098
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v0, :cond_0

    .line 4099
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 4100
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->setZoomRatio(F)V

    .line 4101
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {p1}, Lcom/exteragram/messenger/camera/CameraXSession;->getLinearZoom()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    :cond_0
    return-void
.end method

.method private synthetic lambda$finishZoom$18(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4121
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 4122
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_0

    .line 4123
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_1

    .line 4124
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setZoom(F)V

    return-void

    .line 4127
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    .line 4128
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/exteragram/messenger/camera/CameraXSession;->focusToPoint(FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 2

    .line 405
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 406
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCamera()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 408
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraX()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 376
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->isCameraReady()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 379
    :cond_0
    sget p2, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 380
    :goto_0
    sget v3, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-eq v3, v2, :cond_2

    .line 381
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-nez v3, :cond_3

    .line 382
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCamera()V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 386
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraX()V

    .line 390
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v3, :cond_4

    .line 391
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 395
    :cond_4
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne v0, v2, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_2
    return-void

    .line 399
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    .line 400
    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0x1c2

    .line 401
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 402
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 403
    new-array v0, v1, [Z

    .line 404
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 411
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setCameraDistance(F)V

    .line 412
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setCameraDistance(F)V

    .line 413
    new-instance p2, Lorg/telegram/ui/Components/InstantCameraView$5;

    invoke-direct {p2, p0, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;[ZLjava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 427
    new-instance p2, Lorg/telegram/ui/Components/InstantCameraView$6;

    invoke-direct {p2, p0, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$6;-><init>(Lorg/telegram/ui/Components/InstantCameraView;[ZLjava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 448
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    .line 449
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Float;)V
    .locals 3

    .line 465
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->flashWarmth:F

    const-string v2, "flashWarmth"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setWarmth(F)V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/Float;)V
    .locals 3

    .line 475
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->flashIntensity:F

    const-string v2, "flashIntensity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setIntensity(F)V

    return-void
.end method

.method private synthetic lambda$new$6(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 481
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 4

    .line 452
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->isCameraReady()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 455
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 457
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    .line 458
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 460
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-static {p0, p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/exteragram/messenger/ExteraConfig;->flashWarmth:F

    .line 463
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 464
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    .line 461
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 472
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    sget v2, Lcom/exteragram/messenger/ExteraConfig;->flashIntensity:F

    .line 473
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 474
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    .line 470
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 479
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/16 p2, 0x32

    .line 485
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x5

    .line 486
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 p2, 0x42380000    # 46.0f

    .line 487
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const p2, -0x44e4e4e5

    .line 488
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->itemOptions:Lorg/telegram/ui/Components/ItemOptions;

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$startAnimation$8(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 1033
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    .line 1593
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 1594
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1595
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 1596
    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 1597
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1598
    aget p2, p2, v1

    if-nez p2, :cond_1

    .line 1599
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 1600
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1602
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_1
    return p1
.end method

.method private saveLastCameraBitmap()V
    .locals 9

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1183
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x32

    .line 1184
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1185
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    .line 1186
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 1187
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startProgressTimer()V
    .locals 7

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1613
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1614
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1616
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1619
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    .line 1620
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$11;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x11

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopProgressTimer()V
    .locals 1

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1639
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1640
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1642
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private switchCamera()V
    .locals 7

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1268
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-nez v0, :cond_2

    .line 1269
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1271
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    .line 1272
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1276
    :cond_2
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->rememberLastUsedCamera:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 1277
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    sput v2, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    const-string v3, "videoMessagesCamera"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1279
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 1280
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 1281
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 1282
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_4

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/2addr v1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->flipSurfaces()V

    return-void

    .line 1287
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_5

    .line 1288
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(Z)V

    .line 1289
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    aput-object v3, v0, v4

    .line 1292
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v4, v3, 0x1

    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v5

    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v6

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v3

    aput-object v3, v0, v4

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v3, :cond_6

    :goto_0
    return-void

    .line 1294
    :cond_6
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v2, Lorg/telegram/messenger/camera/Size;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v2, v0, v1

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/Camera2Session;)V

    goto :goto_1

    .line 1299
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_8

    .line 1300
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 1301
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    .line 1302
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 1305
    :cond_8
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    .line 1306
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    const/4 v0, 0x0

    .line 1307
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    return-void
.end method

.method private switchCameraX()V
    .locals 5

    .line 1312
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1316
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1318
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 1319
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    if-eqz v0, :cond_4

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_2

    .line 1323
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->flipSurfaces()V

    .line 1326
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v0, :cond_3

    .line 1327
    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->switchCamera()V

    :cond_3
    :goto_1
    return-void

    .line 1332
    :cond_4
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->rememberLastUsedCamera:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    if-eq v0, v1, :cond_5

    .line 1333
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    const-string v3, "videoMessagesCamera"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1335
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v0, :cond_6

    .line 1338
    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->switchCamera()V

    return-void

    .line 1340
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    return-void
.end method

.method private updateFlash()V
    .locals 6

    .line 545
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 546
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->frontFlashing:Z

    if-eq v3, v0, :cond_2

    .line 547
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->frontFlashing:Z

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    .line 555
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 557
    :goto_2
    sget v3, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    .line 558
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v3, :cond_5

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_4

    .line 560
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/camera/Camera2Session;->setFlash(Z)V

    goto :goto_5

    .line 563
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    .line 564
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/camera/CameraSession;->setTorchEnabled(Z)V

    goto :goto_5

    .line 568
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->isCameraReady()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v3, :cond_8

    .line 569
    invoke-virtual {v3, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->setTorchEnabled(Z)V

    .line 573
    :cond_8
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eq v0, v3, :cond_10

    .line 574
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eqz v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    goto :goto_6

    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-nez v0, :cond_d

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_b

    .line 577
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->roundcamera_flash_on:I

    const-string v4, "roundcamera_flash_on"

    iget v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsSizePx:I

    invoke-direct {v0, v3, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 578
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 580
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_7

    .line 584
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_7

    .line 588
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_e

    .line 589
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->roundcamera_flash_off:I

    const-string v4, "roundcamera_flash_off"

    iget v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsSizePx:I

    invoke-direct {v0, v3, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 590
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 592
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    if-nez v0, :cond_f

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_7

    .line 596
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 600
    :goto_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    :cond_10
    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 12

    .line 1201
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1204
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    return-void

    .line 1209
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    const/4 v0, 0x0

    .line 1210
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    .line 1211
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    .line 1212
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 1213
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    iget v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v0

    aput-object p1, v6, v1

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1214
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz p1, :cond_3

    .line 1215
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 1216
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIIJ)V

    .line 1217
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    goto :goto_1

    .line 1218
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-eqz p1, :cond_4

    .line 1219
    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;-><init>(ZIIIJJ)V

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    .line 1221
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz p1, :cond_6

    .line 1222
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    .line 1223
    const-string p1, "delete camera file by cancel"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1225
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1226
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/io/File;)V

    .line 1227
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    .line 1229
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    .line 1230
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    .line 1231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public changeVideoPreviewState(IF)V
    .locals 3

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1083
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1086
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 1087
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1089
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float p1, v1

    mul-float/2addr p2, p1

    float-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public destroy(Z)V
    .locals 4

    .line 699
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 700
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 701
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 702
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(Z)V

    .line 704
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aput-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_4

    .line 709
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 710
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    return-void

    .line 715
    :cond_3
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    invoke-virtual {p1}, Lcom/exteragram/messenger/camera/CameraXSession;->closeCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 684
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 685
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 686
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 687
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    const/4 p1, 0x2

    .line 688
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    const/4 p1, 0x5

    .line 689
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 691
    aget-object p1, p3, p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    const/4 p1, 0x4

    .line 692
    aget-object p1, p3, p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    :cond_0
    return-void
.end method

.method public finishZoom()V
    .locals 9

    .line 4088
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->staticZoom:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4092
    :cond_0
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x15e

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v0, v3, :cond_2

    .line 4093
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v0, :cond_4

    .line 4094
    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->getZoomRatio()F

    move-result v0

    cmpg-float v7, v0, v6

    if-ltz v7, :cond_1

    cmpl-float v7, v0, v6

    if-lez v7, :cond_4

    .line 4096
    :cond_1
    new-array v3, v3, [F

    aput v0, v3, v2

    aput v6, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    .line 4097
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4104
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$13;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4112
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4113
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4114
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 4118
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-lez v8, :cond_4

    .line 4119
    iget-boolean v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_0
    new-array v3, v3, [F

    aput v0, v3, v2

    aput v6, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    .line 4120
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4132
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$14;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4140
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4141
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4142
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getButtonsLayout()Landroid/view/View;
    .locals 1

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCameraContainer()Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
    .locals 1

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    return-object v0
.end method

.method public getCameraRect()Lorg/telegram/ui/Components/Rect;
    .locals 5

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1075
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getMuteImageView()Landroid/view/View;
    .locals 1

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 1653
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public hideCamera(Z)V
    .locals 1

    .line 1247
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->destroy(Z)V

    .line 1248
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1250
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 1251
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    .line 1252
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->resumeByRewind()V

    .line 1254
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    .line 1255
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 1260
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public isCameraReady()Z
    .locals 4

    .line 4257
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 4258
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraXSession:Lcom/exteragram/messenger/camera/CameraXSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 4259
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->isCameraSessionInitiated()Z

    move-result v0

    .line 4260
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isPaused()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 669
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 670
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 675
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 676
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 723
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    .line 724
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 725
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_0

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordPlusTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 727
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 731
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 733
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 736
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    mul-float v7, v1, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 737
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 655
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 4245
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 4246
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->adjustZoom(Z)V

    return v1

    .line 4248
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 4249
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->adjustZoom(Z)V

    return v1

    .line 4253
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 613
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    if-eqz v0, :cond_2

    .line 615
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 616
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    goto :goto_0

    .line 618
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    .line 620
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    if-eq v0, v1, :cond_1

    .line 621
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    .line 631
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onPanTranslationUpdate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 1648
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    .line 1649
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 660
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 663
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 3973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    return v1

    .line 3977
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    if-eqz v0, :cond_5

    .line 3978
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    .line 3979
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isMuted()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    .line 3980
    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 3981
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    .line 3982
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3984
    :cond_1
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    .line 3985
    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    move v9, v5

    goto :goto_0

    :cond_2
    move v9, v3

    .line 3986
    :goto_0
    new-array v10, v6, [F

    aput v9, v10, v1

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/high16 v10, 0x3f000000    # 0.5f

    if-nez v0, :cond_3

    move v11, v5

    goto :goto_1

    :cond_3
    move v11, v10

    .line 3987
    :goto_1
    new-array v12, v6, [F

    aput v11, v12, v1

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    move v10, v5

    .line 3988
    :cond_4
    new-array v0, v6, [F

    aput v10, v0, v1

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v11, v10, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v10, v2, [Landroid/animation/Animator;

    aput-object v8, v10, v1

    aput-object v9, v10, v6

    aput-object v0, v10, v4

    .line 3985
    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3989
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$12;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/InstantCameraView$12;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3997
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0xb4

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3998
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3999
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4005
    :cond_5
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne v0, v4, :cond_6

    .line 4006
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4007
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v6

    .line 4011
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_7

    goto/16 :goto_6

    .line 4026
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    move v4, v0

    move v7, v4

    move v2, v1

    .line 4029
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 4030
    iget v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_8

    move v4, v2

    .line 4033
    :cond_8
    iget v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_9

    move v7, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    if-eq v4, v0, :cond_f

    if-ne v7, v0, :cond_b

    goto :goto_4

    .line 4043
    :cond_b
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    float-to-double v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 4048
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const v1, 0x3b03126f    # 0.002f

    if-eqz v0, :cond_c

    .line 4049
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_c

    .line 4050
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getMaxZoom()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Camera2Session;->getMinZoom()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    .line 4058
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchStartDistance:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    .line 4060
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->initialCameraZoom:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 4062
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz p1, :cond_d

    .line 4063
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz p1, :cond_e

    .line 4064
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Camera2Session;->getMaxZoom()F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Camera2Session;->getMinZoom()F

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 4065
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setZoom(F)V

    goto :goto_3

    .line 4068
    :cond_d
    invoke-static {v0, v5, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    .line 4069
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_e

    .line 4070
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    .line 4073
    :cond_e
    :goto_3
    iput-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->zoomWas:Z

    goto :goto_5

    .line 4038
    :cond_f
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    .line 4039
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    return v1

    .line 4074
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v6, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_11

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_13

    :cond_12
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-eqz p1, :cond_13

    .line 4075
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    .line 4076
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->zoomWas:Z

    if-eqz p1, :cond_13

    .line 4077
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    :cond_13
    :goto_5
    return v6

    .line 4012
    :cond_14
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->maybePinchToZoomTouchMode:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_15

    .line 4013
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchStartDistance:F

    .line 4015
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    .line 4016
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    .line 4017
    iput-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    .line 4018
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->zoomWas:Z

    .line 4019
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraZoom:F

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->initialCameraZoom:F

    .line 4021
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_16

    .line 4022
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->maybePinchToZoomTouchMode:Z

    :cond_16
    return v6
.end method

.method public resetCameraFile()V
    .locals 1

    const/4 v0, 0x0

    .line 1661
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-void
.end method

.method public send(IZIIIJJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1094
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 1097
    :cond_0
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 1098
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1099
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1100
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    const-wide/16 v5, 0x320

    const/4 v2, 0x4

    const/4 v7, 0x0

    if-ne v1, v2, :cond_b

    .line 1103
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-eqz v1, :cond_2

    iget-wide v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    cmp-long v2, v8, v5

    if-lez v2, :cond_2

    .line 1104
    new-instance v8, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;-><init>(ZIIIJJ)V

    invoke-virtual {v1, v3, v8}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void

    .line 1107
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1108
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "file not found :( round video"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1110
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v1, :cond_4

    .line 1111
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/16 v2, -0x1

    .line 1112
    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1113
    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1115
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_9

    .line 1116
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1117
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 1118
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 1119
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    .line 1120
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v8, v4

    .line 1121
    iget-wide v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-ltz v6, :cond_5

    goto :goto_0

    :cond_5
    move-wide v10, v12

    .line 1122
    :goto_0
    iget-wide v14, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v6, v14, v12

    if-ltz v6, :cond_6

    move-wide v4, v14

    :cond_6
    sub-long/2addr v4, v10

    .line 1123
    iput-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1124
    iget-wide v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    long-to-double v10, v10

    long-to-double v4, v4

    div-double/2addr v4, v8

    mul-double/2addr v10, v4

    double-to-long v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1125
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const v2, 0xf4240

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1126
    iget-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v4, v2, v12

    const-wide/16 v5, 0x3e8

    if-lez v4, :cond_7

    mul-long/2addr v2, v5

    .line 1127
    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1129
    :cond_7
    iget-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v4, v2, v12

    if-lez v4, :cond_8

    mul-long/2addr v2, v5

    .line 1130
    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1132
    :cond_8
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1134
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1136
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1137
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 1138
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 1139
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 1140
    new-instance v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v19}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move/from16 v12, p5

    .line 1141
    iput v12, v8, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move-wide/from16 v13, p6

    .line 1142
    iput-wide v13, v8, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    .line 1143
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v15, 0x0

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-wide/from16 v16, p8

    move-object v10, v8

    invoke-interface/range {v9 .. v17}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIIZJ)V

    if-eqz p3, :cond_a

    .line 1145
    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    .line 1147
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    return-void

    :cond_b
    move/from16 v12, p5

    move-wide/from16 v13, p6

    .line 1149
    iget-wide v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    cmp-long v5, v8, v5

    if-gez v5, :cond_c

    move v5, v3

    goto :goto_2

    :cond_c
    move v5, v7

    :goto_2
    iput-boolean v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 1150
    iput-boolean v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    .line 1151
    iput-boolean v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    .line 1152
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 1154
    iget-boolean v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    const/4 v6, 0x2

    const/4 v8, 0x3

    if-eqz v5, :cond_d

    goto :goto_3

    :cond_d
    if-ne v1, v8, :cond_e

    move v2, v6

    goto :goto_3

    :cond_e
    const/4 v2, 0x5

    .line 1159
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v5, :cond_11

    .line 1160
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v9, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    iget v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v10, v11, v7

    aput-object v2, v11, v3

    invoke-virtual {v5, v9, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1162
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v2, :cond_f

    move v10, v7

    goto :goto_4

    :cond_f
    if-ne v1, v8, :cond_10

    move v10, v6

    goto :goto_4

    :cond_10
    move v10, v3

    .line 1169
    :goto_4
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 1170
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move/from16 v11, p2

    move-wide v15, v13

    move/from16 v13, p4

    move v14, v12

    move/from16 v12, p3

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIIJ)V

    .line 1171
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .line 1173
    :cond_11
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v1, :cond_12

    .line 1174
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-int v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v8, v3

    aput-object v5, v8, v6

    invoke-virtual {v1, v2, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1175
    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    .line 1176
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    :cond_12
    :goto_5
    return-void
.end method

.method public setButtonsBackground(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    .line 536
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 p2, 0x41a80000    # 21.0f

    .line 537
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 538
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFrontface(Z)V
    .locals 0

    .line 809
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    return-void
.end method

.method public setInternalPadding(I)V
    .locals 1

    .line 607
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->internalPaddingBottom:I

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setIsMessageTransition(Z)V
    .locals 0

    .line 1657
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isMessageTransition:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 744
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_4
    const/16 v0, 0x80

    if-nez p1, :cond_5

    .line 764
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    .line 766
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 769
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public showCamera(Z)V
    .locals 8

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 821
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-direct {v0}, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camLifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 824
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->roundcamera_flip:I

    const-string v3, "roundcamera_flip"

    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsSizePx:I

    invoke-direct {v0, v2, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 825
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 828
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 834
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "icthumb.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :catchall_0
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 841
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 843
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    .line 845
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    const/4 v0, 0x0

    .line 846
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_6

    .line 848
    sget v4, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    if-eq v4, v2, :cond_5

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v1

    .line 849
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 851
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    const-wide/16 v4, 0x0

    .line 852
    iput-wide v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const/4 v4, 0x0

    .line 853
    iput v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    .line 855
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 856
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 857
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 858
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 859
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    .line 860
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    .line 862
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_6

    .line 865
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 866
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 868
    :cond_8
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    if-eqz v0, :cond_a

    .line 869
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->pauseByRewind()V

    goto :goto_3

    .line 867
    :cond_9
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_a
    :goto_3
    if-nez p1, :cond_b

    .line 874
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$8;

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView$8;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    .line 885
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lockFile(Ljava/io/File;)V

    .line 888
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera show round camera "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 892
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_14

    .line 893
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_4
    if-ge v0, v2, :cond_f

    .line 896
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v5, v4, v0

    if-nez v5, :cond_e

    if-nez v0, :cond_d

    move v5, v3

    goto :goto_5

    :cond_d
    move v5, v1

    .line 897
    :goto_5
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v6

    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v5

    aput-object v5, v4, v0

    .line 898
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v4, v4, v0

    if-eqz v4, :cond_e

    .line 899
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    .line 900
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v5, Lorg/telegram/messenger/camera/Size;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v5, v4, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 904
    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v4, v2, 0x1

    aget-object v4, v0, v4

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v4, :cond_10

    .line 906
    aget-object v0, v0, v2

    if-nez v0, :cond_10

    .line 907
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    .line 909
    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_11

    xor-int/lit8 v0, v2, 0x1

    .line 910
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->surfaceIndex:I

    .line 912
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v0, :cond_17

    goto :goto_6

    .line 914
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v4, v2, 0x1

    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v5

    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v6

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v2

    aput-object v2, v0, v4

    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v2, :cond_13

    :goto_6
    return-void

    .line 916
    :cond_13
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v2, Lorg/telegram/messenger/camera/Size;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v2, v0, v1

    goto :goto_7

    .line 919
    :cond_14
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne v0, v2, :cond_17

    .line 920
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_15

    .line 922
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->surfaceIndex:I

    .line 924
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    if-nez v0, :cond_16

    .line 925
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v0

    .line 926
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v4, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v4, v0, v0}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v4, v2, v1

    .line 928
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v0, v3

    if-nez v2, :cond_17

    .line 929
    aget-object v2, v0, v1

    aput-object v2, v0, v3

    .line 932
    :cond_17
    :goto_7
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    .line 933
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$9;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    .line 994
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    .line 995
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    .line 997
    invoke-virtual {p0, v3, p1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    .line 998
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    return-void
.end method

.method public startAnimation(ZZ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1006
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 1007
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1008
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1010
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    if-eqz v3, :cond_1

    xor-int/lit8 v4, v1, 0x1

    .line 1012
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1014
    iget-boolean v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    if-nez v5, :cond_3

    .line 1015
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1016
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v2, :cond_2

    move v5, v4

    goto :goto_0

    .line 1018
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    :goto_0
    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 1019
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    .line 1021
    :cond_3
    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    .line 1022
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 1023
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1025
    :cond_4
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_5

    .line 1028
    iget-wide v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v7, 0x12c

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v1, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    if-eqz v1, :cond_7

    move v7, v4

    goto :goto_3

    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    const/4 v8, 0x2

    .line 1030
    new-array v9, v8, [F

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v6, 0x1

    aput v7, v9, v6

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1031
    new-instance v9, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda11;

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1035
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->buttonsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    move v11, v4

    .line 1036
    :goto_4
    new-array v12, v6, [F

    aput v11, v12, v10

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    new-array v13, v6, [F

    aput v4, v13, v10

    .line 1037
    invoke-static {v12, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v14, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    if-eqz v1, :cond_9

    const/16 v15, 0xff

    goto :goto_5

    :cond_9
    move v15, v10

    .line 1038
    :goto_5
    filled-new-array {v15}, [I

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    if-eqz v1, :cond_a

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    move v15, v4

    .line 1039
    :goto_6
    new-array v3, v6, [F

    aput v15, v3, v10

    invoke-static {v14, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    if-eqz v1, :cond_b

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_7
    move/from16 v18, v8

    goto :goto_8

    :cond_b
    const v17, 0x3dcccccd    # 0.1f

    goto :goto_7

    .line 1040
    :goto_8
    new-array v8, v6, [F

    aput v17, v8, v10

    move/from16 v17, v10

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v14, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    if-eqz v1, :cond_c

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_c
    const v19, 0x3dcccccd    # 0.1f

    .line 1041
    :goto_9
    new-array v15, v6, [F

    aput v19, v15, v17

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v14, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    new-array v1, v6, [F

    aput v5, v1, v17

    .line 1042
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v15, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_d

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_a
    move-object/from16 v21, v1

    move-object/from16 v22, v3

    const/4 v1, 0x1

    goto :goto_b

    :cond_d
    const/16 v20, 0x0

    goto :goto_a

    .line 1043
    :goto_b
    new-array v3, v1, [F

    aput v20, v3, v17

    invoke-static {v15, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_e

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_c
    move-object/from16 v20, v3

    goto :goto_d

    :cond_e
    const v15, 0x3dcccccd    # 0.1f

    goto :goto_c

    .line 1044
    :goto_d
    new-array v3, v1, [F

    aput v15, v3, v17

    invoke-static {v11, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_f

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_f
    const v16, 0x3dcccccd    # 0.1f

    .line 1045
    :goto_e
    new-array v11, v1, [F

    aput v16, v11, v17

    invoke-static {v10, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v11, v1, [F

    aput v5, v11, v17

    .line 1046
    invoke-static {v10, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/16 v6, 0xc

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v9, v6, v17

    aput-object v12, v6, v1

    aput-object v13, v6, v18

    const/4 v1, 0x3

    aput-object v22, v6, v1

    const/4 v1, 0x4

    aput-object v8, v6, v1

    const/4 v1, 0x5

    aput-object v14, v6, v1

    const/4 v1, 0x6

    aput-object v21, v6, v1

    const/4 v1, 0x7

    aput-object v20, v6, v1

    const/16 v1, 0x8

    aput-object v3, v6, v1

    const/16 v1, 0x9

    aput-object v4, v6, v1

    const/16 v1, 0xa

    aput-object v5, v6, v1

    const/16 v1, 0xb

    aput-object v7, v6, v1

    .line 1035
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez p1, :cond_10

    .line 1050
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$10;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView$10;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_f

    :cond_10
    const/4 v1, 0x0

    .line 1061
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1063
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1064
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1065
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public togglePause()V
    .locals 19

    move-object/from16 v0, p0

    .line 774
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    .line 775
    iget-wide v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v9, 0x320

    cmp-long v1, v7, v9

    if-gez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 776
    iput-boolean v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    .line 777
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    .line 778
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v1, :cond_4

    .line 779
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v7, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v6

    aput-object v9, v10, v5

    invoke-virtual {v1, v7, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 780
    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 781
    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v1, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v4

    :goto_2
    if-eqz v1, :cond_3

    move/from16 v16, v6

    goto :goto_3

    :cond_3
    const/4 v1, -0x2

    move/from16 v16, v1

    :goto_3
    const-wide/16 v17, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIIJ)V

    .line 782
    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .line 784
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v1, :cond_5

    .line 785
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    iget v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v2, v5

    aput-object v8, v2, v4

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 786
    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    .line 787
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    return-void

    .line 789
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pause()V

    return-void

    .line 791
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-eqz v1, :cond_8

    .line 792
    invoke-virtual {v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resume()V

    .line 793
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/InstantCameraView;->hideCamera(Z)V

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_7

    .line 795
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 796
    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 798
    :cond_7
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera(Z)V

    .line 800
    :try_start_0
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :catch_0
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 803
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 804
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordResumed:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
