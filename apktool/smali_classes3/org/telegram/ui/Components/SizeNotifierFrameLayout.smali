.class public Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;
    }
.end annotation


# static fields
.field private static blurQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static drawingBlur:Z


# instance fields
.field private final DOWN_SCALE:F

.field private final TOP_CLIP_OFFSET:I

.field public adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private animationInProgress:Z

.field attached:Z

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundMotion:Z

.field private backgroundTranslationY:I

.field public backgroundView:Landroid/view/View;

.field private bgAngle:F

.field final blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

.field public blurBehindViews:Ljava/util/ArrayList;

.field blurCrossfade:Landroid/animation/ValueAnimator;

.field public blurCrossfadeProgress:F

.field public blurGeneratingTuskIsRunning:Z

.field public blurIsRunning:Z

.field private blurNodeInvalidated:[Z

.field private blurNodeInvalidatedThisFrame:[Z

.field private blurNodes:[Landroid/graphics/RenderNode;

.field public blurPaintBottom:Landroid/graphics/Paint;

.field public blurPaintBottom2:Landroid/graphics/Paint;

.field public blurPaintTop:Landroid/graphics/Paint;

.field public blurPaintTop2:Landroid/graphics/Paint;

.field private bottomClip:I

.field count:I

.field count2:I

.field currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

.field protected delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

.field protected final delegates:Ljava/util/ArrayList;

.field private drawnBottomOffset:F

.field private emojiHeight:I

.field private emojiOffset:F

.field public invalidateBlur:Z

.field protected keyboardHeight:I

.field private lastDrawnBottomBlurOffset:F

.field private final lastViews:Ljava/util/ArrayList;

.field matrix:Landroid/graphics/Matrix;

.field matrix2:Landroid/graphics/Matrix;

.field public needBlur:Z

.field public needBlurBottom:Z

.field private occupyStatusBar:Z

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundMotion:Z

.field private parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

.field private parallaxScale:F

.field private parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private paused:Z

.field prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

.field private rect:Landroid/graphics/Rect;

.field private selectedBlurPaint:Landroid/graphics/Paint;

.field private selectedBlurPaint2:Landroid/graphics/Paint;

.field private skipBackgroundDrawing:Z

.field snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

.field private themeAnimationValue:F

.field times:I

.field times2:I

.field private translationX:F

.field private translationY:F

.field public unusedBitmaps:Ljava/util/ArrayList;

.field private final views:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$7VpAsfh3XCuxzriCqsjqtUu3brk(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lambda$notifyHeightChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQkImTFa_QFI4LXUUFy8iekkIZI(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lambda$checkMotion$0(IIF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimationInProgress(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiHeight(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiOffset(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoccupyStatusBar(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldBackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparallaxScale(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentLayout(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetskipBackgroundDrawing(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettranslationX(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldBackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkMotion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkSnowflake(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 2

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    .line 108
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    .line 109
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    .line 111
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    const/high16 p1, 0x41400000    # 12.0f

    .line 119
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DOWN_SCALE:F

    const/16 p1, 0x22

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->TOP_CLIP_OFFSET:I

    .line 128
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    .line 633
    new-instance p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout-IA;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 p1, 0x2

    .line 934
    new-array v0, p1, [Z

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    .line 935
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    .line 938
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    .line 939
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 164
    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 165
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->createAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method private checkLayerType()V
    .locals 0

    return-void
.end method

.method private checkMotion()V
    .locals 3

    .line 402
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 422
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 424
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    const/4 v0, 0x0

    .line 425
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    .line 426
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    return-void

    .line 404
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-nez v0, :cond_2

    .line 405
    new-instance v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    .line 406
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    .line 418
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    if-nez v0, :cond_3

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private checkSnowflake(Landroid/graphics/Canvas;)V
    .locals 2

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->canStartHolidayAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Lorg/telegram/ui/Components/SnowflakesEffect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    const/4 v1, -0x1

    .line 589
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;->setForcedColor(I)V

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawListWithCallbacks(Landroid/graphics/Canvas;Z)V
    .locals 4

    .line 942
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateOptimized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    .line 949
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;

    .line 950
    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;->listenInvalidate(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 952
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;

    .line 953
    new-instance v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;->listenInvalidate(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static getBlurRadius()F
    .locals 2

    .line 975
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    return v0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public static getRenderNodeScale()F
    .locals 2

    .line 963
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    .line 970
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    .line 965
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    return v0

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    .line 967
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method private synthetic lambda$checkMotion$0(IIF)V
    .locals 0

    int-to-float p1, p1

    .line 407
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    int-to-float p1, p2

    .line 408
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    .line 409
    iput p3, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bgAngle:F

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyHeightChanged$1(Z)V
    .locals 3

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-eqz v0, :cond_0

    .line 500
    iget v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    :cond_0
    const/4 v0, 0x0

    .line 502
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-interface {v1, v2, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateBlurShaderPosition(FZ)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_1

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    .line 1127
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    .line 1130
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    const/high16 v1, 0x42080000    # 34.0f

    if-nez p2, :cond_3

    neg-float p1, p1

    .line 1134
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    add-float/2addr v2, p1

    iget v3, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnListTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr p2, v3

    sub-float/2addr v2, p2

    .line 1135
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1136
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v3, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1138
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz p2, :cond_4

    .line 1139
    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    add-float/2addr p1, v2

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    sub-float/2addr p1, v1

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnListTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr p2, v1

    sub-float/2addr p1, p2

    .line 1140
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1141
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v0, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .line 1144
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    sub-float/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1145
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v3, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1147
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz p2, :cond_4

    .line 1148
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    sub-float/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v0, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1153
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1155
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public DRAW_USING_RENDERNODE()Z
    .locals 2

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blurWasDrawn()Z
    .locals 1

    .line 928
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected createAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/4 v2, 0x1

    .line 861
    aput-boolean v1, v0, v2

    .line 862
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->startBlur()V

    .line 865
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 8

    .line 991
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 992
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;ZI)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;ZF)V
    .locals 9

    .line 996
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    .line 997
    invoke-static {v1, v0, p6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;ZI)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v3, p5

    const/16 v4, 0xff

    move/from16 v5, p6

    if-ne v5, v4, :cond_0

    .line 1001
    sget-boolean v6, Lcom/exteragram/messenger/ExteraConfig;->forceBlur:Z

    if-eqz v6, :cond_0

    const/16 v5, 0xc8

    :cond_0
    move v10, v5

    .line 1004
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1005
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 1008
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1009
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1010
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 1013
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    if-nez v5, :cond_3

    const/4 v5, 0x2

    .line 1014
    new-array v5, v5, [Landroid/graphics/RenderNode;

    iput-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    .line 1016
    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getRenderNodeScale()F

    move-result v5

    xor-int/lit8 v11, v3, 0x1

    const/4 v12, 0x1

    if-nez v3, :cond_4

    .line 1018
    iget-object v13, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aget-boolean v13, v13, v11

    if-nez v13, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v13

    iget v14, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastDrawnBottomBlurOffset:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3dcccccd    # 0.1f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 1019
    iget-object v13, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aput-boolean v12, v13, v11

    :cond_4
    const/high16 v13, 0x42100000    # 36.0f

    .line 1021
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    if-ge v10, v4, :cond_7

    .line 1022
    iget-object v15, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aget-boolean v15, v15, v11

    if-eqz v15, :cond_7

    iget-object v15, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    aget-boolean v15, v15, v11

    if-nez v15, :cond_7

    .line 1023
    iget-object v15, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v16, v15, v11

    if-nez v16, :cond_5

    .line 1024
    invoke-static {}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot$$ExternalSyntheticApiModelOutline0;->m()V

    const/high16 p6, 0x437f0000    # 255.0f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v7, "blurNode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v6

    aput-object v6, v15, v11

    .line 1025
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v7, 0x40000000    # 2.0f

    .line 1026
    invoke-virtual {v6, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1027
    iget-object v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v7, v7, v11

    .line 1028
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBlurRadiusInternal()F

    move-result v15

    move/from16 v17, v12

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBlurRadiusInternal()F

    move-result v12

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Shader$TileMode;

    move-result-object v4

    invoke-static {v15, v12, v4}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v4

    new-instance v12, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v12, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1029
    invoke-static {v12}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    move-result-object v6

    .line 1027
    invoke-static {v4, v6}, Landroid/graphics/RenderEffect;->createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    goto :goto_0

    :cond_5
    move/from16 v17, v12

    const/high16 p6, 0x437f0000    # 255.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 1032
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1033
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 1034
    iget-object v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v7, v7, v11

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v12, v13, 0x2

    add-int/2addr v12, v6

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v15, v4, v12}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 1035
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    .line 1036
    sput-boolean v17, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawingBlur:Z

    div-float v7, v16, v5

    .line 1037
    invoke-virtual {v4, v7, v7}, Landroid/graphics/RecordingCanvas;->scale(FF)V

    .line 1038
    invoke-virtual {v4, v9}, Landroid/graphics/RecordingCanvas;->drawPaint(Landroid/graphics/Paint;)V

    int-to-float v7, v13

    .line 1039
    invoke-virtual {v4, v14, v7}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    if-nez v3, :cond_6

    .line 1041
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastDrawnBottomBlurOffset:F

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iput v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawnBottomOffset:F

    neg-float v6, v7

    invoke-virtual {v4, v14, v6}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 1043
    :cond_6
    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawListWithCallbacks(Landroid/graphics/Canvas;Z)V

    .line 1044
    sput-boolean v15, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawingBlur:Z

    .line 1045
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1046
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    aput-boolean v17, v4, v11

    .line 1047
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aput-boolean v15, v4, v11

    goto :goto_1

    :cond_7
    move/from16 v17, v12

    const/high16 p6, 0x437f0000    # 255.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 1050
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateOptimized()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1051
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aput-boolean v17, v4, v11

    .line 1052
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlurredViews()V

    .line 1055
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1056
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1057
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1058
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v4, v4, v11

    if-eqz v4, :cond_a

    const/16 v6, 0xff

    if-ge v10, v6, :cond_a

    int-to-float v6, v10

    div-float v6, v6, p6

    sub-float v7, v16, v6

    .line 1059
    invoke-virtual {v4, v7}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    if-eqz v3, :cond_9

    neg-float v2, v2

    .line 1061
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_9
    neg-float v2, v2

    .line 1063
    iget v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawnBottomOffset:F

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastDrawnBottomBlurOffset:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v6

    add-float/2addr v4, v6

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    neg-int v2, v13

    int-to-float v2, v2

    .line 1065
    invoke-virtual {v1, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1066
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1067
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1069
    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_b
    const/high16 p6, 0x437f0000    # 255.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 1072
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-nez v4, :cond_c

    .line 1073
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 1077
    :cond_c
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurShaderPosition(FZ)V

    const/16 v6, 0xff

    .line 1078
    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1079
    iget v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1080
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1081
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1082
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    mul-float v6, v6, p6

    float-to-int v6, v6

    const/16 v7, 0x1f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1083
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1084
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1085
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 1087
    :cond_d
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1088
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1091
    :goto_3
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1092
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public getBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundSizeY()I
    .locals 3

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 544
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 545
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    .line 547
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    float-to-int v0, v0

    :goto_0
    move v2, v0

    goto :goto_1

    .line 548
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 551
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    goto :goto_0

    .line 554
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    neg-int v2, v0

    goto :goto_1

    .line 556
    :cond_4
    instance-of v0, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_5

    .line 557
    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    .line 559
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    return v0
.end method

.method public getBackgroundTranslationY()I
    .locals 2

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 529
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    .line 530
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    float-to-int v0, v0

    return v0

    .line 531
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eqz v0, :cond_1

    return v0

    .line 534
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return v0

    .line 535
    :cond_2
    instance-of v0, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_3

    .line 536
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected getBlurRadiusInternal()F
    .locals 1

    .line 987
    invoke-static {}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBlurRadius()F

    move-result v0

    return v0
.end method

.method protected getBottomOffset()F
    .locals 1

    .line 834
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomTranslation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeightWithKeyboard()I
    .locals 2

    .line 563
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 488
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    return v0
.end method

.method protected getListTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 621
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getNewDrawableMotion()Z
    .locals 1

    .line 625
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    return v0
.end method

.method protected getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScrollOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateBackground()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidateBlur()V
    .locals 1

    .line 132
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public invalidateBlurredViews()V
    .locals 3

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 827
    aput-boolean v2, v0, v2

    .line 828
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected invalidateOptimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isStatusBarVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public measureKeyboardHeight()I
    .locals 4

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 480
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    return v3

    .line 483
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    return v0
.end method

.method public notifyHeightChanged()V
    .locals 3

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 496
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    .line 497
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 498
    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 870
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 871
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    .line 872
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-nez v1, :cond_0

    .line 873
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    .line 874
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    .line 876
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_1

    .line 877
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    .line 879
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 880
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onAttachedToWindow()V

    .line 882
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_3

    .line 883
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    .line 885
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_4

    .line 886
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onAttachedToWindow()V

    :cond_4
    return-void
.end method

.method protected onBackgroundViewInvalidate()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 892
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 893
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    .line 894
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 896
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 897
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfade:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 899
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 901
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v1, :cond_1

    .line 902
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->recycle()V

    .line 903
    iput-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    :cond_1
    move v1, v0

    .line 905
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 906
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 907
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->recycle()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 910
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 911
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_4

    .line 914
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    .line 916
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_5

    .line 917
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    .line 919
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_6

    .line 920
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onDetachedFromWindow()V

    .line 922
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_7

    .line 923
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onDetachedFromWindow()V

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 473
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 474
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 466
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    return-void
.end method

.method public onUpdateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public removeDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 371
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p2, p1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-nez p2, :cond_1

    .line 375
    new-instance p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 376
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkLayerType()V

    .line 378
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_2

    .line 379
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 382
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p2, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_3

    .line 383
    check-cast p2, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    .line 385
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p2, :cond_4

    instance-of p2, p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz p2, :cond_4

    .line 387
    check-cast p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    .line 389
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_5

    .line 390
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onDetachedFromWindow()V

    .line 392
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_6

    .line 393
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onAttachedToWindow()V

    .line 395
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onUpdateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkMotion()V

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 398
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkLayerType()V

    return-void
.end method

.method public setBackgroundTranslation(I)V
    .locals 1

    .line 519
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    if-eq p1, v0, :cond_0

    .line 520
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBottomClip(I)V
    .locals 1

    .line 510
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    if-eq p1, v0, :cond_0

    .line 511
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    return-void
.end method

.method public setEmojiKeyboardHeight(I)V
    .locals 1

    .line 567
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eq v0, p1, :cond_0

    .line 568
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 0

    .line 454
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    return-void
.end method

.method public setSkipBackgroundDrawing(Z)V
    .locals 1

    .line 612
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    if-eq v0, p1, :cond_0

    .line 613
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public startBlur()V
    .locals 18

    move-object/from16 v1, p0

    .line 636
    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 640
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    .line 641
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->forceBlur:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 644
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 645
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    if-eqz v2, :cond_9

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x0

    .line 660
    iput-boolean v4, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    const/4 v5, 0x1

    .line 661
    iput-boolean v5, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    int-to-float v6, v3

    const/high16 v0, 0x41400000    # 12.0f

    div-float v7, v6, v0

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x22

    int-to-float v8, v2

    div-float v0, v8, v0

    float-to-int v0, v0

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 668
    iget-object v11, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    if-lez v11, :cond_3

    .line 669
    iget-object v11, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    goto :goto_0

    :cond_3
    move-object v11, v12

    :goto_0
    if-nez v11, :cond_4

    .line 673
    new-instance v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout-IA;)V

    .line 674
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    .line 675
    new-instance v14, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;

    iget-object v15, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    .line 677
    iget-boolean v14, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlurBottom:Z

    if-eqz v14, :cond_5

    .line 678
    invoke-static {v0, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    .line 679
    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;

    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    goto :goto_1

    .line 682
    :cond_4
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 683
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 684
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 690
    :cond_5
    :goto_1
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 691
    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x22

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 692
    iget-object v13, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 693
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getScrollOffset()I

    move-result v14

    rem-int/lit8 v14, v14, 0x18

    iput v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    .line 695
    iget-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    const/high16 v16, 0x41200000    # 10.0f

    mul-float v15, v7, v16

    iget-object v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v17, v5

    iget-object v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v14, v12, v15, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 696
    iget-object v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 697
    iget-object v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    iget v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v5, v5

    add-float/2addr v15, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v15}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v0, v12, v0

    .line 699
    iput v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    div-float v0, v12, v7

    .line 700
    iput v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    .line 702
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    move/from16 v7, v17

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    .line 704
    :try_start_0
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 706
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 709
    :goto_2
    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlurBottom:Z

    if-eqz v0, :cond_6

    .line 710
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 711
    iget-object v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x22

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/4 v7, 0x1

    .line 712
    iput-boolean v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->needBlurBottom:Z

    .line 713
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v7

    sub-float/2addr v7, v6

    iput v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    .line 714
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v6

    iput v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnListTranslationY:F

    .line 715
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 716
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    mul-float v15, v4, v16

    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    invoke-virtual {v6, v12, v15, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 717
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 718
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    iget v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    sub-float/2addr v15, v7

    iget v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v7, v7

    add-float/2addr v15, v7

    invoke-virtual {v6, v5, v15}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v0, v12, v0

    .line 719
    iput v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    div-float/2addr v12, v4

    .line 720
    iput v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    .line 722
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    .line 723
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 725
    iput-boolean v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->needBlurBottom:Z

    .line 729
    :goto_3
    iget v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    int-to-long v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    .line 730
    iget v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    const/16 v4, 0x14

    if-lt v0, v4, :cond_7

    const/4 v5, 0x0

    .line 732
    iput v5, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    .line 733
    iput v5, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    .line 736
    :cond_7
    sget-object v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_8

    .line 737
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v4, "BlurQueue"

    invoke-direct {v0, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 739
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit16 v2, v2, 0xb4

    const/4 v3, 0x6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurRadius:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;->radius:I

    .line 740
    iget-object v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    iput-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;->finalBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    .line 741
    sget-object v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method public updateBlurContent()V
    .locals 1

    .line 820
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlurredViews()V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method

.method protected useRootView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 630
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
