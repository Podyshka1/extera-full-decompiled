.class public Lorg/telegram/ui/CameraScanActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;,
        Lorg/telegram/ui/CameraScanActivity$QrResult;
    }
.end annotation


# instance fields
.field private averageProcessTime:F

.field private backShadowAlpha:F

.field private backgroundHandlerThread:Landroid/os/HandlerThread;

.field private final bounds:Landroid/graphics/RectF;

.field private final boundsUpdateDuration:J

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cornerPaint:Landroid/graphics/Paint;

.field private currentType:I

.field private delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

.field private descriptionText:Landroid/widget/TextView;

.field private flashAnimator:Landroid/animation/AnimatorSet;

.field private flashButton:Landroid/widget/ImageView;

.field private final fromBounds:Landroid/graphics/RectF;

.field private final fromPoints:[Landroid/graphics/PointF;

.field private galleryButton:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private lastBoundsUpdate:J

.field private needGalleryButton:Z

.field private newRecognizedT:F

.field private normalBounds:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private final points:[Landroid/graphics/PointF;

.field private processTimesCount:J

.field private qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private qrAppearingValue:F

.field private qrLoaded:Z

.field private qrLoading:Z

.field private qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

.field private recognizeFailed:I

.field private recognizeIndex:I

.field private recognized:Z

.field private recognizedAnimator:Landroid/animation/ValueAnimator;

.field private recognizedMrzView:Landroid/widget/TextView;

.field private recognizedStart:J

.field private recognizedT:F

.field private recognizedText:Ljava/lang/String;

.field private final requestShot:Ljava/lang/Runnable;

.field protected shownAsBottomSheet:Z

.field private sps:I

.field private titleTextView:Landroid/widget/TextView;

.field private final tmp2Points:[Landroid/graphics/PointF;

.field private final tmpPoints:[Landroid/graphics/PointF;

.field private useRecognizedBounds:F

.field private useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;


# direct methods
.method public static synthetic $r8$lambda$4cb0ykEfSywGHVBhUUdlyxjpdNo(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 486
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$6vAxDu8qc3b3sW0ah2hBF5iWEjE(Lorg/telegram/ui/CameraScanActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CuC4ZySwEO1E47VaiesyPzhOTtk(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$11(Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EREpIOnK84JczxNILnmD7kkjEWo(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$FTCrHplujsFH9g6z_dun_Eqf6Ac(Lorg/telegram/ui/CameraScanActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6TKygN31H0jyRjOxGbdTQ8Fs_g(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/ui/CameraScanActivity$QrResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$14(Lorg/telegram/ui/CameraScanActivity$QrResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TUqikYo4tL2HmNsJERvbUcTx_Ys(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$TWSPYxaTjt6F34wpqXRS-PliZg0(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$onNoQrFound$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$V6eQWbkHwkWbVLXzsr24_ij8_78(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$initCameraView$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$Va7ahyGVFYH5oX3xzPf-NMbkasQ(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VvrF7SvNuxBBupjjCUNTxtqpAdQ(Lorg/telegram/ui/CameraScanActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CameraScanActivity;->lambda$initCameraView$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$XA1mQEf4OUgRJv2Z5L2-1Q4L0xE(Lorg/telegram/ui/CameraScanActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CameraScanActivity;->lambda$updateRecognized$6(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$XwMWGeAGfl4hWIQNJbBgg6Fw2v0(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$YDAb6vPa0QnGpM00C6Dm7MjPIcE(Lorg/telegram/ui/CameraScanActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dXgV5SHk971WOmhZaASBkZ8aXxU(Lorg/telegram/ui/CameraScanActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CameraScanActivity;->lambda$initCameraView$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$kmm1Atuz2DsDm40ZmHzBPX3DqIk(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->updateRecognized()V

    return-void
.end method

.method public static synthetic $r8$lambda$oie_b2RTwCiADJUeCIiOyIuxV7Q(Lorg/telegram/ui/CameraScanActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$updateRecognized$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pW-M2d9nB0tOokLJPAvuu2zEVrY(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$qR-lr7Ja7Umii3chJyagXmuoEXE(Lorg/telegram/ui/CameraScanActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v6QH-FIBo7PFTl3lPQMmptUzYQA(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->initCameraView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackShadowAlpha(Lorg/telegram/ui/CameraScanActivity;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CameraScanActivity;->backShadowAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraView(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcornerPaint(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/CameraScanActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdescriptionText(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetflashButton(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgalleryButton(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lorg/telegram/ui/CameraScanActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneedGalleryButton(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaint(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqrAppearingValue(Lorg/telegram/ui/CameraScanActivity;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearingValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecognized(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecognizedMrzView(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleTextView(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputflashAnimator(Lorg/telegram/ui/CameraScanActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedGalleryButton(Lorg/telegram/ui/CameraScanActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBounds(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misQr(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtryReadQr(Lorg/telegram/ui/CameraScanActivity;[BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CameraScanActivity;->tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateNormalBounds(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->updateNormalBounds()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 252
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScanCamera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->paint:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->path:Landroid/graphics/Path;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 113
    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->backShadowAlpha:F

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->shownAsBottomSheet:Z

    const/4 v2, 0x0

    .line 116
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v3, 0x0

    .line 117
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearingValue:F

    const/4 v4, 0x4

    .line 119
    new-array v5, v4, [Landroid/graphics/PointF;

    iput-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    .line 120
    new-array v5, v4, [Landroid/graphics/PointF;

    iput-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    .line 121
    new-array v5, v4, [Landroid/graphics/PointF;

    iput-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->tmpPoints:[Landroid/graphics/PointF;

    .line 122
    new-array v5, v4, [Landroid/graphics/PointF;

    iput-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->tmp2Points:[Landroid/graphics/PointF;

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 125
    iget-object v6, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v5

    .line 126
    iget-object v6, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v5

    .line 127
    iget-object v6, p0, Lorg/telegram/ui/CameraScanActivity;->tmpPoints:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v5

    .line 128
    iget-object v6, p0, Lorg/telegram/ui/CameraScanActivity;->tmp2Points:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    .line 133
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    const-wide/16 v4, 0x0

    .line 134
    iput-wide v4, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    const-wide/16 v6, 0x4b

    .line 135
    iput-wide v6, p0, Lorg/telegram/ui/CameraScanActivity;->boundsUpdateDuration:J

    .line 140
    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    .line 141
    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    .line 146
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    .line 147
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoaded:Z

    .line 149
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 150
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 775
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    .line 776
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    .line 778
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    .line 1015
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$7;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    .line 1048
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    .line 1049
    iput-wide v4, p0, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    .line 253
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    .line 254
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 261
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/16 p1, 0x28

    .line 270
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    return-void

    :cond_2
    const/16 p1, 0x18

    .line 266
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    return-void

    :cond_3
    const/16 p1, 0x8

    .line 263
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static createThresholdMatrix(I)Landroid/graphics/ColorMatrix;
    .locals 5

    .line 1202
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/high16 v1, -0x3c810000    # -255.0f

    int-to-float p0, p0

    mul-float/2addr p0, v1

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x42aa0000    # 85.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x4

    aput p0, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput p0, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput p0, v1, v2

    const/16 p0, 0xf

    aput v4, v1, p0

    const/16 p0, 0x10

    aput v4, v1, p0

    const/16 p0, 0x11

    aput v4, v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    aput p0, v1, v2

    const/16 p0, 0x13

    aput v4, v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v0
.end method

.method private getBounds()Landroid/graphics/RectF;
    .locals 3

    .line 956
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->getRecognizedBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 957
    iget v1, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 958
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 959
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->updateNormalBounds()V

    .line 961
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    invoke-static {v1, v0, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    :cond_1
    return-object v0
.end method

.method private getRecognizedBounds()Landroid/graphics/RectF;
    .locals 4

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42960000    # 75.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 916
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 918
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 920
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    return-object v3
.end method

.method private initCameraView()V
    .locals 5

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView;->isCameraAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    .line 825
    new-instance v0, Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v1, 0x1

    .line 826
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setUseMaxPreview(Z)V

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setOptimizeForBarcode(Z)V

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 854
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 855
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private invert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1169
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1170
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1171
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1173
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 1174
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1175
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v6, 0x14

    .line 1176
    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1182
    invoke-virtual {v5, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 1183
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1184
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isQr()Z
    .locals 3

    .line 1406
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 3

    .line 676
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isImagesAndVideoPermissionGranted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 681
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestImagesAndVideoPermission(Landroid/app/Activity;)V

    return-void

    .line 685
    :cond_1
    new-instance p1, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_QR:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v2, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(IZZLorg/telegram/ui/ChatActivity;)V

    const/4 v0, 0x1

    .line 686
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 687
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    .line 688
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$5;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    .line 722
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 6

    .line 732
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 735
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 738
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 740
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    .line 742
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    .line 743
    sget-object v1, Lorg/telegram/ui/Components/AnimationProperties;->SHAPE_DRAWABLE_ALPHA:Landroid/util/Property;

    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0x44

    goto :goto_0

    :cond_2
    const/16 v3, 0x22

    :goto_0
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 744
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 745
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/CameraScanActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$6;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 757
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setCurrentFlashMode(Ljava/lang/String;)V

    return-void

    .line 759
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 760
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setCurrentFlashMode(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$initCameraView$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x43fa0000    # 500.0f

    div-float/2addr p2, p1

    .line 838
    iput p2, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearingValue:F

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$initCameraView$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 p1, 0x0

    .line 844
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initCameraView$9()V
    .locals 3

    .line 829
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->startRecognizing()V

    .line 830
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 836
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 837
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 256
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 257
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    return-void
.end method

.method private synthetic lambda$onNoQrFound$10()V
    .locals 3

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processShot$11(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 3

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->rawMRZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz v0, :cond_0

    .line 1066
    invoke-interface {v0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V

    .line 1068
    :cond_0
    new-instance p1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    const-wide/16 v0, 0x4b0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$processShot$12()V
    .locals 2

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    .line 1094
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$processShot$13()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V

    .line 1090
    :cond_0
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processShot$14(Lorg/telegram/ui/CameraScanActivity$QrResult;)V
    .locals 1

    .line 1100
    iget-object v0, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->bounds:Landroid/graphics/RectF;

    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->cornerPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CameraScanActivity;->updateRecognizedBounds(Landroid/graphics/RectF;[Landroid/graphics/PointF;)V

    return-void
.end method

.method private synthetic lambda$processShot$15(Ljava/lang/String;)V
    .locals 1

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz v0, :cond_0

    .line 1123
    invoke-interface {v0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    .line 1125
    :cond_0
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1126
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$processShot$16()V
    .locals 3

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1135
    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1136
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1138
    iget-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-nez v0, :cond_1

    .line 1139
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$processShot$17()V
    .locals 1

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/CameraScanActivity;->processShot(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateRecognized$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 792
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 794
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 797
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 798
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->backShadowAlpha:F

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateRecognized$6(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 811
    iget-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    const/high16 p3, 0x43fa0000    # 500.0f

    if-eqz p1, :cond_0

    div-float/2addr p2, p3

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p2, p3

    sub-float p2, p1, p2

    :goto_0
    iput p2, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    .line 812
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private monochrome(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1189
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1192
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1193
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1194
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1196
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {p2}, Lorg/telegram/ui/CameraScanActivity;->createThresholdMatrix(I)Landroid/graphics/ColorMatrix;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x0

    .line 1197
    invoke-virtual {v1, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private onNoQrFound()V
    .locals 1

    .line 1040
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPointsFromBounds(Landroid/graphics/RectF;[Landroid/graphics/PointF;)V
    .locals 3

    const/4 v0, 0x0

    .line 860
    aget-object v0, p2, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x1

    .line 861
    aget-object v0, p2, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x2

    .line 862
    aget-object v0, p2, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x3

    .line 863
    aget-object p2, p2, v0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 189
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    const/4 v2, 0x1

    new-array v6, v2, [Lorg/telegram/ui/ActionBar/INavigationLayout;

    aput-object v1, v6, v0

    .line 190
    new-instance v3, Lorg/telegram/ui/CameraScanActivity$1;

    const/4 v5, 0x0

    move-object v4, p0

    move v8, p1

    move v7, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/CameraScanActivity$1;-><init>(Landroid/content/Context;Z[Lorg/telegram/ui/ActionBar/INavigationLayout;IZLorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    .line 242
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setUseLightStatusBar(Z)V

    .line 243
    invoke-static {v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    const/high16 p0, -0x1000000

    .line 244
    invoke-static {v3, p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    .line 245
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setUseLightStatusBar(Z)V

    .line 246
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 247
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v3
.end method

.method public static showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private startRecognizing()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1035
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->handler:Landroid/os/Handler;

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static toPointF([Landroid/graphics/Point;II)[Landroid/graphics/PointF;
    .locals 6

    .line 1218
    array-length v0, p0

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 1219
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1220
    new-instance v2, Landroid/graphics/PointF;

    aget-object v3, p0, v1

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const/4 v9, 0x0

    .line 1231
    :try_start_0
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 1234
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    const/4 v11, 0x1

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_0

    .line 1237
    new-instance v2, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v2

    .line 1238
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1239
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto :goto_0

    .line 1241
    :cond_0
    new-instance v2, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/vision/Frame$Builder;->setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v2

    .line 1242
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    .line 1243
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    .line 1245
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1246
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1247
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 1248
    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 1249
    iget-object v5, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/CameraScanActivity;->toPointF([Landroid/graphics/Point;II)[Landroid/graphics/PointF;

    move-result-object v5

    .line 1250
    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_3

    array-length v6, v1

    if-nez v6, :cond_1

    goto :goto_2

    .line 1257
    :cond_1
    array-length v6, v1

    move v7, v11

    move v8, v12

    :goto_1
    if-ge v13, v6, :cond_2

    aget-object v14, v1, v13

    .line 1258
    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1259
    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1260
    iget v15, v14, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1261
    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1263
    :cond_2
    invoke-virtual {v10, v12, v8, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_c

    :cond_3
    :goto_2
    move-object v10, v9

    goto/16 :goto_c

    :cond_4
    if-eqz v1, :cond_14

    .line 1266
    invoke-direct {v0, v1}, Lorg/telegram/ui/CameraScanActivity;->invert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1267
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1268
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1

    .line 1269
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1270
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1271
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1272
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1273
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 1274
    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 1275
    iget-object v5, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/CameraScanActivity;->toPointF([Landroid/graphics/Point;II)[Landroid/graphics/PointF;

    move-result-object v5

    .line 1276
    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_3

    array-length v6, v1

    if-nez v6, :cond_5

    goto :goto_2

    .line 1283
    :cond_5
    array-length v6, v1

    move v7, v11

    move v8, v12

    :goto_3
    if-ge v13, v6, :cond_6

    aget-object v14, v1, v13

    .line 1284
    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1285
    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1286
    iget v15, v14, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1287
    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1289
    :cond_6
    invoke-virtual {v10, v12, v8, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_c

    :cond_7
    const/16 v1, 0x5a

    .line 1292
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/CameraScanActivity;->monochrome(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1293
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1294
    new-instance v3, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1

    .line 1295
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1296
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1297
    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1298
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 1299
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 1300
    iget-object v4, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 1301
    iget-object v5, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    invoke-static {v5, v3, v2}, Lorg/telegram/ui/CameraScanActivity;->toPointF([Landroid/graphics/Point;II)[Landroid/graphics/PointF;

    move-result-object v5

    .line 1302
    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_a

    array-length v6, v1

    if-nez v6, :cond_8

    goto :goto_5

    .line 1309
    :cond_8
    array-length v6, v1

    move v7, v11

    move v8, v12

    :goto_4
    if-ge v13, v6, :cond_9

    aget-object v14, v1, v13

    .line 1310
    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1311
    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1312
    iget v15, v14, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1313
    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1315
    :cond_9
    invoke-virtual {v10, v12, v8, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6

    :cond_a
    :goto_5
    move-object v10, v9

    :goto_6
    move-object/from16 v23, v4

    move v4, v2

    move-object/from16 v2, v23

    goto/16 :goto_c

    :cond_b
    move v4, v2

    goto/16 :goto_b

    .line 1324
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    if-eqz v2, :cond_13

    if-eqz v1, :cond_d

    .line 1327
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    .line 1328
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1329
    new-instance v1, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4, v2}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 1330
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1331
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v4, v3

    move v3, v2

    goto :goto_7

    .line 1333
    :cond_d
    new-instance v14, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v17

    const/16 v22, 0x0

    move/from16 v21, p5

    move-object/from16 v15, p1

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    invoke-direct/range {v14 .. v22}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    .line 1335
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    move v3, v1

    move v4, v2

    move-object v1, v14

    .line 1338
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v6, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v5, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v2, v5}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1340
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v9

    .line 1343
    :cond_e
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1344
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_f

    goto :goto_a

    .line 1351
    :cond_f
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    array-length v6, v5

    move v7, v11

    move v8, v12

    move v14, v13

    :goto_8
    if-ge v14, v6, :cond_10

    aget-object v15, v5, v14

    .line 1352
    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1353
    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1354
    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1355
    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_8

    .line 1357
    :cond_10
    invoke-virtual {v10, v12, v8, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1358
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_11

    .line 1359
    new-array v5, v6, [Landroid/graphics/PointF;

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v6, :cond_15

    .line 1361
    new-instance v7, Landroid/graphics/PointF;

    .line 1362
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    aget-object v8, v8, v13

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    int-to-float v11, v3

    div-float/2addr v8, v11

    .line 1363
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    aget-object v11, v11, v13

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    int-to-float v12, v4

    div-float/2addr v11, v12

    invoke-direct {v7, v8, v11}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_11
    move-object v5, v9

    goto :goto_c

    :cond_12
    :goto_a
    move-object v5, v9

    move-object v10, v5

    goto :goto_c

    :cond_13
    const/4 v3, 0x1

    move v4, v3

    :cond_14
    :goto_b
    move-object v2, v9

    move-object v5, v2

    .line 1371
    :cond_15
    :goto_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1372
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v9

    .line 1375
    :cond_16
    iget-boolean v1, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    if-eqz v1, :cond_17

    .line 1376
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1377
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_d

    .line 1379
    :cond_17
    iget v1, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_18

    const-string v1, "tg://login?token="

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1380
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v9

    .line 1384
    :cond_18
    :goto_d
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$QrResult;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/CameraScanActivity$QrResult;-><init>(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/ui/CameraScanActivity-IA;)V

    if-eqz v10, :cond_19

    const/high16 v6, 0x41c80000    # 25.0f

    .line 1386
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41700000    # 15.0f

    .line 1387
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 1388
    iget v8, v10, Landroid/graphics/RectF;->left:F

    int-to-float v6, v6

    sub-float/2addr v8, v6

    iget v11, v10, Landroid/graphics/RectF;->top:F

    int-to-float v7, v7

    sub-float/2addr v11, v7

    iget v12, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v6

    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    invoke-virtual {v10, v8, v11, v12, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1389
    iget v6, v10, Landroid/graphics/RectF;->left:F

    int-to-float v3, v3

    div-float/2addr v6, v3

    iget v7, v10, Landroid/graphics/RectF;->top:F

    int-to-float v4, v4

    div-float/2addr v7, v4

    iget v8, v10, Landroid/graphics/RectF;->right:F

    div-float/2addr v8, v3

    iget v3, v10, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v4

    invoke-virtual {v10, v6, v7, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1394
    :cond_19
    iput-object v5, v1, Lorg/telegram/ui/CameraScanActivity$QrResult;->cornerPoints:[Landroid/graphics/PointF;

    .line 1395
    iput-object v10, v1, Lorg/telegram/ui/CameraScanActivity$QrResult;->bounds:Landroid/graphics/RectF;

    .line 1396
    iput-object v2, v1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1399
    :catchall_0
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v9
.end method

.method private updateNormalBounds()V
    .locals 9

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 942
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    .line 944
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 945
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 946
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 947
    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    sub-int v4, v0, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v0

    div-float/2addr v4, v6

    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float/2addr v7, v5

    int-to-float v8, v1

    div-float/2addr v7, v8

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v6

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v1, v8

    invoke-virtual {v3, v4, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateRecognized()V
    .locals 5

    .line 780
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    .line 781
    iget-boolean v1, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 790
    :cond_1
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    iget v1, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    .line 791
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v1, v3

    float-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 806
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 809
    :cond_2
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget-boolean v3, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    goto :goto_1

    :cond_3
    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    sub-float v3, v2, v3

    :goto_1
    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v3, v4

    invoke-direct {v1, v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 810
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private updateRecognizedBounds(Landroid/graphics/RectF;[Landroid/graphics/PointF;)V
    .locals 11

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 868
    iget-wide v2, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x4b

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-nez v4, :cond_1

    sub-long/2addr v0, v5

    .line 870
    iput-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-nez p2, :cond_0

    .line 874
    iget-object p2, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity;->setPointsFromBounds(Landroid/graphics/RectF;[Landroid/graphics/PointF;)V

    .line 875
    iget-object p2, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity;->setPointsFromBounds(Landroid/graphics/RectF;[Landroid/graphics/PointF;)V

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-ge v8, v7, :cond_6

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    aget-object p1, p1, v8

    aget-object v0, p2, v8

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    aget-object p1, p1, v8

    aget-object v0, p2, v8

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 884
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_2

    sub-long v9, v0, v2

    cmp-long v5, v9, v5

    if-gez v5, :cond_2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x42960000    # 75.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 886
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 887
    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-static {v3, v4, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    move v3, v8

    :goto_1
    if-ge v3, v7, :cond_3

    .line 890
    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    aget-object v4, v4, v3

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 891
    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    aget-object v9, v9, v3

    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 892
    invoke-static {v6, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 890
    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 896
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move v2, v8

    :goto_2
    if-ge v2, v7, :cond_3

    .line 898
    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->fromPoints:[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 901
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-nez p2, :cond_4

    .line 903
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity;->setPointsFromBounds(Landroid/graphics/RectF;[Landroid/graphics/PointF;)V

    goto :goto_4

    :cond_4
    :goto_3
    if-ge v8, v7, :cond_5

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->points:[Landroid/graphics/PointF;

    aget-object p1, p1, v8

    aget-object v2, p2, v8

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 909
    :cond_5
    :goto_4
    iput-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    .line 911
    :cond_6
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 288
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 289
    iget-boolean v2, v0, Lorg/telegram/ui/CameraScanActivity;->shownAsBottomSheet:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 291
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 292
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 295
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 296
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 298
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 299
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 302
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/CameraScanActivity$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/CameraScanActivity$2;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 311
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x7f000000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    new-instance v2, Lorg/telegram/ui/CameraScanActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/CameraScanActivity$3;-><init>(Lorg/telegram/ui/CameraScanActivity;Landroid/content/Context;)V

    .line 486
    new-instance v5, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 489
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 490
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v6, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    const-wide/16 v7, 0x1c2

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 492
    :cond_2
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->initCameraView()V

    .line 495
    :goto_1
    iget v5, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const v6, 0x22ffffff

    if-nez v5, :cond_3

    .line 496
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 497
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 499
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 501
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 502
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 503
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    const/high16 v5, -0x1000000

    .line 504
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 505
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 508
    :goto_2
    iget v5, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v5, v7, :cond_4

    if-ne v5, v8, :cond_5

    .line 509
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    :cond_5
    new-instance v5, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 513
    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 v10, 0x28

    .line 514
    invoke-static {v3, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    new-instance v10, Lorg/telegram/ui/CameraScanActivity$4;

    invoke-direct {v10, v0, v1, v5}, Lorg/telegram/ui/CameraScanActivity$4;-><init>(Lorg/telegram/ui/CameraScanActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v10, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    .line 595
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 596
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 598
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 600
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    .line 601
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 603
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 604
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 606
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    .line 607
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/16 v11, 0x51

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 609
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 611
    iget v5, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-nez v5, :cond_6

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PassportScanPassport:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PassportScanPassportInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_7

    .line 617
    :cond_6
    iget-boolean v11, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    if-eqz v11, :cond_7

    goto/16 :goto_5

    :cond_7
    if-eq v5, v9, :cond_a

    if-ne v5, v8, :cond_8

    goto/16 :goto_4

    .line 623
    :cond_8
    sget v5, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo5:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 624
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 626
    sget v5, Lorg/telegram/messenger/R$string;->AuthAnotherClientDownloadClientUrl:I

    .line 627
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v12, Lorg/telegram/messenger/R$string;->AuthAnotherWebClientUrl:I

    .line 628
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v5, v12}, [Ljava/lang/String;

    move-result-object v5

    move v12, v4

    :goto_3
    if-ge v12, v7, :cond_9

    .line 631
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2a

    .line 632
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v7, v15, 0x1

    .line 633
    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-eq v15, v3, :cond_9

    if-eq v13, v3, :cond_9

    if-eq v15, v13, :cond_9

    .line 636
    iget-object v14, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v6, v13, 0x1

    .line 637
    const-string v14, " "

    invoke-virtual {v11, v13, v6, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 638
    invoke-virtual {v11, v15, v7, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 641
    new-instance v6, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    aget-object v14, v5, v12

    invoke-direct {v6, v14, v9}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Z)V

    const/16 v14, 0x21

    invoke-virtual {v11, v6, v7, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 642
    new-instance v6, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v6, v7, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v12, v12, 0x1

    const v6, 0x22ffffff

    const/4 v7, 0x2

    goto :goto_3

    .line 648
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 650
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 651
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 652
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 653
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 621
    :cond_a
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    iget v3, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-ne v3, v8, :cond_b

    .line 658
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    const v5, -0x66000001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v3, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 661
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 662
    iget-boolean v3, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    if-eqz v3, :cond_c

    goto :goto_6

    .line 665
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AuthAnotherClientNotFound:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 669
    iget-boolean v3, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    const/high16 v4, 0x42700000    # 60.0f

    if-eqz v3, :cond_d

    .line 670
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    .line 671
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 672
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->qr_gallery:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const v6, 0x22ffffff

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const v7, 0x44ffffff    # 2047.9999f

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawableFromDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 675
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    :cond_d
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    .line 727
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->qr_flashlight:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v6, 0x22ffffff

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 731
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    :goto_7
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 767
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 769
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 771
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public destroy(ZLjava/lang/Runnable;)V
    .locals 2

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 1009
    iput-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 1011
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1012
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    .line 1411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    invoke-direct {v0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1416
    :cond_0
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    new-instance v8, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 985
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 987
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p1

    .line 988
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iget p3, p1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, p2, p3, p1, v0}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 989
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/CameraScanActivity;->tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 991
    iget-object p2, v2, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz p2, :cond_0

    .line 992
    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;

    invoke-interface {p2, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    .line 994
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    .line 997
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    move-object v2, p0

    :cond_2
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 276
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->destroy(ZLjava/lang/Runnable;)V

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->release()V

    :cond_1
    return-void
.end method

.method public processShot(Landroid/graphics/Bitmap;)V
    .locals 14

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    move-object v5, p0

    goto/16 :goto_4

    .line 1054
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    .line 1056
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getPreviewSize()Lorg/telegram/messenger/camera/Size;

    move-result-object v7

    .line 1057
    iget v4, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v4, :cond_3

    .line 1058
    invoke-static {p1, v13}, Lorg/telegram/messenger/MrzRecognizer;->recognize(Landroid/graphics/Bitmap;Z)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1059
    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I

    if-eqz v4, :cond_2

    iget v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryDay:I

    if-nez v4, :cond_1

    iget-boolean v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->doesNotExpire:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :catchall_0
    move-object v5, p0

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    if-eqz v4, :cond_2

    .line 1060
    iput-boolean v12, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1061
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V

    .line 1062
    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    move-object v5, p0

    goto/16 :goto_3

    .line 1073
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    div-float/2addr v4, v5

    float-to-int v10, v4

    .line 1074
    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    sub-int/2addr v4, v10

    div-int/lit8 v8, v4, 0x2

    .line 1075
    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v10

    div-int/lit8 v9, v4, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    move-object v5, p0

    move-object v11, p1

    .line 1077
    :try_start_1
    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/CameraScanActivity;->tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p1

    .line 1078
    iget-boolean v4, v5, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-eqz v4, :cond_4

    .line 1079
    iget v6, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    add-int/2addr v6, v12

    iput v6, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    :cond_4
    if-eqz p1, :cond_6

    .line 1082
    iput v13, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    .line 1083
    iget-object v6, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1085
    iput-boolean v12, v5, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1086
    iget-object v4, v5, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    new-instance v7, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-interface {v4, v6, v7}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v4

    iput-boolean v4, v5, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    .line 1097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/ui/CameraScanActivity;->recognizedStart:J

    .line 1098
    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1100
    :cond_5
    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/ui/CameraScanActivity$QrResult;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    .line 1102
    iget v4, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    add-int/2addr v4, v12

    iput v4, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    const/4 v6, 0x4

    if-le v4, v6, :cond_7

    .line 1103
    iget-boolean v4, v5, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    if-nez v4, :cond_7

    .line 1104
    iput-boolean v13, v5, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1105
    iput v13, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    const/4 p1, 0x0

    .line 1106
    iput-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    .line 1107
    new-instance p1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1108
    iget-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1113
    :cond_7
    :goto_1
    iget v4, v5, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    if-nez v4, :cond_8

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->bounds:Landroid/graphics/RectF;

    if-nez p1, :cond_8

    iget-boolean p1, v5, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    if-eqz p1, :cond_9

    .line 1115
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v5, Lorg/telegram/ui/CameraScanActivity;->recognizedStart:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long p1, v6, v8

    if-lez p1, :cond_b

    iget-boolean p1, v5, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    if-nez p1, :cond_b

    :cond_9
    iget-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 1117
    iget-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v4, 0x3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p1, v5, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-eq p1, v4, :cond_a

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v6, v5, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V

    .line 1120
    :cond_a
    iget-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    .line 1121
    new-instance v6, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CameraScanActivity;Ljava/lang/String;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1129
    iget p1, v5, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-ne p1, v4, :cond_c

    .line 1130
    new-instance p1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1143
    :cond_b
    iget-boolean p1, v5, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-eqz p1, :cond_c

    .line 1144
    iget p1, v5, Lorg/telegram/ui/CameraScanActivity;->sps:I

    const/16 v4, 0x3e8

    div-int/2addr v4, p1

    int-to-long v6, v4

    iget p1, v5, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    float-to-long v8, p1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1145
    iget-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1153
    :catchall_1
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    .line 1155
    :cond_c
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 1157
    iget p1, v5, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    iget-wide v0, v5, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    long-to-float v4, v0

    mul-float/2addr p1, v4

    long-to-float v4, v6

    add-float/2addr p1, v4

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    iput-wide v0, v5, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    long-to-float v4, v0

    div-float/2addr p1, v4

    iput p1, v5, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    const-wide/16 v6, 0x1e

    .line 1158
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v5, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    .line 1160
    iget-boolean p1, v5, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-nez p1, :cond_d

    .line 1161
    iget-object p1, v5, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_d
    :goto_4
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    return-void
.end method
