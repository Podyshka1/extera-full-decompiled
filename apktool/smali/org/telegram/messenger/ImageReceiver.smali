.class public Lorg/telegram/messenger/ImageReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;,
        Lorg/telegram/messenger/ImageReceiver$SetImageBackup;,
        Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;,
        Lorg/telegram/messenger/ImageReceiver$Decorator;,
        Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;,
        Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CROSSFADE_DURATION:I = 0x96

.field private static final TYPE_CROSSFDADE:I = 0x2

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_MEDIA:I = 0x3

.field public static final TYPE_THUMB:I = 0x1

.field private static final radii:[F

.field private static selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private static selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field private allowCrossfadeWithImage:Z

.field private allowDecodeSingleFrame:Z

.field private allowDrawWhileCacheGenerating:Z

.field private allowLoadingOnAttachedOnly:Z

.field private allowLottieVibration:Z

.field private allowStartAnimation:Z

.field private allowStartLottieAnimation:Z

.field private animateFromIsPressed:I

.field public animatedFileDrawableRepeatMaxCount:I

.field private animationReadySent:Z

.field private attachedToWindow:Z

.field private autoRepeat:I

.field private autoRepeatCount:I

.field private autoRepeatTimeout:J

.field private blendMode:Ljava/lang/Object;

.field private canceledLoading:Z

.field private centerRotation:Z

.field public clip:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private composeShader:Landroid/graphics/ComposeShader;

.field private crossfadeAlpha:B

.field private crossfadeByScale:F

.field private crossfadeDuration:I

.field private crossfadeImage:Landroid/graphics/drawable/Drawable;

.field private crossfadeKey:Ljava/lang/String;

.field private crossfadeShader:Landroid/graphics/BitmapShader;

.field private crossfadeWithOldImage:Z

.field private crossfadeWithThumb:Z

.field private crossfadingWithThumb:Z

.field private currentAccount:I

.field private currentAlpha:F

.field private currentCacheType:I

.field private currentExt:Ljava/lang/String;

.field private currentGuid:I

.field private currentImageDrawable:Landroid/graphics/drawable/Drawable;

.field private currentImageFilter:Ljava/lang/String;

.field private currentImageKey:Ljava/lang/String;

.field private currentImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentKeyQuality:Z

.field private currentLayerNum:I

.field private currentMediaDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMediaFilter:Ljava/lang/String;

.field private currentMediaKey:Ljava/lang/String;

.field private currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentOpenedLayerFlags:I

.field private currentParentObject:Ljava/lang/Object;

.field private currentSize:J

.field private currentThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private currentThumbFilter:Ljava/lang/String;

.field private currentThumbKey:Ljava/lang/String;

.field private currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentTime:J

.field private decorators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageReceiver$Decorator;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private final drawRegion:Landroid/graphics/RectF;

.field private emojiPaused:Z

.field private emptyRoundRadius:[I

.field private endTime:J

.field private fileLoadingPriority:I

.field private forceCrossfade:Z

.field private forceLoding:Z

.field private forcePreview:Z

.field private gradientBitmap:Landroid/graphics/Bitmap;

.field private gradientShader:Landroid/graphics/BitmapShader;

.field private ignoreImageSet:Z

.field public ignoreNotifications:Z

.field private imageH:F

.field protected imageInvert:I

.field protected imageOrientation:I

.field private imageShader:Landroid/graphics/BitmapShader;

.field private imageTag:I

.field private imageW:F

.field private imageX:F

.field private imageY:F

.field private invalidateAll:Z

.field private isAspectFit:Z

.field private isLastFrame:I

.field private isPressed:I

.field private isRoundRect:Z

.field private isRoundVideo:Z

.field private isVisible:Z

.field private lastUpdateAlphaTime:J

.field private legacyBitmap:Landroid/graphics/Bitmap;

.field private legacyCanvas:Landroid/graphics/Canvas;

.field private legacyPaint:Landroid/graphics/Paint;

.field private legacyShader:Landroid/graphics/BitmapShader;

.field private final loadingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private manualAlphaAnimator:Z

.field private mark:Ljava/lang/Object;

.field private mediaShader:Landroid/graphics/BitmapShader;

.field private mediaTag:I

.field private needsQualityThumb:Z

.field private overrideAlpha:F

.field private param:I

.field private parentRunnable:Ljava/lang/Runnable;

.field private parentView:Landroid/view/View;

.field preloadReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private pressedProgress:F

.field private previousAlpha:F

.field private qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private roundPaint:Landroid/graphics/Paint;

.field private final roundPath:Landroid/graphics/Path;

.field private final roundRadius:[I

.field private final roundRect:Landroid/graphics/RectF;

.field private setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

.field private final shaderMatrix:Landroid/graphics/Matrix;

.field private shouldGenerateQualityThumb:Z

.field private sideClip:F

.field private skipUpdateFrame:Z

.field private startTime:J

.field private staticThumbDrawable:Landroid/graphics/drawable/Drawable;

.field public staticThumbShader:Landroid/graphics/BitmapShader;

.field private strippedLocation:Lorg/telegram/messenger/ImageLocation;

.field private thumbInvert:I

.field private thumbOrientation:I

.field public thumbShader:Landroid/graphics/BitmapShader;

.field private thumbTag:I

.field private uniqKeyPrefix:Ljava/lang/String;

.field private useRoundForThumb:Z

.field private useRoundRadius:Z

.field public useSharedAnimationQueue:Z

.field private videoThumbIsSame:Z

.field private visibleInvalidate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 233
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0x222223

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 234
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v2, -0x444445

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/16 v0, 0x8

    .line 332
    new-array v0, v0, [F

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowCrossfadeWithImage:Z

    .line 237
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    .line 281
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    .line 293
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    .line 294
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 295
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    .line 298
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    const/4 v1, -0x1

    .line 299
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    .line 317
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    .line 318
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    .line 322
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    const/4 v1, 0x4

    .line 323
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 325
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    .line 329
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    .line 330
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    .line 331
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 333
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 338
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 340
    iput-byte v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const v1, 0x3d4ccccd    # 0.05f

    .line 343
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    const/16 v1, 0x96

    .line 348
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 355
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    .line 357
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    .line 366
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 367
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 368
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return-void
.end method

.method private checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 8

    .line 1812
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->manualAlphaAnimator:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1815
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 1818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1819
    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    const-wide/16 v2, 0x10

    :cond_1
    const-wide/16 v4, 0x1e

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 1823
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    move-wide v2, v4

    .line 1826
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    long-to-float v0, v2

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_0

    .line 1828
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    int-to-float p1, p1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1830
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 1831
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1832
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 1833
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1834
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 1835
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    :cond_4
    if-eqz p2, :cond_5

    .line 1840
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageReceiver;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1842
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    :cond_6
    :goto_1
    return-void
.end method

.method private drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    .locals 9

    if-eqz p3, :cond_4

    .line 1741
    instance-of v2, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_0

    .line 1742
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iget v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    iget v5, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    iget-object v7, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    iget v8, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V

    return-void

    .line 1743
    :cond_0
    instance-of v2, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_1

    .line 1744
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v2, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iget v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    iget v5, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    iget-object v7, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    iget v8, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V

    return-void

    .line 1746
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1748
    iget-object v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    .line 1749
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    .line 1751
    :cond_2
    iget-object v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1752
    iget-object v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    iget-object v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1753
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1754
    iget v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1755
    iget v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1756
    iget-object v1, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1757
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    .line 1761
    :cond_4
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1762
    instance-of v1, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_5

    .line 1763
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void

    .line 1764
    :cond_5
    instance-of v1, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_6

    .line 1765
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    return-void

    .line 1767
    :cond_6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 9

    .line 1222
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const v3, 0x3dda740e

    sub-float/2addr v1, v3

    .line 1223
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1225
    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1227
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 1229
    :cond_1
    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v7, :cond_2

    .line 1230
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1231
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->animateFromIsPressed:I

    .line 1233
    :cond_2
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_4

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    .line 1236
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IIILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    int-to-float v1, p3

    .line 1237
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    mul-float/2addr v1, v2

    float-to-int v3, v1

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->animateFromIsPressed:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IIILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return-void

    .line 1234
    :goto_0
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IIILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return-void
.end method

.method public static getAvatarLocalFile(ILorg/telegram/tgnet/TLObject;)Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 516
    :try_start_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 517
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/FileLoader;->getLocalFile(Lorg/telegram/messenger/ImageLocation;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 520
    :cond_0
    invoke-virtual {v2, p1, v2, v1}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    .line 521
    iget-object p1, v2, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "jpg"

    const-string v4, "."

    if-eqz p1, :cond_1

    .line 522
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {p0, v3}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 523
    :cond_1
    iget-object p1, v2, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v5, :cond_a

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 525
    :cond_2
    iget-object p1, v2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz p1, :cond_3

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 527
    :cond_3
    iget-object p1, v2, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz p1, :cond_4

    .line 528
    iget-object p1, p1, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object p0, p0, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 530
    :cond_4
    iget-object p1, v2, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz p1, :cond_5

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 532
    :cond_5
    iget-object p1, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_b

    .line 533
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2e

    .line 535
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, -0x1

    const-string v5, ""

    if-ne v3, v4, :cond_6

    move-object p1, v5

    goto :goto_0

    .line 538
    :cond_6
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 540
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_8

    .line 541
    const-string/jumbo p1, "video/mp4"

    iget-object v1, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 542
    const-string v5, ".mp4"

    goto :goto_1

    .line 543
    :cond_7
    const-string/jumbo p1, "video/x-matroska"

    iget-object v1, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 544
    const-string v5, ".mkv"

    goto :goto_1

    :cond_8
    move-object v5, p1

    .line 549
    :cond_9
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 524
    :cond_a
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 551
    :cond_b
    :goto_3
    new-instance p1, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    return-object p1

    .line 556
    :goto_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private hasRoundRadius()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private loadImage()V
    .locals 2

    .line 804
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->preloadReceivers:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/util/List;)V

    .line 805
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method private onBitmapException(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    .line 1798
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1799
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1800
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_0

    .line 1801
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1802
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1803
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_0

    .line 1804
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1805
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1806
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1808
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-wide v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    iget-object v10, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    iget v12, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V
    .locals 2

    .line 1021
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1022
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1024
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    return-void

    .line 1025
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1026
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    return-void

    .line 1027
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 1028
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 1029
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz p2, :cond_6

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_6

    .line 1030
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_3

    .line 1031
    new-instance p1, Landroid/graphics/ComposeShader;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    return-void

    .line 1033
    :cond_3
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1034
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 1035
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 1036
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 1037
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1038
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1040
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 1041
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 1042
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 1043
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_6

    .line 1044
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    .line 1045
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_6
    return-void
.end method

.method private setStaticDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1005
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v1, :cond_2

    .line 1006
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1009
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AttachableDrawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1011
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1012
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v1, :cond_3

    .line 1013
    check-cast p1, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1015
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 1016
    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1066
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object v1

    .line 1067
    instance-of v2, p1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1068
    check-cast p1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    aget v2, v1, v3

    int-to-float v2, v2

    aget v0, v1, v0

    int-to-float v0, v0

    const/4 v3, 0x2

    aget v3, v1, v3

    int-to-float v3, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v3, v1}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->setRadii(FFFF)V

    return-void

    .line 1069
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver;->hasRoundRadius()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_3

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1084
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V

    return-void

    .line 1070
    :cond_4
    :goto_0
    instance-of v0, p1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v0, :cond_5

    .line 1071
    check-cast p1, Lorg/telegram/ui/Components/AvatarDrawable;

    aget v0, v1, v3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    return-void

    .line 1073
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1074
    instance-of v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_6

    goto :goto_1

    .line 1076
    :cond_6
    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_7

    .line 1077
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1078
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    return-void

    .line 1079
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1080
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V
    .locals 1

    .line 3291
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    .line 3294
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3295
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_1

    .line 3296
    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageReceiver$Decorator;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_1
    return-void
.end method

.method public addLoadingImageRunnable(Ljava/lang/Runnable;)V
    .locals 2

    .line 3172
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3173
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bumpPriority()V
    .locals 1

    .line 3239
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageLoader;->changeFileLoadingPriorityForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public canInvertBitmap()Z
    .locals 1

    .line 809
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public cancelLoadImage()V
    .locals 2

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    .line 373
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 374
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    return-void
.end method

.method public clearDecorators()V
    .locals 2

    .line 3281
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3282
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3283
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3284
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver$Decorator;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$Decorator;->onDetachedFromWidnow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3287
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public clearImage()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1090
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 3085
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 3086
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 3087
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3088
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 3089
    aget-object p2, p3, v0

    move-object v2, p2

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3090
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v2, :cond_0

    .line 3091
    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3094
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3095
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 3096
    aget-object p2, p3, v0

    move-object v2, p2

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3097
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v2, :cond_1

    .line 3098
    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3101
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3102
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 3103
    aget-object p1, p3, v0

    move-object p2, p1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3104
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p2, :cond_9

    .line 3105
    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void

    .line 3108
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-ne p1, p2, :cond_5

    .line 3109
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    .line 3110
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p2, p3, :cond_3

    goto/16 :goto_0

    .line 3113
    :cond_3
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-eqz p1, :cond_9

    .line 3115
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3116
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3117
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 3119
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3121
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    return-void

    .line 3124
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne p1, p2, :cond_9

    .line 3125
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    .line 3126
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_9

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_6

    goto :goto_0

    .line 3129
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p1, :cond_9

    .line 3131
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3133
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    .line 3135
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3136
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3138
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    .line 3139
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 3140
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 3141
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    :cond_9
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1855
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    .line 1860
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1861
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1862
    iget v0, v1, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v3, v1, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v4, v0

    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v5, v3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v0, -0x1000000

    .line 1863
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    if-eqz v8, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    .line 1891
    :try_start_0
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetanimation(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    .line 1892
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetlottieDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    .line 1893
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetroundRadius(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v5

    .line 1894
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetmediaDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1895
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetmediaShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v7

    .line 1896
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetimageDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1897
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetimageShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v12

    .line 1898
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetthumbShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v13

    .line 1899
    iget-object v14, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 1900
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetcrossfadeImage(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1901
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetcrossfadeWithOldImage(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    .line 1902
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetcrossfadingWithThumb(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v16

    .line 1903
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetthumbDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1904
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetstaticThumbDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1905
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetcurrentAlpha(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F

    move-result v19

    .line 1906
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetpreviousAlpha(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F

    move-result v20

    .line 1907
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetcrossfadeShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v21

    .line 1908
    iget-boolean v9, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animationNotReady:Z

    .line 1909
    iget v0, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    move-object/from16 v30, v18

    move/from16 v18, v0

    move/from16 v0, v19

    move-object/from16 v19, v21

    move/from16 v21, v9

    move-object v9, v6

    move-object/from16 v6, v30

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    const/16 v23, 0x0

    goto/16 :goto_1c

    .line 1912
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    .line 1913
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    .line 1914
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 1915
    iget-object v6, v1, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 1916
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 1917
    iget-object v11, v1, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 1918
    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 1919
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1920
    iget-object v13, v1, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 1921
    iget-object v14, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 1923
    iget-boolean v9, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 1924
    iget-object v15, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    .line 1925
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 1926
    iget v0, v1, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    move/from16 v18, v0

    .line 1927
    iget v0, v1, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    move/from16 v19, v0

    .line 1928
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    move-object/from16 v20, v0

    .line 1929
    iget v0, v1, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    if-eqz v3, :cond_3

    .line 1930
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v21, :cond_5

    :cond_4
    const/16 v21, 0x1

    goto :goto_2

    :cond_5
    const/16 v21, 0x0

    :goto_2
    move/from16 v30, v18

    move/from16 v18, v0

    move/from16 v0, v30

    move/from16 v30, v9

    move-object v9, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v16

    move/from16 v16, v30

    move-object/from16 v30, v20

    move/from16 v20, v19

    move-object/from16 v19, v30

    .line 1933
    :goto_3
    :try_start_1
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-nez v2, :cond_6

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->emptyRoundRadius:[I

    :cond_6
    move-object v2, v5

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v2, p1

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_7

    .line 1936
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    :cond_7
    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    :goto_6
    if-nez v21, :cond_8

    .line 1938
    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    if-nez v3, :cond_8

    if-nez v10, :cond_8

    const/4 v3, 0x1

    .line 1939
    iput-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 1940
    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v4, :cond_a

    .line 1941
    invoke-interface {v4, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1946
    :cond_a
    :goto_7
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    const/16 v22, 0x0

    if-nez v4, :cond_b

    if-eqz v9, :cond_b

    if-nez v21, :cond_b

    .line 1949
    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 1950
    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->imageInvert:I

    move-object v12, v7

    move v7, v5

    move-object v5, v9

    goto :goto_9

    :cond_b
    if-nez v4, :cond_d

    if-eqz v11, :cond_d

    if-eqz v21, :cond_c

    if-eqz v9, :cond_d

    .line 1954
    :cond_c
    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 1955
    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->imageInvert:I

    move v7, v5

    move-object v5, v11

    const/16 v21, 0x0

    goto :goto_9

    :cond_d
    if-eqz v15, :cond_e

    if-nez v16, :cond_e

    .line 1960
    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 1961
    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->imageInvert:I

    move v7, v5

    move-object v5, v15

    move-object/from16 v12, v19

    goto :goto_9

    :cond_e
    if-eqz v17, :cond_f

    .line 1965
    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    .line 1966
    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->thumbInvert:I

    move v7, v5

    move-object v12, v13

    move-object/from16 v5, v17

    goto :goto_9

    .line 1967
    :cond_f
    instance-of v4, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_11

    .line 1969
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v4, :cond_10

    if-nez v14, :cond_10

    .line 1970
    invoke-direct {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1971
    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    move-object v7, v4

    goto :goto_8

    :cond_10
    move-object v7, v14

    .line 1974
    :goto_8
    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    .line 1975
    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->thumbInvert:I

    move-object v12, v7

    move-object v14, v12

    move v7, v5

    move-object v5, v6

    goto :goto_9

    :cond_11
    move-object/from16 v5, v22

    move-object v12, v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1979
    :goto_9
    iget v3, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    const/16 v24, 0x0

    cmpl-float v25, v3, v24

    move/from16 v26, v10

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v25, :cond_12

    mul-float/2addr v3, v0

    add-float/2addr v3, v0

    .line 1980
    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v25, v3

    goto :goto_a

    :cond_12
    move/from16 v25, v0

    :goto_a
    const/high16 v27, 0x437f0000    # 255.0f

    if-eqz v5, :cond_28

    .line 1984
    iget-byte v3, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    if-eqz v3, :cond_26

    cmpl-float v3, v20, v10

    if-eqz v3, :cond_13

    if-eq v5, v11, :cond_14

    if-ne v5, v9, :cond_13

    goto :goto_b

    :cond_13
    move-object v3, v6

    move/from16 v28, v10

    move/from16 v10, v21

    const/16 v23, 0x1

    move v6, v4

    move-object/from16 v21, v5

    goto :goto_c

    :cond_14
    :goto_b
    if-eqz v6, :cond_13

    .line 1986
    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v3, :cond_15

    if-nez v14, :cond_15

    .line 1987
    invoke-direct {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1988
    iget-object v14, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    :cond_15
    mul-float v3, v18, v27

    float-to-int v3, v3

    move/from16 v23, v4

    move v4, v3

    move-object v3, v6

    move/from16 v6, v23

    move/from16 v28, v10

    move/from16 v10, v21

    const/16 v23, 0x1

    move-object/from16 v21, v5

    move-object v5, v14

    move-object v14, v2

    move-object/from16 v2, p1

    .line 1990
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v14

    move-object v14, v5

    :goto_c
    move-object v5, v2

    move-object/from16 v2, v17

    .line 1992
    :try_start_2
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_16

    if-eqz v10, :cond_16

    mul-float v0, v18, v27

    float-to-int v4, v0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object v5, v12

    move-object/from16 v3, v21

    .line 1993
    :try_start_3
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    move-object v12, v3

    move-object/from16 v8, p2

    move-object/from16 v21, v12

    goto/16 :goto_19

    :cond_16
    move/from16 v29, v7

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    move/from16 v21, v6

    if-eqz v4, :cond_21

    cmpl-float v4, v25, v28

    if-eqz v4, :cond_21

    if-eq v12, v11, :cond_1b

    if-ne v12, v9, :cond_17

    goto :goto_f

    :cond_17
    if-eq v12, v2, :cond_19

    if-ne v12, v15, :cond_18

    goto :goto_d

    :cond_18
    if-ne v12, v3, :cond_1e

    if-eqz v15, :cond_1e

    goto :goto_10

    :cond_19
    :goto_d
    if-eqz v3, :cond_1e

    .line 2016
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v2, :cond_1a

    if-nez v14, :cond_1a

    .line 2017
    invoke-direct {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2018
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    :goto_e
    move-object v13, v2

    goto :goto_11

    :cond_1a
    move-object v13, v14

    goto :goto_11

    :cond_1b
    :goto_f
    if-eqz v15, :cond_1c

    :goto_10
    move-object v3, v15

    move-object/from16 v13, v19

    goto :goto_11

    :cond_1c
    if-eqz v2, :cond_1d

    move-object v3, v2

    goto :goto_11

    :cond_1d
    if-eqz v3, :cond_1e

    .line 2007
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v2, :cond_1a

    if-nez v14, :cond_1a

    .line 2008
    invoke-direct {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2009
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    goto :goto_e

    :cond_1e
    move-object/from16 v3, v22

    move-object v13, v3

    :goto_11
    if-eqz v3, :cond_21

    .line 2030
    instance-of v2, v3, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v2, :cond_20

    instance-of v2, v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v2, :cond_1f

    goto :goto_13

    :cond_1f
    mul-float v20, v20, v18

    mul-float v2, v20, v27

    :goto_12
    float-to-int v2, v2

    move v4, v2

    goto :goto_14

    :cond_20
    :goto_13
    sub-float v2, v28, v25

    mul-float v2, v2, v18

    mul-float v2, v2, v27

    goto :goto_12

    .line 2035
    :goto_14
    iget v6, v1, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->thumbInvert:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object v14, v5

    move-object v5, v13

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    const/16 v5, 0xff

    if-eq v4, v5, :cond_22

    .line 2036
    instance-of v4, v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v4, :cond_22

    .line 2037
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_15

    :cond_21
    move-object/from16 v2, p1

    move-object v14, v5

    .line 2042
    :cond_22
    :goto_15
    :try_start_5
    iget v3, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    cmpl-float v3, v3, v24

    if-lez v3, :cond_24

    cmpg-float v3, v25, v28

    if-gez v3, :cond_24

    if-eqz v16, :cond_24

    .line 2043
    :try_start_6
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 2045
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 2046
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v6, v1, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v6, v4

    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v3, 0x0

    .line 2047
    :goto_16
    array-length v4, v14

    if-ge v3, v4, :cond_23

    .line 2048
    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v5, v3, 0x2

    aget v6, v14, v3

    int-to-float v7, v6

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    int-to-float v6, v6

    .line 2049
    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2051
    :cond_23
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sget-object v5, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2052
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2053
    iget v3, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v28, v0

    mul-float/2addr v3, v0

    add-float v3, v3, v28

    .line 2054
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v0

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v4

    invoke-virtual {v2, v3, v3, v0, v4}, Landroid/graphics/Canvas;->scale(FFFF)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move/from16 v0, v23

    goto :goto_17

    :cond_24
    const/4 v0, 0x0

    :goto_17
    mul-float v18, v18, v25

    mul-float v3, v18, v27

    float-to-int v4, v3

    move-object/from16 v8, p2

    move-object v3, v12

    move-object/from16 v5, v17

    move/from16 v6, v21

    move/from16 v7, v29

    .line 2056
    :try_start_7
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    if-eqz v0, :cond_25

    .line 2058
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_18

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_25
    :goto_18
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v21, v3

    goto :goto_19

    :cond_26
    move v6, v4

    move-object v3, v5

    move-object v5, v12

    move/from16 v10, v21

    const/16 v23, 0x1

    mul-float v0, v18, v27

    float-to-int v4, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    .line 2062
    :try_start_8
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    move-object/from16 v21, v3

    :goto_19
    if-eqz v10, :cond_27

    .line 2065
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v0, :cond_27

    move/from16 v3, v23

    goto :goto_1a

    :cond_27
    const/4 v3, 0x0

    :goto_1a
    invoke-direct {v1, v3, v8}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    move-object/from16 v2, p1

    goto :goto_1b

    :cond_28
    move-object v3, v6

    move/from16 v10, v21

    const/16 v23, 0x1

    move-object/from16 v21, v5

    if-eqz v3, :cond_2a

    .line 2068
    instance-of v0, v3, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v0, :cond_29

    .line 2069
    move-object v6, v3

    check-cast v6, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_29
    mul-float v0, v18, v27

    float-to-int v4, v0

    .line 2071
    iget v6, v1, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->thumbInvert:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v5, 0x0

    move-object/from16 v2, p1

    :try_start_9
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    .line 2072
    invoke-direct {v1, v10, v8}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    goto :goto_1b

    :cond_2a
    move-object/from16 v2, p1

    .line 2075
    invoke-direct {v1, v10, v8}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/16 v23, 0x0

    :goto_1b
    if-nez v21, :cond_2b

    if-eqz v10, :cond_2b

    if-nez v26, :cond_2b

    .line 2079
    :try_start_a
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1d

    :catch_3
    move-exception v0

    .line 2082
    :goto_1c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2084
    :cond_2b
    :goto_1d
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 2085
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    if-eqz v23, :cond_2d

    .line 2087
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    const/4 v9, 0x0

    .line 2088
    :goto_1e
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2d

    .line 2089
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver$Decorator;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver$Decorator;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_2d
    return v23
.end method

.method protected drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IIILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    if-eqz v8, :cond_0

    .line 1252
    iget v9, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    .line 1253
    iget v10, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    .line 1254
    iget v11, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    .line 1255
    iget v12, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    .line 1256
    iget-object v13, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->drawRegion:Landroid/graphics/RectF;

    .line 1257
    iget-object v14, v8, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1258
    invoke-static {v8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetroundRadius(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v15

    :goto_0
    move-object/from16 v16, v15

    goto :goto_1

    .line 1260
    :cond_0
    iget v9, v1, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 1261
    iget v10, v1, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 1262
    iget v11, v1, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    .line 1263
    iget v12, v1, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 1264
    iget-object v13, v1, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    .line 1265
    iget-object v14, v1, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1266
    iget-object v15, v1, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    goto :goto_0

    .line 1268
    :goto_1
    iget-boolean v15, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-nez v15, :cond_1

    iget-object v15, v1, Lorg/telegram/messenger/ImageReceiver;->emptyRoundRadius:[I

    :goto_2
    move/from16 v16, v11

    goto :goto_3

    :cond_1
    move-object/from16 v15, v16

    goto :goto_2

    .line 1269
    :goto_3
    instance-of v11, v2, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v11

    const/16 v19, 0x0

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v17, :cond_62

    const/high16 v17, 0x3f800000    # 1.0f

    .line 1270
    move-object v11, v2

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v12

    .line 1271
    instance-of v12, v2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v12, :cond_2

    move/from16 v22, v12

    .line 1272
    move-object v12, v2

    check-cast v12, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v8, v1, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    iput-boolean v8, v12, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    goto :goto_4

    :cond_2
    move/from16 v22, v12

    .line 1273
    instance-of v8, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v8, :cond_3

    .line 1274
    move-object v8, v2

    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-boolean v12, v1, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    iput-boolean v12, v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 1279
    iget-object v8, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    goto :goto_5

    .line 1281
    :cond_4
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 1283
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v23, v9

    const/16 v9, 0x1d

    if-lt v12, v9, :cond_6

    .line 1284
    iget-object v9, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v9, :cond_5

    move-object/from16 v24, v9

    iget-object v9, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-nez v9, :cond_5

    .line 1285
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_6

    :cond_5
    const/4 v9, 0x0

    .line 1287
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_6
    :goto_6
    if-eqz v8, :cond_7

    .line 1290
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_9

    if-nez v7, :cond_9

    if-eqz v4, :cond_8

    .line 1293
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    .line 1294
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v7, v2, :cond_d

    .line 1295
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    :cond_9
    if-nez v8, :cond_d

    if-eqz v7, :cond_d

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    if-eqz v4, :cond_a

    .line 1300
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v8, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_8

    .line 1302
    :cond_a
    sget-object v7, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    :cond_b
    if-eqz v4, :cond_c

    .line 1306
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v8, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_8

    .line 1308
    :cond_c
    sget-object v7, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_d
    :goto_8
    if-eqz v14, :cond_f

    .line 1312
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-nez v7, :cond_f

    if-eqz v4, :cond_e

    .line 1314
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_9

    .line 1316
    :cond_e
    invoke-virtual {v11, v14}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1321
    :cond_f
    :goto_9
    instance-of v7, v11, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/16 v8, 0x10e

    const/16 v14, 0x5a

    const/16 v25, 0x0

    if-nez v7, :cond_10

    instance-of v9, v11, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v9, :cond_11

    :cond_10
    move/from16 v26, v7

    goto :goto_c

    .line 1330
    :cond_11
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 1331
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-eqz v26, :cond_12

    goto/16 :goto_44

    :cond_12
    move/from16 v26, v7

    .line 1334
    rem-int/lit16 v7, v5, 0x168

    if-eq v7, v14, :cond_14

    if-ne v7, v8, :cond_13

    goto :goto_a

    .line 1338
    :cond_13
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1339
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    goto :goto_b

    .line 1335
    :cond_14
    :goto_a
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1336
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1341
    :goto_b
    instance-of v8, v11, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    goto :goto_f

    .line 1322
    :goto_c
    rem-int/lit16 v7, v5, 0x168

    if-eq v7, v14, :cond_16

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_15

    goto :goto_e

    .line 1326
    :cond_15
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    .line 1327
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v9

    :goto_d
    move/from16 v8, v25

    goto :goto_f

    .line 1323
    :cond_16
    :goto_e
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    .line 1324
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v9

    goto :goto_d

    .line 1343
    :goto_f
    iget v14, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    mul-float v27, v14, v20

    sub-float v27, v21, v27

    mul-float v14, v14, v20

    sub-float v14, v16, v14

    cmpl-float v28, v21, v19

    move/from16 v29, v8

    if-nez v28, :cond_17

    move/from16 v8, v17

    goto :goto_10

    :cond_17
    int-to-float v8, v7

    div-float v8, v8, v27

    :goto_10
    cmpl-float v30, v16, v19

    move/from16 v31, v8

    if-nez v30, :cond_18

    move/from16 v8, v17

    goto :goto_11

    :cond_18
    int-to-float v8, v9

    div-float/2addr v8, v14

    :goto_11
    const v32, 0x3f99999a    # 1.2f

    if-eqz v29, :cond_19

    div-float v31, v31, v32

    div-float v8, v8, v32

    :cond_19
    move/from16 v38, v14

    move v14, v8

    move/from16 v8, v31

    move/from16 v31, v38

    if-eqz v4, :cond_3e

    if-nez p8, :cond_3e

    .line 1353
    iget-boolean v12, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    const/high16 v2, 0x42b40000    # 90.0f

    if-eqz v12, :cond_23

    .line 1354
    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    int-to-float v7, v7

    div-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    int-to-float v7, v7

    sub-float v12, v21, v7

    div-float v12, v12, v20

    add-float v12, v23, v12

    int-to-float v9, v9

    sub-float v14, v16, v9

    div-float v14, v14, v20

    add-float/2addr v14, v10

    add-float v7, v21, v7

    div-float v7, v7, v20

    add-float v7, v23, v7

    add-float v9, v16, v9

    div-float v9, v9, v20

    add-float/2addr v10, v9

    .line 1357
    invoke-virtual {v13, v12, v14, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1359
    iget-boolean v7, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v7, :cond_60

    .line 1360
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 1361
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v9, v13, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, v13, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eqz v6, :cond_1c

    .line 1363
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1a

    const/high16 v9, -0x40800000    # -1.0f

    :goto_12
    const/4 v10, 0x2

    goto :goto_13

    :cond_1a
    move/from16 v9, v17

    goto :goto_12

    :goto_13
    if-ne v6, v10, :cond_1b

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_14

    :cond_1b
    move/from16 v6, v17

    :goto_14
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v10, v10, v20

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float v12, v12, v20

    invoke-virtual {v7, v9, v6, v10, v12}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_1c
    const/16 v6, 0x5a

    if-ne v5, v6, :cond_1d

    .line 1366
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1367
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    move/from16 v6, v19

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_15

    :cond_1d
    const/16 v2, 0xb4

    if-ne v5, v2, :cond_1e

    .line 1369
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1370
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_15

    :cond_1e
    const/16 v2, 0x10e

    if-ne v5, v2, :cond_1f

    .line 1372
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1373
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1f
    :goto_15
    div-float v2, v17, v8

    .line 1376
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1378
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1379
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1380
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1381
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1383
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-eqz v0, :cond_21

    if-eqz v3, :cond_60

    .line 1386
    :try_start_0
    aget v0, v15, v25

    if-nez v0, :cond_20

    .line 1387
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    :catch_0
    move-exception v0

    goto :goto_16

    .line 1389
    :cond_20
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v0, v0

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3b

    .line 1393
    :goto_16
    invoke-direct {v1, v11}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1394
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    :cond_21
    move/from16 v0, v25

    .line 1397
    :goto_17
    array-length v2, v15

    if-ge v0, v2, :cond_22

    .line 1398
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v4, v0, 0x2

    aget v5, v15, v0

    int-to-float v6, v5

    aput v6, v2, v4

    const/16 v24, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v5

    .line 1399
    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1401
    :cond_22
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1402
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1403
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    if-eqz v3, :cond_60

    .line 1405
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    .line 1410
    :cond_23
    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    if-eqz v12, :cond_24

    .line 1411
    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v34, v15

    iget-object v15, v1, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v35, v11

    const/4 v11, 0x0

    invoke-virtual {v12, v11, v11, v2, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1412
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v11, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    const/4 v15, 0x0

    invoke-virtual {v2, v11, v15, v12, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1413
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11, v15, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_18

    :cond_24
    move-object/from16 v35, v11

    move-object/from16 v34, v15

    .line 1415
    :goto_18
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-ne v4, v2, :cond_26

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_26

    .line 1416
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    if-eqz v2, :cond_25

    .line 1417
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_19

    .line 1419
    :cond_25
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_19

    .line 1422
    :cond_26
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1424
    :goto_19
    invoke-static {v8, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v11, v17, v2

    .line 1425
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget v3, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float v12, v23, v3

    add-float v15, v10, v3

    add-float v18, v23, v21

    move/from16 v36, v3

    sub-float v3, v18, v36

    add-float v16, v10, v16

    move/from16 v37, v8

    sub-float v8, v16, v36

    invoke-virtual {v2, v12, v15, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float v8, v37, v14

    .line 1426
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a03126f    # 5.0E-4f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_28

    int-to-float v2, v7

    div-float/2addr v2, v14

    cmpl-float v7, v2, v27

    if-lez v7, :cond_27

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v7, v2, v27

    div-float v7, v7, v20

    sub-float v9, v23, v7

    add-float v2, v2, v27

    div-float v2, v2, v20

    add-float v2, v23, v2

    add-float v14, v10, v31

    .line 1429
    invoke-virtual {v13, v9, v10, v2, v14}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v8, v23

    goto :goto_1a

    :cond_27
    int-to-float v2, v9

    div-float v2, v2, v37

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v7, v2, v31

    div-float v7, v7, v20

    sub-float v7, v10, v7

    add-float v9, v23, v27

    add-float v2, v2, v31

    div-float v2, v2, v20

    add-float/2addr v2, v10

    move/from16 v8, v23

    .line 1432
    invoke-virtual {v13, v8, v7, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1a

    :cond_28
    move/from16 v8, v23

    add-float v9, v8, v27

    add-float v14, v10, v31

    .line 1435
    invoke-virtual {v13, v8, v10, v9, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1437
    :goto_1a
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_60

    .line 1438
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    if-eqz v29, :cond_29

    .line 1440
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v7, v13, Landroid/graphics/RectF;->left:F

    iget v9, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v7, v9

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float v9, v9, v32

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v9, v12

    div-float v9, v9, v20

    sub-float/2addr v7, v9

    iget v9, v13, Landroid/graphics/RectF;->top:F

    iget v12, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v9, v12

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v12, v12, v32

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v14

    sub-float/2addr v12, v14

    div-float v12, v12, v20

    sub-float/2addr v9, v12

    invoke-virtual {v2, v7, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1b

    .line 1442
    :cond_29
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v7, v13, Landroid/graphics/RectF;->left:F

    iget v9, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v7, v9

    iget v12, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v9

    invoke-virtual {v2, v7, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_1b
    if-eqz v6, :cond_2c

    .line 1445
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2a

    const/high16 v7, -0x40800000    # -1.0f

    :goto_1c
    const/4 v9, 0x2

    goto :goto_1d

    :cond_2a
    move/from16 v7, v17

    goto :goto_1c

    :goto_1d
    if-ne v6, v9, :cond_2b

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_1e

    :cond_2b
    move/from16 v6, v17

    :goto_1e
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v9, v9, v20

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float v12, v12, v20

    invoke-virtual {v2, v7, v6, v9, v12}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_2c
    const/16 v6, 0x5a

    if-ne v5, v6, :cond_2d

    .line 1448
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1449
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1f

    :cond_2d
    const/16 v2, 0xb4

    if-ne v5, v2, :cond_2e

    .line 1451
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1452
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1f

    :cond_2e
    const/16 v2, 0x10e

    if-ne v5, v2, :cond_2f

    .line 1454
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1455
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1457
    :cond_2f
    :goto_1f
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1458
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    if-eqz v2, :cond_30

    .line 1459
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    const/16 v33, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v27, v2

    div-float v2, v2, v27

    .line 1460
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1462
    :cond_30
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_31

    .line 1463
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1465
    :cond_31
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1467
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    if-eqz v2, :cond_38

    .line 1468
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1469
    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-nez v28, :cond_32

    move/from16 v5, v17

    goto :goto_20

    :cond_32
    int-to-float v5, v2

    div-float v5, v5, v27

    :goto_20
    if-nez v30, :cond_33

    move/from16 v6, v17

    goto :goto_21

    :cond_33
    int-to-float v6, v4

    div-float v6, v6, v31

    :goto_21
    sub-float v7, v5, v6

    .line 1472
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v3, v7, v3

    if-lez v3, :cond_35

    int-to-float v3, v2

    div-float/2addr v3, v6

    cmpl-float v6, v3, v27

    if-lez v6, :cond_34

    float-to-int v2, v3

    int-to-float v3, v2

    sub-float v5, v3, v27

    div-float v5, v5, v20

    sub-float v9, v8, v5

    add-float v3, v3, v27

    div-float v3, v3, v20

    add-float/2addr v3, v8

    add-float v14, v10, v31

    .line 1475
    invoke-virtual {v13, v9, v10, v3, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_22

    :cond_34
    int-to-float v3, v4

    div-float/2addr v3, v5

    float-to-int v4, v3

    int-to-float v3, v4

    sub-float v5, v3, v31

    div-float v5, v5, v20

    sub-float v5, v10, v5

    add-float v9, v8, v27

    add-float v3, v3, v31

    div-float v3, v3, v20

    add-float/2addr v10, v3

    .line 1478
    invoke-virtual {v13, v8, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_22

    :cond_35
    add-float v9, v8, v27

    add-float v14, v10, v31

    .line 1481
    invoke-virtual {v13, v8, v10, v9, v14}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_22
    if-nez v28, :cond_36

    move/from16 v2, v17

    goto :goto_23

    :cond_36
    int-to-float v2, v2

    div-float v2, v2, v27

    :goto_23
    if-nez v30, :cond_37

    move/from16 v3, v17

    goto :goto_24

    :cond_37
    int-to-float v3, v4

    div-float v3, v3, v31

    .line 1483
    :goto_24
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v11, v17, v2

    .line 1485
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1486
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v3, v4

    iget v5, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1487
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1488
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1491
    :cond_38
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1493
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_60

    .line 1496
    :try_start_1
    aget v0, v34, v25

    if-nez v0, :cond_3a

    if-eqz v29, :cond_39

    .line 1498
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1499
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v32

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float v2, v2, v20

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v32

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    div-float v3, v3, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 1500
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    :catch_1
    move-exception v0

    goto :goto_25

    :cond_39
    move-object/from16 v3, p1

    .line 1502
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    :cond_3a
    move-object/from16 v3, p1

    .line 1505
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v0, v0

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3b

    :goto_25
    if-nez p8, :cond_3b

    move-object/from16 v2, v35

    .line 1510
    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1512
    :cond_3b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    :cond_3c
    move-object/from16 v3, p1

    move/from16 v0, v25

    move-object/from16 v15, v34

    .line 1515
    :goto_26
    array-length v2, v15

    if-ge v0, v2, :cond_3d

    .line 1516
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v4, v0, 0x2

    aget v5, v15, v0

    int-to-float v6, v5

    aput v6, v2, v4

    const/16 v24, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v5

    .line 1517
    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1519
    :cond_3d
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1520
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1521
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    if-eqz v3, :cond_60

    .line 1523
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3b

    :cond_3e
    move/from16 v37, v8

    move-object v2, v11

    move/from16 v8, v23

    .line 1529
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v4, :cond_44

    move/from16 v4, v37

    .line 1530
    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1531
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v7

    div-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v9

    div-float/2addr v6, v4

    float-to-int v4, v6

    if-nez p8, :cond_3f

    int-to-float v5, v5

    sub-float v12, v21, v5

    div-float v12, v12, v20

    add-float v9, v8, v12

    int-to-float v4, v4

    sub-float v11, v16, v4

    div-float v11, v11, v20

    add-float/2addr v11, v10

    add-float v12, v21, v5

    div-float v12, v12, v20

    add-float v5, v8, v12

    add-float v4, v16, v4

    div-float v4, v4, v20

    add-float/2addr v4, v10

    .line 1535
    invoke-virtual {v13, v9, v11, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1536
    iget v4, v13, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v13, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v13, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v26, :cond_3f

    .line 1538
    move-object v11, v2

    check-cast v11, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v4, v13, Landroid/graphics/RectF;->left:F

    iget v5, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v11, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(FFFF)V

    :cond_3f
    if-eqz p8, :cond_41

    if-eqz v15, :cond_41

    .line 1541
    aget v4, v15, v25

    if-lez v4, :cond_41

    .line 1542
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1543
    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetroundPath(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/Path;

    move-result-object v4

    if-nez v4, :cond_40

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v11, p8

    invoke-static {v11, v4}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputroundPath(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/Path;)V

    goto :goto_27

    :cond_40
    move-object/from16 v11, p8

    invoke-static {v11}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetroundPath(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/Path;

    move-result-object v4

    .line 1544
    :goto_27
    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 1545
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v9, v8, v21

    add-float v6, v10, v16

    invoke-virtual {v5, v8, v10, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1546
    aget v6, v15, v25

    int-to-float v6, v6

    const/16 v33, 0x2

    aget v7, v15, v33

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1547
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_28

    :cond_41
    move-object/from16 v11, p8

    .line 1549
    :goto_28
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v4, :cond_43

    .line 1551
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1552
    invoke-direct {v1, v3, v2, v11, v0}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_29

    :catch_2
    move-exception v0

    if-nez v11, :cond_42

    .line 1555
    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    :cond_42
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1560
    :cond_43
    :goto_29
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    if-eqz v11, :cond_60

    if-eqz v15, :cond_60

    .line 1561
    aget v0, v15, v25

    if-lez v0, :cond_60

    .line 1562
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3b

    :cond_44
    move-object/from16 v11, p8

    move/from16 v4, v37

    if-eqz v3, :cond_60

    sub-float v15, v4, v14

    .line 1566
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v23, 0x3727c5ac    # 1.0E-5f

    cmpl-float v15, v15, v23

    if-lez v15, :cond_53

    .line 1567
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1568
    iget-boolean v15, v1, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    if-eqz v15, :cond_45

    add-float v15, v8, v21

    move/from16 v37, v4

    add-float v4, v10, v16

    .line 1569
    invoke-virtual {v3, v8, v10, v15, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_2a
    const/4 v4, 0x1

    goto :goto_2b

    :cond_45
    move/from16 v37, v4

    goto :goto_2a

    :goto_2b
    if-ne v6, v4, :cond_46

    div-float v4, v21, v20

    div-float v6, v16, v20

    move/from16 v15, v17

    move/from16 v17, v14

    move v14, v15

    const/high16 v15, -0x40800000    # -1.0f

    .line 1573
    invoke-virtual {v3, v15, v14, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2c

    :cond_46
    move/from16 v4, v17

    move/from16 v17, v14

    move v14, v4

    const/4 v4, 0x2

    const/high16 v15, -0x40800000    # -1.0f

    if-ne v6, v4, :cond_47

    div-float v4, v21, v20

    div-float v6, v16, v20

    .line 1575
    invoke-virtual {v3, v14, v15, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1577
    :cond_47
    :goto_2c
    rem-int/lit16 v4, v5, 0x168

    if-eqz v4, :cond_49

    .line 1578
    iget-boolean v6, v1, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v6, :cond_48

    int-to-float v5, v5

    div-float v6, v21, v20

    div-float v14, v16, v20

    .line 1579
    invoke-virtual {v3, v5, v6, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_2d

    :cond_48
    int-to-float v5, v5

    const/4 v6, 0x0

    .line 1581
    invoke-virtual {v3, v5, v6, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_49
    :goto_2d
    int-to-float v5, v7

    div-float v5, v5, v17

    cmpl-float v6, v5, v21

    if-lez v6, :cond_4a

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v6, v5, v21

    div-float v6, v6, v20

    sub-float v9, v8, v6

    add-float v5, v5, v21

    div-float v5, v5, v20

    add-float/2addr v5, v8

    add-float v6, v10, v16

    .line 1587
    invoke-virtual {v13, v9, v10, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2e

    :cond_4a
    int-to-float v5, v9

    div-float v5, v5, v37

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v6, v5, v16

    div-float v6, v6, v20

    sub-float v6, v10, v6

    add-float v9, v8, v21

    add-float v5, v5, v16

    div-float v5, v5, v20

    add-float/2addr v5, v10

    .line 1590
    invoke-virtual {v13, v8, v6, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2e
    if-eqz v26, :cond_4b

    .line 1593
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move/from16 v9, v16

    move/from16 v7, v21

    invoke-virtual {v5, v8, v10, v7, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(FFFF)V

    :cond_4b
    if-nez v11, :cond_4e

    const/16 v6, 0x5a

    if-eq v4, v6, :cond_4d

    const/16 v8, 0x10e

    if-ne v4, v8, :cond_4c

    goto :goto_2f

    .line 1603
    :cond_4c
    iget v4, v13, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v13, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v13, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_30

    .line 1597
    :cond_4d
    :goto_2f
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v20

    .line 1598
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, v5, v20

    .line 1599
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 1600
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float v8, v6, v5

    float-to-int v8, v8

    sub-float v9, v7, v4

    float-to-int v9, v9

    add-float/2addr v6, v5

    float-to-int v5, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 1601
    invoke-virtual {v2, v8, v9, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1606
    :cond_4e
    :goto_30
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v4, :cond_52

    const/16 v4, 0x1d

    if-lt v12, v4, :cond_50

    .line 1609
    :try_start_3
    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v4, :cond_4f

    .line 1610
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    invoke-static {v5}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_31

    :catch_3
    move-exception v0

    goto :goto_32

    .line 1612
    :cond_4f
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1615
    :cond_50
    :goto_31
    invoke-direct {v1, v3, v2, v11, v0}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_33

    :goto_32
    if-nez v11, :cond_51

    .line 1618
    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1620
    :cond_51
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1624
    :cond_52
    :goto_33
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3b

    :cond_53
    move/from16 v9, v16

    move/from16 v7, v21

    .line 1626
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x1

    if-ne v6, v4, :cond_54

    div-float v4, v7, v20

    div-float v6, v9, v20

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    .line 1628
    invoke-virtual {v3, v14, v15, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_34

    :cond_54
    const/4 v4, 0x2

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v6, v4, :cond_55

    div-float v4, v7, v20

    div-float v6, v9, v20

    .line 1630
    invoke-virtual {v3, v15, v14, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1632
    :cond_55
    :goto_34
    rem-int/lit16 v4, v5, 0x168

    if-eqz v4, :cond_57

    .line 1633
    iget-boolean v6, v1, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v6, :cond_56

    int-to-float v5, v5

    div-float v6, v7, v20

    div-float v14, v9, v20

    .line 1634
    invoke-virtual {v3, v5, v6, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_35

    :cond_56
    int-to-float v5, v5

    const/4 v6, 0x0

    .line 1636
    invoke-virtual {v3, v5, v6, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_57
    :goto_35
    add-float v5, v8, v7

    add-float v6, v10, v9

    .line 1639
    invoke-virtual {v13, v8, v10, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1640
    iget-boolean v5, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    if-eqz v5, :cond_58

    .line 1641
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    neg-int v6, v5

    int-to-float v6, v6

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v13, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    :cond_58
    if-eqz v26, :cond_59

    .line 1644
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v5, v8, v10, v7, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(FFFF)V

    :cond_59
    if-nez v11, :cond_5c

    const/16 v6, 0x5a

    if-eq v4, v6, :cond_5b

    const/16 v8, 0x10e

    if-ne v4, v8, :cond_5a

    goto :goto_36

    .line 1654
    :cond_5a
    iget v4, v13, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v13, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v13, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_37

    .line 1648
    :cond_5b
    :goto_36
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v20

    .line 1649
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, v5, v20

    .line 1650
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 1651
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float v8, v6, v5

    float-to-int v8, v8

    sub-float v9, v7, v4

    float-to-int v9, v9

    add-float/2addr v6, v5

    float-to-int v5, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 1652
    invoke-virtual {v2, v8, v9, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1657
    :cond_5c
    :goto_37
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v4, :cond_5f

    const/16 v4, 0x1d

    if-lt v12, v4, :cond_5e

    .line 1660
    :try_start_4
    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v4, :cond_5d

    .line 1661
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    invoke-static {v5}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_38

    :catch_4
    move-exception v0

    goto :goto_39

    .line 1663
    :cond_5d
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1667
    :cond_5e
    :goto_38
    invoke-direct {v1, v3, v2, v11, v0}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3a

    .line 1669
    :goto_39
    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1670
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1673
    :cond_5f
    :goto_3a
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_60
    :goto_3b
    if-eqz v22, :cond_61

    .line 1680
    move-object/from16 v0, p2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    move/from16 v2, v25

    iput-boolean v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    goto/16 :goto_44

    :cond_61
    move-object/from16 v4, p2

    move/from16 v2, v25

    .line 1681
    instance-of v0, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_6d

    .line 1682
    move-object v0, v4

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    goto/16 :goto_44

    :cond_62
    move-object v4, v2

    move-object v11, v8

    move v8, v9

    move v7, v12

    move/from16 v9, v16

    const/4 v5, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v11, :cond_66

    .line 1686
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v2, :cond_65

    .line 1687
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1688
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1689
    iget v12, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    mul-float v16, v12, v20

    sub-float v16, v7, v16

    mul-float v12, v12, v20

    sub-float v12, v9, v12

    const/16 v19, 0x0

    cmpl-float v17, v7, v19

    if-nez v17, :cond_63

    move v5, v15

    goto :goto_3c

    :cond_63
    int-to-float v5, v2

    div-float v5, v5, v16

    :goto_3c
    cmpl-float v16, v9, v19

    if-nez v16, :cond_64

    move v12, v15

    goto :goto_3d

    :cond_64
    int-to-float v15, v6

    div-float v12, v15, v12

    .line 1693
    :goto_3d
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    int-to-float v2, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v5, v6

    int-to-float v2, v2

    sub-float v12, v7, v2

    div-float v12, v12, v20

    add-float v6, v8, v12

    int-to-float v5, v5

    sub-float v12, v9, v5

    div-float v12, v12, v20

    add-float/2addr v12, v10

    add-float/2addr v2, v7

    div-float v2, v2, v20

    add-float/2addr v2, v8

    add-float/2addr v5, v9

    div-float v5, v5, v20

    add-float/2addr v10, v5

    .line 1696
    invoke-virtual {v13, v6, v12, v2, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3e

    :cond_65
    add-float v2, v8, v7

    add-float v5, v10, v9

    .line 1698
    invoke-virtual {v13, v8, v10, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1700
    :goto_3e
    iget v2, v13, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v5, v13, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v13, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1702
    :cond_66
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_6d

    if-eqz v3, :cond_6d

    .line 1704
    instance-of v2, v4, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_67

    .line 1705
    move-object v9, v4

    check-cast v9, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 1706
    invoke-virtual {v9, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    :goto_3f
    move-object v12, v9

    goto :goto_40

    .line 1707
    :cond_67
    instance-of v2, v4, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    if-eqz v2, :cond_68

    move-object v2, v4

    check-cast v2, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v5, :cond_68

    .line 1708
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 1709
    invoke-virtual {v9, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_3f

    :cond_68
    const/4 v12, 0x0

    :goto_40
    if-eqz v14, :cond_69

    if-eqz v4, :cond_69

    .line 1712
    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1715
    :cond_69
    :try_start_5
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz v11, :cond_6c

    if-eqz v12, :cond_6b

    .line 1718
    iget-wide v5, v11, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_6a

    .line 1720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :cond_6a
    move-wide v6, v5

    goto :goto_41

    :catch_5
    move-exception v0

    const/4 v15, 0x0

    goto :goto_42

    .line 1722
    :goto_41
    move-object v2, v4

    check-cast v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget v5, v11, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    iget v8, v11, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v9, v11, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iget v10, v11, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    iget v11, v11, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v4, 0x1

    const/4 v15, 0x0

    :try_start_6
    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->drawInternal(Landroid/graphics/Canvas;ZIJFFFF)V

    goto :goto_43

    :catch_6
    move-exception v0

    goto :goto_42

    :cond_6b
    const/4 v15, 0x0

    .line 1724
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_43

    :cond_6c
    const/4 v15, 0x0

    .line 1727
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_43

    .line 1730
    :goto_42
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_43
    if-eqz v12, :cond_6d

    .line 1733
    invoke-virtual {v12, v15}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_6d
    :goto_44
    return-void
.end method

.method public getAllowStartAnimation()Z
    .locals 1

    .line 2641
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2308
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return v0
.end method

.method public getAnimatedOrientation()I
    .locals 1

    .line 853
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 2

    .line 2746
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2747
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2748
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_1

    .line 2749
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2750
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 2751
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2752
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_3

    .line 2753
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoRepeat()I
    .locals 1

    .line 2661
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 2121
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2122
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2123
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2125
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2126
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2127
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2128
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_2

    .line 2129
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2130
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_3

    instance-of v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v2, :cond_3

    .line 2131
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2132
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_4

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_4

    .line 2133
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2134
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 2135
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapHeight()I
    .locals 4

    .line 2242
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2243
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 2245
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2247
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2249
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2251
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2253
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2254
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2258
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_7

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 5

    .line 2143
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    .line 2144
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2146
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2147
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v1, v2

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2148
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2150
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2152
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 2154
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_3

    .line 2155
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2156
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_1

    .line 2157
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    instance-of v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v4, :cond_4

    instance-of v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v4, :cond_4

    .line 2158
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2159
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_1

    .line 2160
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    instance-of v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v4, :cond_5

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_5

    .line 2161
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2162
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_1

    .line 2163
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 2164
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_7

    .line 2167
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :cond_7
    return-object v2
.end method

.method public getBitmapWidth()I
    .locals 4

    .line 2222
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2223
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 2225
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 2227
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2229
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 2231
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2233
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2234
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2238
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_7

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCacheType()I
    .locals 1

    .line 2494
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .line 2402
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .line 2406
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 2621
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return v0
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 2100
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    return v0
.end method

.method public getDrawRegion()Landroid/graphics/RectF;
    .locals 1

    .line 2446
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2108
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2110
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 2112
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    return-object v0

    .line 2114
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawableSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 5

    .line 2175
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_0

    .line 2177
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_1

    .line 2178
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_1

    instance-of v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v3, :cond_1

    .line 2180
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 2181
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_2

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_2

    .line 2183
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_0

    .line 2184
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_4

    .line 2188
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    :cond_4
    return-object v2
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 2438
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLoadingPriority()I
    .locals 1

    .line 3243
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    return v0
.end method

.method public getImageAspectRatio()F
    .locals 2

    .line 2434
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_0
    div-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageFilter()Ljava/lang/String;
    .locals 1

    .line 2486
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 2430
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    return v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .line 2454
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2474
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 2426
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    return v0
.end method

.method public getImageX()F
    .locals 1

    .line 2410
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    return v0
.end method

.method public getImageX2()F
    .locals 2

    .line 2414
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getImageY()F
    .locals 1

    .line 2418
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    return v0
.end method

.method public getImageY2()F
    .locals 2

    .line 2422
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getInvert()I
    .locals 1

    .line 862
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageInvert:I

    return v0
.end method

.method public getLoadingOperations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 3178
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 2

    .line 2759
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    .line 2760
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2761
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 2762
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2763
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_2

    .line 2764
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2765
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_3

    .line 2766
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMark()Ljava/lang/Object;
    .locals 1

    .line 2573
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mark:Ljava/lang/Object;

    return-object v0
.end method

.method public getMediaDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaFilter()Ljava/lang/String;
    .locals 1

    .line 2482
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaKey()Ljava/lang/String;
    .locals 1

    .line 2458
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2470
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getNewGuid()I
    .locals 1

    .line 2450
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 858
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    return v0
.end method

.method public getParam()I
    .locals 1

    .line 2796
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->param:I

    return v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 2589
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getParentPosition([I)V
    .locals 1

    .line 2291
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2294
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    return-void
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 3206
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public getPressed()Z
    .locals 1

    .line 825
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 2601
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getRoundRadius()[I
    .locals 1

    .line 2581
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    return-object v0
.end method

.method public getRoundRadius(Z)[I
    .locals 1

    .line 2585
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->emptyRoundRadius:[I

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    return-object p1
.end method

.method public getSize()J
    .locals 2

    .line 2466
    iget-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    return-wide v0
.end method

.method public getStaticThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStrippedLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method protected getTag(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2773
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:I

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2775
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaTag:I

    return p1

    .line 2777
    :cond_1
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageTag:I

    return p1
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2194
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 2198
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 2199
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2200
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2201
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 4

    .line 2209
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2210
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2211
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_0

    .line 2212
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2213
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2216
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :cond_2
    return-object v2
.end method

.method public getThumbFilter()Ljava/lang/String;
    .locals 1

    .line 2490
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKey()Ljava/lang/String;
    .locals 1

    .line 2462
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2478
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getUniqKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 3168
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .line 2298
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    return v0
.end method

.method public hasBitmapImage()Z
    .locals 1

    .line 2324
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasImageLoaded()Z
    .locals 1

    .line 2328
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasImageSet()Z
    .locals 1

    .line 2316
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasMediaSet()Z
    .locals 1

    .line 2320
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNotThumb()Z
    .locals 1

    .line 2332
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasNotThumbOrOnlyStaticThumb()Z
    .locals 2

    .line 2336
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/ui/Components/AvatarDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasStaticThumb()Z
    .locals 1

    .line 2340
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 6

    .line 2280
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2283
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v1, :cond_1

    .line 2284
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 2286
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    float-to-int v2, v1

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    float-to-int v4, v3

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public isAllowStartAnimation()Z
    .locals 1

    .line 2689
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 2736
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2737
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAspectFit()Z
    .locals 1

    .line 2348
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 3210
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    return v0
.end method

.method public isCrossfadingWithOldImage()Z
    .locals 1

    .line 2609
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentKeyQuality()Z
    .locals 1

    .line 2617
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    return v0
.end method

.method public isForceLoding()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    return v0
.end method

.method public isForcePreview()Z
    .locals 1

    .line 2506
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return v0
.end method

.method public isInsideImage(FF)Z
    .locals 2

    .line 2442
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLottieRunning()Z
    .locals 1

    .line 2741
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2742
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedsQualityThumb()Z
    .locals 1

    .line 2613
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return v0
.end method

.method public isShouldGenerateQualityThumb()Z
    .locals 1

    .line 2629
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return v0
.end method

.method public moveImageToFront()V
    .locals 2

    .line 3182
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    .line 3183
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    return-void
.end method

.method public moveLottieToFront()V
    .locals 4

    .line 3190
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    .line 3191
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3192
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_0

    .line 3193
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 3194
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3195
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 3198
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    .line 3199
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3200
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageLoader;->getLottieMemCahce()Lorg/telegram/messenger/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()Z
    .locals 5

    .line 1177
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1180
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    .line 1181
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result v2

    .line 1182
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 1183
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    if-nez v2, :cond_1

    .line 1184
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1185
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1186
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1188
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->setBackupImage()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 1191
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1193
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1194
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    :cond_3
    if-eqz v2, :cond_5

    .line 1196
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v3, :cond_5

    .line 1197
    :cond_4
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1199
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1201
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 1203
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v3, :cond_7

    .line 1204
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 1205
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 1207
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1208
    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->didReceivedNotification(II[Ljava/lang/Object;)V

    .line 1210
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v2, :cond_9

    .line 1211
    check-cast v0, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1213
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    move v0, v1

    .line 1214
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1215
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver$Decorator;

    invoke-virtual {v2, p0}, Lorg/telegram/messenger/ImageReceiver$Decorator;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 1096
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    .line 1100
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1101
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v1, :cond_2

    .line 1102
    new-instance v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver-IA;)V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1104
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1105
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    .line 1106
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1107
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    .line 1108
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1109
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 1110
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 1111
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    iput-wide v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    .line 1112
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 1113
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    iput v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    .line 1114
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    iput-object v3, v1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    .line 1116
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    if-nez v1, :cond_4

    .line 1117
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1119
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1121
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v3, :cond_5

    .line 1122
    check-cast v1, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {v1, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1125
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1127
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1129
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1131
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->removeParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1134
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 1135
    invoke-direct {p0, v2}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1136
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 1138
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1139
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1140
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    if-nez v1, :cond_9

    const/4 v1, 0x0

    .line 1141
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1144
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 1145
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1146
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->decorators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver$Decorator;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$Decorator;->onDetachedFromWidnow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    return-void
.end method

.method public recycleBitmap(Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 2993
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2994
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 2996
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 2997
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 2999
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 3000
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3002
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 3003
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v3, :cond_4

    .line 3005
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "strippedmessage-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3006
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageLoader;->getReplacedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v3, v5

    .line 3011
    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v5, :cond_5

    .line 3012
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3013
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->removeParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 3015
    :cond_5
    instance-of v5, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_6

    .line 3016
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 3017
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_6
    if-eqz v3, :cond_c

    if-eqz p1, :cond_7

    .line 3019
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :cond_7
    if-eqz v4, :cond_c

    .line 3020
    instance-of p1, v4, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    .line 3021
    check-cast v4, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3022
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result p1

    .line 3023
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz p1, :cond_c

    .line 3025
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_1

    .line 3028
    :cond_8
    instance-of p1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p1, :cond_b

    .line 3029
    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 3030
    iget-boolean p1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p1, :cond_a

    .line 3031
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result p1

    .line 3032
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p1, :cond_c

    .line 3034
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_c

    .line 3037
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_1

    .line 3040
    :cond_a
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getParents()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3041
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_1

    .line 3044
    :cond_b
    instance-of p1, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_c

    .line 3045
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3046
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v4

    .line 3047
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v4, :cond_c

    .line 3049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3050
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3051
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    :cond_c
    :goto_1
    const/4 p1, 0x0

    if-ne p2, v2, :cond_d

    .line 3057
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 3058
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 3059
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    return-void

    :cond_d
    if-ne p2, v0, :cond_e

    .line 3061
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 3062
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 3063
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    return-void

    :cond_e
    if-ne p2, v1, :cond_f

    .line 3065
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 3066
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 3067
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    return-void

    .line 3069
    :cond_f
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 3070
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 3071
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    return-void
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 2649
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    return-void
.end method

.method public setAllowDrawWhileCacheGenerating(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowDrawWhileCacheGenerating:Z

    return-void
.end method

.method public setAllowLoadingOnAttachedOnly(Z)V
    .locals 0

    .line 3218
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    return-void
.end method

.method public setAllowLottieVibration(Z)V
    .locals 0

    .line 2637
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    return-void
.end method

.method public setAllowStartAnimation(Z)V
    .locals 0

    .line 2633
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return-void
.end method

.method public setAllowStartLottieAnimation(Z)V
    .locals 0

    .line 2645
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2303
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 0

    .line 2344
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return-void
.end method

.method public setAutoRepeat(I)V
    .locals 1

    .line 2653
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    .line 2654
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2656
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    :cond_0
    return-void
.end method

.method public setAutoRepeatCount(I)V
    .locals 1

    .line 2665
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    .line 2666
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2667
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatCount(I)V

    return-void

    .line 2669
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    .line 2670
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2671
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    :cond_1
    return-void
.end method

.method public setAutoRepeatTimeout(J)V
    .locals 2

    .line 2677
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    .line 2678
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2680
    iget-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatTimeout(J)V

    :cond_0
    return-void
.end method

.method public setBackupImage()Z
    .locals 14

    .line 1152
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->-$$Nest$misSet(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1153
    iget-object v13, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    .line 1154
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1155
    iget-object v2, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 1156
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1157
    instance-of v3, v2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v3, :cond_0

    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    iput-object v1, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 1161
    :cond_0
    iget-object v1, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    iget-object v3, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    iget-object v5, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v6, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    iget-object v7, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    iget-wide v8, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    iget-object v10, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    iget-object v11, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    iget v12, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1162
    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->-$$Nest$mclear(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    .line 1163
    iput-object v13, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1164
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1166
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    :cond_1
    if-eqz v1, :cond_3

    .line 1168
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_3

    .line 1169
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public setBlendMode(Ljava/lang/Object;)V
    .locals 0

    .line 1773
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    .line 1774
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCrossfadeAlpha(B)V
    .locals 0

    .line 2312
    iput-byte p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    return-void
.end method

.method public setCrossfadeByScale(F)V
    .locals 0

    .line 3080
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    return-void
.end method

.method public setCrossfadeDuration(I)V
    .locals 0

    .line 3076
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    return-void
.end method

.method public setCrossfadeWithOldImage(Z)V
    .locals 0

    .line 2605
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 0

    .line 2577
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return-void
.end method

.method public setCurrentAlpha(F)V
    .locals 0

    .line 2104
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    .line 3226
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    return-void
.end method

.method public setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 3

    if-nez p1, :cond_0

    .line 3248
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;-><init>()V

    .line 3250
    :cond_0
    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    .line 3251
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputanimation(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 3252
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputlottieDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/RLottieDrawable;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 3254
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetroundRadius(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3256
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputmediaDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)V

    .line 3257
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputmediaShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)V

    .line 3258
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputimageDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)V

    .line 3259
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputimageShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)V

    .line 3260
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputthumbDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)V

    .line 3261
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputthumbShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)V

    .line 3262
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 3263
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputstaticThumbDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)V

    .line 3264
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputcrossfadeImage(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)V

    .line 3265
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3266
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputcrossfadingWithThumb(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V

    .line 3267
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputcrossfadeWithOldImage(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V

    .line 3268
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputcurrentAlpha(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)V

    .line 3269
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputpreviousAlpha(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)V

    .line 3270
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fputcrossfadeShader(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)V

    .line 3271
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetanimation(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetanimation(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetlottieDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->-$$Nest$fgetlottieDrawable(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animationNotReady:Z

    .line 3272
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    .line 3273
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    .line 3274
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    .line 3275
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    .line 3276
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    return-object p1
.end method

.method public setEmojiPaused(Z)V
    .locals 1

    .line 2722
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->emojiPaused:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2723
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->emojiPaused:Z

    xor-int/lit8 v0, p1, 0x1

    .line 2724
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    .line 2725
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2728
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    return-void

    .line 2729
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2730
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFileLoadingPriority(I)V
    .locals 1

    .line 3230
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    if-eq v0, p1, :cond_0

    .line 3231
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    .line 3232
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3233
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageLoader;->changeFileLoadingPriorityForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_0
    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 421
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    if-nez p3, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    const/4 v3, 0x1

    .line 428
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setUseRoundForThumbDrawable(Z)V

    .line 434
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v13, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_c

    .line 435
    move-object v4, v1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 436
    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    .line 437
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v9, :cond_a

    .line 438
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 439
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    if-eqz v9, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-ne v2, v13, :cond_3

    .line 441
    iget v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v11, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 443
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v12, :cond_2

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_2

    :cond_2
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_2
    if-eqz v11, :cond_3

    .line 445
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v6

    :goto_3
    if-nez v11, :cond_b

    if-eqz p4, :cond_b

    .line 449
    iget v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->has_video:Z

    if-eqz v12, :cond_b

    const/16 v12, 0x400

    invoke-static {v12}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 450
    iget v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v12, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v12

    if-nez v12, :cond_4

    .line 452
    iget v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v14, v0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    invoke-virtual {v12, v4, v14, v7}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    goto :goto_6

    .line 454
    :cond_4
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v4, :cond_5

    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_4

    :cond_5
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_4
    if-eqz v4, :cond_b

    .line 456
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v11

    if-nez v11, :cond_b

    .line 458
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v12, :cond_b

    .line 459
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    const/16 v6, 0x64

    .line 460
    invoke-static {v12, v6}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v6

    move v14, v7

    .line 461
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 462
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 463
    const-string/jumbo v13, "p"

    iget-object v7, v15, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v6, v15

    .line 466
    :cond_6
    instance-of v7, v15, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-nez v7, :cond_7

    instance-of v7, v15, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v7, :cond_8

    :cond_7
    move-object v11, v15

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    const/4 v13, 0x3

    goto :goto_5

    .line 470
    :cond_9
    invoke-static {v6, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    goto :goto_6

    :cond_a
    move-object v10, v6

    move-object v11, v10

    const/4 v9, 0x0

    :cond_b
    :goto_6
    move-object v4, v6

    move-object v7, v10

    move-object v6, v11

    goto :goto_8

    .line 477
    :cond_c
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_e

    .line 478
    move-object v4, v1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 479
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_e

    .line 480
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 481
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    if-eqz v4, :cond_d

    move v9, v3

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    move-object v4, v6

    const/4 v8, 0x0

    goto :goto_8

    :cond_e
    move-object v4, v6

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    if-eqz v6, :cond_f

    if-eqz v2, :cond_f

    .line 485
    new-instance v1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-direct {v1, v6, v8, v2}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    .line 486
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_f
    if-nez p6, :cond_10

    .line 491
    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 492
    const-string v3, "50_50"

    :goto_9
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    .line 494
    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 495
    const-string v3, "100_100"

    goto :goto_9

    :goto_a
    if-eqz v4, :cond_11

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, v4

    move-object v4, v2

    .line 498
    const-string v2, "avatar"

    move-object v11, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    const/4 v1, 0x3

    .line 499
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    return-void

    :cond_11
    move-object v4, v2

    move-object v1, v3

    move-object v11, v5

    move-object v3, v7

    if-eqz v3, :cond_12

    move-object v2, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v11

    .line 502
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_12
    move-object v2, v4

    move-object/from16 v4, p1

    if-eqz v9, :cond_13

    const/4 v0, 0x2

    .line 504
    invoke-static {v4, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-string v4, "50_50_b"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object v6, v11

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V

    return-void

    :cond_13
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object v5, v11

    .line 506
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setForceCrossfade(Z)V
    .locals 0

    .line 2502
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    return-void
.end method

.method public setForceLoading(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    return-void
.end method

.method public setForcePreview(Z)V
    .locals 0

    .line 2498
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return-void
.end method

.method public setGradientBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1779
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_1

    .line 1780
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    .line 1781
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    .line 1783
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1785
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    .line 1786
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 1787
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 1788
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 1789
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1790
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1791
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 1794
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIgnoreImageSet(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreImageSet:Z

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V
    .locals 11

    .line 406
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v8, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 402
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 398
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 414
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 566
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V
    .locals 13

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    .line 562
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 410
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    .line 570
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-nez v13, :cond_1

    .line 571
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v13, :cond_0

    .line 572
    new-instance v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    invoke-direct {v13, v14}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver-IA;)V

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 574
    :cond_0
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v1, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 575
    iput-object v2, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    .line 576
    iput-object v3, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 577
    iput-object v4, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    .line 578
    iput-object v5, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 579
    iput-object v6, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 580
    iput-object v7, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 581
    iput-wide v8, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    .line 582
    iput-object v10, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 583
    iput v12, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    .line 584
    iput-object v11, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    return-void

    .line 587
    :cond_1
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreImageSet:Z

    if-eqz v13, :cond_2

    goto/16 :goto_b

    .line 590
    :cond_2
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz v13, :cond_3

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v13, :cond_3

    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->-$$Nest$misWebfileSet(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 591
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->setBackupImage()Z

    .line 593
    :cond_3
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v13, :cond_4

    .line 594
    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->-$$Nest$mclear(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    :cond_4
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v3, :cond_a

    if-nez v5, :cond_a

    if-nez v1, :cond_a

    move v1, v15

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v2, 0x0

    .line 599
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 601
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 602
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 603
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 604
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 605
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 606
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 607
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 608
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 609
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 611
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 612
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 613
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 614
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 615
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 616
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 617
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 618
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 619
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 620
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 621
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 622
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 625
    :cond_6
    iput-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 626
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    .line 627
    iput v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    .line 628
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 629
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 631
    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    const-wide/16 v1, 0x0

    .line 632
    iput-wide v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    .line 634
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 636
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 637
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 638
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_1c

    .line 639
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    move v3, v15

    goto :goto_2

    :cond_8
    :goto_1
    move v3, v14

    :goto_2
    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    move v14, v15

    :goto_3
    invoke-interface {v1, v0, v3, v14, v15}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void

    :cond_a
    if-eqz v3, :cond_b

    const/4 v13, 0x0

    .line 643
    invoke-virtual {v3, v11, v13, v15}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_c

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    .line 647
    :cond_c
    iget v13, v0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    .line 648
    iput-boolean v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    if-nez v16, :cond_f

    .line 649
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v13, :cond_f

    instance-of v13, v11, Lorg/telegram/messenger/MessageObject;

    if-nez v13, :cond_d

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_f

    .line 650
    :cond_d
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_e

    goto :goto_5

    :cond_e
    move-object v13, v11

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v13

    :goto_5
    if-eqz v13, :cond_f

    .line 651
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v15, :cond_f

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-eqz v14, :cond_f

    .line 652
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "q_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v12, 0x1

    .line 653
    iput-boolean v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    :cond_f
    move-object/from16 v12, v16

    .line 656
    const-string v13, "@"

    if-eqz v12, :cond_10

    if-eqz v4, :cond_10

    .line 657
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 660
    :cond_10
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    if-eqz v14, :cond_11

    .line 661
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_11
    if-eqz v1, :cond_12

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 664
    invoke-virtual {v1, v11, v15, v14}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    goto :goto_6

    :cond_12
    const/4 v14, 0x0

    :goto_6
    if-nez v14, :cond_13

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    :cond_13
    if-eqz v14, :cond_14

    if-eqz v2, :cond_14

    .line 669
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 672
    :cond_14
    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    if-eqz v15, :cond_15

    .line 673
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_15
    if-nez v14, :cond_16

    .line 676
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v7, :cond_16

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    :cond_16
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v7, :cond_1d

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 677
    :cond_17
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v7, :cond_1b

    .line 678
    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v15

    if-nez v15, :cond_19

    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_19

    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_19

    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_18

    goto :goto_7

    :cond_18
    const/4 v15, 0x0

    goto :goto_8

    :cond_19
    :goto_7
    const/4 v15, 0x1

    :goto_8
    if-nez v16, :cond_1a

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1a

    const/4 v8, 0x1

    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_1a
    const/4 v8, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v7, v0, v15, v8, v9}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 680
    :cond_1b
    iget-boolean v7, v0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    if-nez v7, :cond_1d

    :cond_1c
    :goto_b
    return-void

    .line 686
    :cond_1d
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v7, :cond_1e

    goto :goto_c

    :cond_1e
    if-eqz v1, :cond_1f

    move-object v7, v1

    goto :goto_c

    :cond_1f
    move-object v7, v3

    :goto_c
    if-nez v7, :cond_20

    move-object v7, v5

    :cond_20
    if-eqz v5, :cond_21

    const/4 v9, 0x0

    .line 695
    invoke-virtual {v5, v11, v7, v9}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_21
    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_22

    if-eqz v6, :cond_22

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 700
    :cond_22
    iget-boolean v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    const/4 v9, 0x3

    const/4 v13, 0x2

    if-eqz v8, :cond_29

    .line 701
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    instance-of v15, v8, Lorg/telegram/messenger/MessageObject;

    if-eqz v15, :cond_23

    move-object v15, v8

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileSet:Ljava/lang/Object;

    if-eqz v15, :cond_23

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v8

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v8, :cond_23

    .line 702
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    move-object v15, v8

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileSet:Ljava/lang/Object;

    iput-object v8, v15, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileLoaded:Ljava/lang/Object;

    .line 704
    :cond_23
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_25

    .line 705
    instance-of v9, v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v9, :cond_24

    .line 706
    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    .line 707
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_24
    const/4 v8, 0x1

    .line 709
    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v15, 0x0

    .line 710
    invoke-virtual {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x0

    .line 711
    invoke-virtual {v0, v14, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 712
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 714
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 715
    iput-boolean v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 716
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 717
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    :goto_e
    const/4 v9, 0x1

    goto/16 :goto_f

    :cond_25
    const/4 v15, 0x0

    .line 718
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_26

    const/4 v8, 0x1

    .line 719
    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 720
    invoke-virtual {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 721
    invoke-virtual {v0, v14, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 722
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 723
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 724
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    const/4 v8, 0x0

    .line 725
    iput-boolean v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 726
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 727
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_e

    :cond_26
    const/4 v8, 0x0

    .line 728
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_27

    .line 729
    invoke-virtual {v0, v12, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 730
    invoke-virtual {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 731
    invoke-virtual {v0, v14, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 732
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 733
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 734
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 735
    iput-boolean v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 736
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 737
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_e

    .line 738
    :cond_27
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_28

    .line 739
    invoke-virtual {v0, v12, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 740
    invoke-virtual {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 741
    invoke-virtual {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 742
    invoke-virtual {v0, v14, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 743
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 744
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 745
    iput-boolean v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 746
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 747
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 748
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_e

    .line 750
    :cond_28
    invoke-virtual {v0, v12, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 751
    invoke-virtual {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v13, 0x3

    .line 753
    invoke-virtual {v0, v14, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 754
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_f

    :cond_29
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v15, 0x0

    .line 757
    invoke-virtual {v0, v12, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 758
    invoke-virtual {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 759
    invoke-virtual {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v13, 0x3

    .line 760
    invoke-virtual {v0, v14, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 761
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 764
    :goto_f
    iput-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 765
    iput-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 766
    iput-object v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 767
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 768
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 769
    iput-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 770
    iput-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 771
    iput-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 772
    iput-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 774
    iput-object v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    .line 775
    iput-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-wide/from16 v1, p8

    .line 776
    iput-wide v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    move/from16 v12, p12

    .line 777
    iput v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    move-object/from16 v7, p7

    .line 778
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x0

    .line 779
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 780
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 781
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 782
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 783
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 784
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 785
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 786
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 787
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2a

    .line 788
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 789
    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    :cond_2a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 791
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 792
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 794
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 796
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_2e

    .line 797
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2c

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2c

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2c

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2b

    goto :goto_10

    :cond_2b
    const/4 v12, 0x0

    goto :goto_11

    :cond_2c
    :goto_10
    move v12, v9

    :goto_11
    if-nez v2, :cond_2d

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2d

    move v2, v9

    :goto_12
    const/4 v8, 0x0

    goto :goto_13

    :cond_2d
    const/4 v2, 0x0

    goto :goto_12

    :goto_13
    invoke-interface {v1, v0, v12, v2, v8}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    goto :goto_14

    :cond_2e
    const/4 v8, 0x0

    .line 799
    :goto_14
    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;->loadImage()V

    .line 800
    instance-of v1, v11, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2f

    move-object v1, v11

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_2f

    move v14, v9

    goto :goto_15

    :cond_2f
    move v14, v8

    :goto_15
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 874
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 878
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 880
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 881
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 883
    invoke-virtual {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 884
    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 885
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 886
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 887
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 888
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    goto :goto_2

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 891
    invoke-virtual {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 892
    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 893
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 894
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 895
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 896
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    goto :goto_2

    .line 897
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 898
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 899
    invoke-virtual {p0, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 900
    invoke-virtual {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 901
    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 902
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 903
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 904
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 905
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_3

    .line 908
    invoke-virtual {p0, v4, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_3
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_5

    .line 914
    invoke-virtual {p0, v4, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 918
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/RecyclableDrawable;

    if-eqz v2, :cond_6

    .line 919
    check-cast v0, Lorg/telegram/ui/Components/RecyclableDrawable;

    .line 920
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclableDrawable;->recycle()V

    .line 922
    :cond_6
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_b

    .line 923
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 924
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 925
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v2, :cond_7

    .line 926
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 928
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 929
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_a

    .line 930
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 932
    :cond_a
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    goto :goto_5

    .line 933
    :cond_b
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_f

    .line 934
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 935
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v2, :cond_c

    .line 936
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 939
    :cond_c
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    .line 941
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_e

    .line 942
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 944
    :cond_e
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 946
    :cond_f
    :goto_5
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 947
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 948
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 949
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 952
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 953
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 954
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_10

    .line 955
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 957
    :cond_10
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 958
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 959
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 961
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 962
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 963
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 964
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 965
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 966
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 967
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 968
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 969
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_11

    .line 970
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 971
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 974
    :cond_11
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 975
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 976
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 978
    iput-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    .line 979
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 980
    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    .line 981
    iput v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 982
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 983
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 985
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p1, :cond_12

    .line 986
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->-$$Nest$mclear(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    .line 989
    :cond_12
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz p1, :cond_15

    .line 990
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    move v0, v3

    goto :goto_7

    :cond_14
    :goto_6
    move v0, v1

    :goto_7
    invoke-interface {p1, p0, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 992
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 993
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    .line 994
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 995
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 996
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    goto :goto_8

    :cond_16
    move v1, v3

    :cond_17
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    :cond_18
    return-void
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    .line 2800
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    if-eq v1, p5, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 p5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-nez p3, :cond_12

    .line 2804
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    .line 2807
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v3, :cond_2

    .line 2808
    invoke-interface {v3, p3, p2, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2811
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p2, :cond_4

    .line 2812
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2813
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p2, :cond_6

    .line 2814
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, p2, :cond_3

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_3

    goto :goto_0

    :cond_3
    move p2, v0

    goto :goto_1

    .line 2817
    :cond_4
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2818
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    iget-wide v5, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    .line 2819
    iget-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p3, :cond_5

    .line 2820
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2822
    :cond_5
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p3, :cond_6

    .line 2823
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p2

    xor-int/2addr p2, v2

    goto :goto_1

    :cond_6
    :goto_0
    move p2, v2

    .line 2826
    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2828
    instance-of p3, p1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz p3, :cond_7

    .line 2829
    move-object p3, p1

    check-cast p3, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-virtual {p3}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getOrientation()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 2830
    invoke-virtual {p3}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getInvert()I

    move-result p3

    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageInvert:I

    .line 2832
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_11

    .line 2834
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz p2, :cond_9

    :cond_8
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p2, :cond_11

    :cond_9
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    if-eqz p2, :cond_11

    .line 2836
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p3, :cond_a

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result p2

    if-eqz p2, :cond_a

    goto/16 :goto_b

    .line 2838
    :cond_a
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_b

    .line 2840
    :cond_b
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_c

    .line 2841
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/LoadingStickerDrawable;

    if-nez p3, :cond_c

    instance-of p3, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez p3, :cond_c

    instance-of p2, p2, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz p2, :cond_2e

    .line 2843
    :cond_c
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_d

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_d

    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p3, :cond_2e

    :cond_d
    if-eqz p2, :cond_e

    .line 2844
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    .line 2845
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_2

    .line 2847
    :cond_e
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2849
    :goto_2
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2851
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_f

    goto :goto_3

    :cond_f
    move p2, v0

    goto :goto_4

    :cond_10
    :goto_3
    move p2, v2

    :goto_4
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto/16 :goto_b

    .line 2854
    :cond_11
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2855
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto/16 :goto_b

    :cond_12
    const/4 v3, 0x3

    if-ne p3, v3, :cond_22

    .line 2858
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v0

    .line 2861
    :cond_13
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v3, :cond_14

    .line 2862
    invoke-interface {v3, p3, p2, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2864
    :cond_14
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p2, :cond_15

    .line 2865
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    goto :goto_6

    .line 2867
    :cond_15
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2868
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    iget-wide v5, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    .line 2869
    iget-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p3, :cond_16

    .line 2870
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2872
    :cond_16
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p3, :cond_19

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_19

    .line 2874
    :cond_17
    instance-of v3, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_18

    .line 2875
    check-cast p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getLastFrameTimestamp()J

    move-result-wide v3

    goto :goto_5

    :cond_18
    const-wide/16 v3, 0x0

    .line 2877
    :goto_5
    invoke-virtual {p2, v3, v4, v2, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    .line 2880
    :cond_19
    :goto_6
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2881
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2883
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2e

    if-nez p4, :cond_1a

    .line 2885
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz p2, :cond_1b

    :cond_1a
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p2, :cond_21

    .line 2886
    :cond_1b
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1c

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1d

    :cond_1c
    iget p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_1d

    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p3, :cond_2e

    :cond_1d
    if-eqz p2, :cond_1e

    .line 2887
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1e

    .line 2888
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_7

    .line 2890
    :cond_1e
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2892
    :goto_7
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2894
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_20

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_20

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1f

    goto :goto_8

    :cond_1f
    move p2, v0

    goto :goto_9

    :cond_20
    :goto_8
    move p2, v2

    :goto_9
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto/16 :goto_b

    .line 2897
    :cond_21
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2898
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto/16 :goto_b

    :cond_22
    if-ne p3, v2, :cond_2e

    .line 2902
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_23

    return v0

    .line 2905
    :cond_23
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v3, :cond_27

    .line 2906
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 2907
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v3

    if-eqz v3, :cond_24

    return v0

    .line 2910
    :cond_24
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_25

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_26

    :cond_25
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_27

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_27

    :cond_26
    return v0

    .line 2914
    :cond_27
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    return v0

    .line 2917
    :cond_28
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v3, :cond_29

    .line 2918
    invoke-interface {v3, p3, p2, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2920
    :cond_29
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2922
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2923
    instance-of p2, p1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz p2, :cond_2a

    .line 2924
    move-object p2, p1

    check-cast p2, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-virtual {p2}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getOrientation()I

    move-result p3

    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    .line 2925
    invoke-virtual {p2}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getInvert()I

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbInvert:I

    .line 2927
    :cond_2a
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    if-nez p4, :cond_2d

    .line 2929
    iget-byte p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2d

    .line 2930
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    instance-of p3, p2, Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_2b

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 2931
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2932
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_b

    .line 2934
    :cond_2b
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2935
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2937
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2c

    move p2, v2

    goto :goto_a

    :cond_2c
    move p2, v0

    :goto_a
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto :goto_b

    .line 2940
    :cond_2d
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2941
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2944
    :cond_2e
    :goto_b
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz p2, :cond_32

    .line 2945
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_30

    iget-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p5, :cond_30

    iget-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p5, :cond_30

    iget-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_2f

    goto :goto_c

    :cond_2f
    move p5, v0

    goto :goto_d

    :cond_30
    :goto_c
    move p5, v2

    :goto_d
    if-nez p3, :cond_31

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_31

    move p3, v2

    goto :goto_e

    :cond_31
    move p3, v0

    :goto_e
    invoke-interface {p2, p0, p5, p3, p4}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 2947
    :cond_32
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p2, :cond_35

    .line 2948
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2949
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 2950
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p2, :cond_33

    .line 2951
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2953
    :cond_33
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz p2, :cond_34

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_34

    .line 2954
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 2956
    :cond_34
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2957
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 2958
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz p1, :cond_39

    .line 2959
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_f

    .line 2961
    :cond_35
    instance-of p2, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_39

    .line 2962
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2963
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p2, :cond_36

    .line 2964
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2966
    :cond_36
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_37

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_38

    .line 2967
    :cond_37
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2969
    :cond_38
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2970
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 2971
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatCount(I)V

    .line 2972
    iget-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatTimeout(J)V

    .line 2973
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDrawWhileCacheGenerating:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDrawFramesWhileCacheGenerating(Z)V

    .line 2974
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 2976
    :cond_39
    :goto_f
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return v2

    :cond_3a
    :goto_10
    return v0
.end method

.method public setImageCoords(FFFF)V
    .locals 0

    .line 2373
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2374
    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2375
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2376
    iput p4, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    return-void
.end method

.method public setImageCoords(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2381
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2382
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2383
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2384
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    :cond_0
    return-void
.end method

.method public setImageCoords(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2390
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2391
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2392
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2393
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    :cond_0
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 2369
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    return-void
.end method

.method public setImageX(F)V
    .locals 0

    .line 2361
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    return-void
.end method

.method public setImageY(F)V
    .locals 0

    .line 2365
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    return-void
.end method

.method public setInvalidateAll(Z)V
    .locals 0

    .line 845
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    return-void
.end method

.method public setLayerNum(I)V
    .locals 1

    .line 866
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    .line 867
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_0

    .line 868
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result p1

    .line 869
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    :cond_0
    return-void
.end method

.method public setManualAlphaAnimator(Z)V
    .locals 0

    .line 2096
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->manualAlphaAnimator:Z

    return-void
.end method

.method public setMark(Ljava/lang/Object;)V
    .locals 0

    .line 2569
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->mark:Ljava/lang/Object;

    return-void
.end method

.method public setMediaStartEndTime(JJ)V
    .locals 2

    .line 2981
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    .line 2982
    iput-wide p3, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    .line 2984
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2985
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    :cond_0
    return-void
.end method

.method public setNeedsQualityThumb(Z)V
    .locals 0

    .line 2593
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return-void
.end method

.method public setOrientation(IIZ)V
    .locals 1

    :goto_0
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    .line 839
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 840
    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbInvert:I

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageInvert:I

    .line 841
    iput-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    return-void
.end method

.method public setParam(I)V
    .locals 0

    .line 2792
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->param:I

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 2353
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 2354
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2355
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 2356
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPreloadingReceivers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->preloadReceivers:Ljava/util/List;

    return-void
.end method

.method public setPressed(I)V
    .locals 0

    .line 821
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    return-void
.end method

.method public setQualityThumbDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 2597
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 2510
    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    return-void
.end method

.method public setRoundRadius(IIII)V
    .locals 0

    .line 2514
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    return-void
.end method

.method public setRoundRadius([I)V
    .locals 8

    const/4 v0, 0x0

    .line 2519
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 2520
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    move v3, v0

    move v4, v3

    .line 2521
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 2522
    aget v6, v5, v3

    aget v7, p1, v3

    if-eq v6, v7, :cond_0

    move v4, v2

    :cond_0
    if-eq v1, v7, :cond_1

    .line 2526
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    .line 2528
    :cond_1
    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_6

    .line 2531
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_3

    .line 2532
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2534
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_4

    .line 2535
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2537
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 2538
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2540
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 2541
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public setRoundRadiusEnabled(Z)V
    .locals 2

    .line 2547
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-eq v0, p1, :cond_4

    .line 2548
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundRadius:Z

    if-nez p1, :cond_0

    .line 2549
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->emptyRoundRadius:[I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 2550
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->emptyRoundRadius:[I

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2551
    aput v1, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 2553
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_1

    .line 2554
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2556
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_2

    .line 2557
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2559
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 2560
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2562
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 2563
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public setShouldGenerateQualityThumb(Z)V
    .locals 0

    .line 2625
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return-void
.end method

.method public setSideClip(F)V
    .locals 0

    .line 2398
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    return-void
.end method

.method public setSkipUpdateFrame(Z)V
    .locals 0

    .line 3222
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    return-void
.end method

.method public setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method protected setTag(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2783
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:I

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 2785
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaTag:I

    return-void

    .line 2787
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageTag:I

    return-void
.end method

.method public setUniqKeyPrefix(Ljava/lang/String;)V
    .locals 0

    .line 3164
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method public setUseRoundForThumbDrawable(Z)V
    .locals 0

    .line 1242
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    return-void
.end method

.method public setUseSharedAnimationQueue(Z)V
    .locals 0

    .line 2685
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    return-void
.end method

.method public setVideoThumbIsSame(Z)V
    .locals 0

    .line 3214
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 1

    .line 2262
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2265
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz p2, :cond_1

    .line 2267
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 2268
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->visibleInvalidate:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 2269
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibleInvalidate(Ljava/lang/Runnable;)V
    .locals 0

    .line 2276
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->visibleInvalidate:Ljava/lang/Runnable;

    return-void
.end method

.method public skipDraw()V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 2693
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation(Z)V

    return-void
.end method

.method public startAnimation(Z)V
    .locals 2

    .line 2696
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2698
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 2699
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    return-void

    .line 2701
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2702
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2703
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    :cond_1
    return-void
.end method

.method public startCrossfadeFromStaticThumb(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 3148
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->startCrossfadeFromStaticThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startCrossfadeFromStaticThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 3152
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 3153
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 3154
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 3155
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 3156
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3157
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 3158
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    const/4 p1, 0x0

    .line 3159
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 3160
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 2709
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2711
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    return-void

    .line 2713
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2715
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_1
    return-void
.end method

.method public updateStaticDrawableThump(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    .line 88
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateThumbShaderMatrix()Z
    .locals 10

    .line 63
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v3, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IIILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return v9

    .line 67
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v3, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IIILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return v9

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
