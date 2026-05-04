.class public Lorg/telegram/ui/ActionBar/ActionBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    }
.end annotation


# instance fields
.field private actionBarColor:I

.field public actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeAnimation:Landroid/animation/AnimatorSet;

.field private actionModeColor:I

.field private actionModeExtraView:Landroid/view/View;

.field private actionModeHidingViews:[Landroid/view/View;

.field private actionModeShowingView:Landroid/view/View;

.field private actionModeTag:Ljava/lang/String;

.field private actionModeTop:Landroid/view/View;

.field private actionModeTranslationView:Landroid/view/View;

.field protected actionModeVisible:Z

.field private adaptiveBackground:Z

.field private adaptive_animator:Landroid/animation/ValueAnimator;

.field private adaptive_lowerColorKey:I

.field private adaptive_topColorKey:I

.field private addToContainer:Z

.field private additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

.field private additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private allowOverlayTitle:Z

.field private animatedCenterTitleAvailableWidth:F

.field private animatedCenterTitleX:F

.field private attachState:Z

.field private attached:Z

.field private avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private backButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public backButtonImageView:Landroid/widget/ImageView;

.field private backButtonState:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

.field backgroundUpdateListener:Ljava/lang/Runnable;

.field public blurScrimPaint:Landroid/graphics/Paint;

.field blurredBackground:Z

.field private castShadows:Z

.field private centerScale:Z

.field private centerTitleAnimationTargetWidth:I

.field private centerTitleAnimationTargetX:I

.field private centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

.field private clipContent:Z

.field contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private drawBackButton:Z

.field ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field private extraHeight:I

.field private fireworks:Z

.field private fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

.field private fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private forceSkipTouches:Z

.field private fromBottom:Z

.field private ignoreLayoutRequest:Z

.field private interceptTouchEventListener:Landroid/view/View$OnTouchListener;

.field private interceptTouches:Z

.field private isCenterTitle:Z

.field private isMenuOffsetSuppressed:Z

.field protected isSearchFieldVisible:Z

.field protected itemsActionModeBackgroundColor:I

.field protected itemsActionModeColor:I

.field protected itemsBackgroundColor:I

.field protected itemsColor:I

.field private lastMeasuredWidth:I

.field private lastOverlayTitle:Ljava/lang/CharSequence;

.field private lastRightDrawable:Landroid/graphics/drawable/Drawable;

.field private lastRunnable:Ljava/lang/Runnable;

.field private lastTitle:Ljava/lang/CharSequence;

.field public menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field protected occupyStatusBar:Z

.field private onTop:Z

.field private onTopAnimated:F

.field private overlayTitleAnimation:Z

.field overlayTitleAnimationInProgress:Z

.field private final overlayTitleToSet:[Ljava/lang/Object;

.field protected parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private rect:Landroid/graphics/Rect;

.field rectTmp:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private resumed:Z

.field private rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

.field public searchFieldVisibleAlpha:F

.field searchVisibleAnimator:Landroid/animation/AnimatorSet;

.field private shadowAlpha:I

.field private snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

.field private subtitle:Ljava/lang/CharSequence;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private supportsHolidayImage:Z

.field private titleActionRunnable:Ljava/lang/Runnable;

.field private titleAnimationRunning:Z

.field private titleAnimator:Landroid/animation/AnimatorSet;

.field private titleColorToSet:I

.field private titleOverlayShown:Z

.field private titleRightMargin:I

.field private final titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titlesContainer:Landroid/widget/FrameLayout;

.field private useContainerForTitles:Z


# direct methods
.method public static synthetic $r8$lambda$-lnumnguX8KMjKLOfI9NQ-NTlcE(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$hideActionMode$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4X1MLK8j-mRNIqd2G5nAfOGYx3A(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$setAdaptiveBackground$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CM3cK5nqbPRjJrj4lTX6E_6Jh-Y(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$createBackButtonImage$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KRQqxpMCLQ0_KACF4ydNNUc26VA(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L16h8hd_aqpHHJL8gR2pq1w-ybw(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$showActionMode$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SD7NJDGTaOYMYSI2rSc863DbVD4(Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/SectionsScrollView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$setAdaptiveBackground$9(Lorg/telegram/ui/Components/SectionsScrollView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XAj7ZrMc2Ohy4w1kPd8nLtIg-iU(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$onSearchFieldVisibilityChanged$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fAtKgqUtPKoIeIrwK9rLqa4p2Ic(Lorg/telegram/ui/ActionBar/ActionBar;FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$updateCenterTitleLayoutAnimation$5(FIFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rEQE6Q6P9U9SDkkoXVfLmVaYokQ(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$setAdaptiveBackground$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tL2FqD-_ye-2ecDGtj7IFUiErJQ(Lorg/telegram/ui/ActionBar/ActionBar;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$setAdaptiveBackground$7(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionMode(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionModeAnimation(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionModeColor(Lorg/telegram/ui/ActionBar/ActionBar;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactionModeExtraView(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionModeHidingViews(Lorg/telegram/ui/ActionBar/ActionBar;)[Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionModeTop(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarSearchImageView(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcenterTitleLayoutAnimator(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverlayTitleToSet(Lorg/telegram/ui/ActionBar/ActionBar;)[Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitle(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitleTextView(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitlesContainer(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionModeAnimation(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputactionModeColor(Lorg/telegram/ui/ActionBar/ActionBar;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatedCenterTitleAvailableWidth(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatedCenterTitleX(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcenterTitleAnimationTargetWidth(Lorg/telegram/ui/ActionBar/ActionBar;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcenterTitleAnimationTargetX(Lorg/telegram/ui/ActionBar/ActionBar;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcenterTitleLayoutAnimator(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonTopAnimated(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtitleAnimationRunning(Lorg/telegram/ui/ActionBar/ActionBar;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$madaptive_updateColor(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 178
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    sget-object p1, Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;->BACK:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonState:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    const/4 p1, 0x2

    .line 91
    new-array p1, p1, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 106
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    const/4 v0, 0x3

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    .line 133
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    const/16 v0, 0xff

    .line 134
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->shadowAlpha:I

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleColorToSet:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 157
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    .line 158
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    const/high16 v0, -0x80000000

    .line 159
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    .line 161
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastMeasuredWidth:I

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    .line 2396
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2397
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    .line 179
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 180
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private adaptive_updateColor()V
    .locals 4

    .line 2478
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptiveBackground:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 2480
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_topColorKey:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_lowerColorKey:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 2481
    :goto_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_topColorKey:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_1
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    .line 2479
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2484
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setShadowAlpha(I)V

    .line 2485
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    if-eqz v0, :cond_3

    .line 2486
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method private createBackButtonImage()V
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    .line 202
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v1, 0x33

    const/16 v2, 0x36

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createSubtitleTextView()V
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 381
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x33

    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createTitleTextView(I)V
    .locals 5

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-void

    .line 433
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isCenterTitle:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x11

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 435
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleColorToSet:I

    if-eqz v0, :cond_3

    .line 436
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_2

    .line 438
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 440
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEmojiColor(I)V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    .line 445
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->useContainerForTitles:Z

    const/16 v1, 0x33

    const/4 v2, -0x2

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, v4, p1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 448
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, v0, p1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getAdaptiveCenterTitleAvailableWidth(II)I
    .locals 1

    .line 1312
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getCenterTitleRightBound(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    sub-int/2addr p1, p2

    .line 1313
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getAdaptiveCenterTitleCenterX(II)I
    .locals 0

    .line 1317
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getCenterTitleRightBound(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p2

    .line 1318
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    return p2
.end method

.method private getAnimatedCenterTitleAvailableWidth(I)I
    .locals 1

    .line 1343
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getAnimatedCenterTitleX(I)I
    .locals 1

    .line 1339
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getCenterTitleRightBound(I)I
    .locals 2

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1303
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v1, :cond_0

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibleItemsMeasuredWidthForCenterTitle()I

    move-result v0

    :cond_0
    sub-int/2addr p1, v0

    return p1

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    .line 1308
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getCenteredTitleAvailableWidth(IIZ)I
    .locals 2

    if-eqz p3, :cond_0

    .line 1323
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getAdaptiveCenterTitleAvailableWidth(II)I

    move-result p1

    return p1

    :cond_0
    const/high16 p3, 0x42f00000    # 120.0f

    .line 1325
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int p3, p1, p3

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1326
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getCenterTitleRightBound(I)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1327
    div-int/lit8 p1, p1, 0x2

    sub-int p2, p1, p2

    sub-int/2addr v1, p1

    .line 1330
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 1331
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public static getCurrentActionBarHeight()I
    .locals 2

    .line 1945
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/high16 v0, 0x42600000    # 56.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    goto :goto_0
.end method

.method private getTargetCenterTitleX(IIZ)I
    .locals 0

    if-eqz p3, :cond_0

    .line 1335
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getAdaptiveCenterTitleCenterX(II)I

    move-result p1

    return p1

    :cond_0
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2306
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getTitleLeft(Z)I
    .locals 0

    if-nez p1, :cond_1

    .line 477
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x41d00000    # 26.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41900000    # 18.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    .line 479
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldUseDialogsDrawerTitleOffset()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 480
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x42880000    # 68.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x42600000    # 56.0f

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    .line 482
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 p1, 0x42a00000    # 80.0f

    goto :goto_2

    :cond_4
    const/high16 p1, 0x42900000    # 72.0f

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createBackButtonImage$1(Landroid/view/View;)V
    .locals 1

    .line 208
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 213
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hideActionMode$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 983
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSearchFieldVisibilityChanged$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchFieldVisibleAlpha:F

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setAdaptiveBackground$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2412
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    .line 2413
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    return-void
.end method

.method private synthetic lambda$setAdaptiveBackground$7(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    const/4 v0, -0x1

    .line 2406
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 2407
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 2408
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 2409
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2410
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    .line 2411
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2415
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$14;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar$14;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2422
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2423
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2424
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$setAdaptiveBackground$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2454
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    .line 2455
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    return-void
.end method

.method private synthetic lambda$setAdaptiveBackground$9(Lorg/telegram/ui/Components/SectionsScrollView;)V
    .locals 4

    const/4 v0, -0x1

    .line 2448
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 2449
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 2450
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 2451
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2452
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    .line 2453
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2457
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$16;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar$16;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2464
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2465
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2466
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showActionMode$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 800
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 801
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateCenterTitleLayoutAnimation$5(FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1400
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    int-to-float p2, p2

    sub-float/2addr p2, p1

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    .line 1401
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    int-to-float p1, p4

    sub-float/2addr p1, p3

    mul-float/2addr p1, p5

    add-float/2addr p3, p1

    .line 1402
    iput p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    .line 1403
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void
.end method

.method private resetCenterTitleLayoutAnimation()V
    .locals 1

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1288
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1290
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    .line 1291
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    const/high16 v0, -0x80000000

    .line 1292
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    const/4 v0, -0x1

    .line 1293
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    return-void
.end method

.method private shouldAnimateCenterTitleLayout()Z
    .locals 1

    .line 1347
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldUseAdaptiveCenterTitle()Z
    .locals 2

    .line 1297
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibleItemsCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldUseDialogsDrawerTitleOffset()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->navigationDrawer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateAttachState()V
    .locals 2

    .line 2126
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2127
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attachState:Z

    if-eq v1, v0, :cond_2

    .line 2128
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attachState:Z

    if-eqz v0, :cond_1

    .line 2130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    return-void

    .line 2132
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    :cond_2
    return-void
.end method

.method private updateCenterTitleLayoutAnimation(IIZ)V
    .locals 8

    .line 1351
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-nez v0, :cond_0

    .line 1352
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->resetCenterTitleLayoutAnimation()V

    return-void

    .line 1356
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v3, p0

    move v5, p1

    move v7, p2

    goto/16 :goto_0

    :cond_2
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-nez p3, :cond_4

    .line 1363
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_3

    .line 1364
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1365
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    int-to-float p1, p1

    .line 1367
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    int-to-float p1, p2

    .line 1368
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    .line 1369
    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    .line 1370
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    return-void

    .line 1374
    :cond_4
    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    .line 1375
    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    int-to-float p3, p1

    sub-float v3, v4, p3

    .line 1376
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    int-to-float v3, p2

    sub-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_6

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1378
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    .line 1380
    :cond_5
    iput p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    .line 1381
    iput v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    .line 1382
    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    .line 1383
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    return-void

    .line 1387
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_7

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    if-ne v0, p1, :cond_7

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    if-ne v0, p2, :cond_7

    return-void

    :cond_7
    if-eqz p3, :cond_8

    .line 1392
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1393
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    :cond_8
    const/4 p3, 0x2

    .line 1396
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x104

    .line 1397
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1398
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1399
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda6;

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;FIFI)V

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1405
    iget-object p1, v3, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBar$5;

    invoke-direct {p2, p0, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBar$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;II)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1426
    iput v5, v3, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetX:I

    .line 1427
    iput v7, v3, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleAnimationTargetWidth:I

    .line 1428
    iget-object p1, v3, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :goto_0
    int-to-float p1, v5

    .line 1357
    iput p1, v3, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleX:F

    int-to-float p1, v7

    .line 1358
    iput p1, v3, Lorg/telegram/ui/ActionBar/ActionBar;->animatedCenterTitleAvailableWidth:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public actionModeIsExist(Ljava/lang/String;)Z
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTag:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public beginDelayedTransition()V
    .locals 3

    .line 2146
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_0

    .line 2147
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    .line 2148
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 2149
    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 2150
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 2202
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    const-wide/16 v1, 0xdc

    .line 2203
    invoke-virtual {v0, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 2204
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 2205
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public closeSearchField()V
    .locals 1

    const/4 v0, 0x1

    .line 1219
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField(Z)V

    return-void
.end method

.method public closeSearchField(Z)V
    .locals 1

    .line 1223
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    return-object v0
.end method

.method public createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    .line 634
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p1

    .line 637
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_1

    .line 638
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 639
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 641
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTag:Ljava/lang/String;

    .line 642
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBar$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 p2, 0x1

    .line 677
    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    .line 678
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 681
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 682
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    .line 683
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 684
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 685
    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p2, 0x5

    .line 686
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 687
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p1
.end method

.method public createAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;
    .locals 4

    .line 2373
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-nez v0, :cond_0

    .line 2374
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar$13;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar$13;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    const/4 v1, 0x0

    .line 2384
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2385
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2387
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    return-object v0
.end method

.method public createAdditionalSubtitleTextView()V
    .locals 3

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 392
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x33

    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 4

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    return-object v0

    .line 608
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v1, -0x1

    const/4 v2, 0x5

    const/4 v3, -0x2

    .line 609
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2318
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    if-eqz v0, :cond_1

    .line 2319
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2321
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptiveBackground:Z

    if-eqz v0, :cond_0

    .line 2322
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    sub-float v7, v0, v2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;ZF)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 2324
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    move-object v9, v2

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 2327
    :goto_0
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isActionBarInCrossfade()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 305
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->drawBackButton:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-ne p2, v0, :cond_1

    return v2

    .line 309
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldClipChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v4, :cond_2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 314
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 315
    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    if-eqz p4, :cond_a

    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleOverlayShown:Z

    if-nez p4, :cond_a

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p4, :cond_a

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, p4, v1

    if-eq p2, v3, :cond_4

    aget-object p4, p4, v2

    if-eq p2, p4, :cond_4

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    if-ne p2, p4, :cond_a

    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->useContainerForTitles:Z

    if-eqz p4, :cond_a

    .line 316
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 318
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v1

    goto :goto_1

    :cond_5
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    :goto_1
    if-eqz v3, :cond_6

    .line 319
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 320
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 321
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 322
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 323
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextStartX()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawableXOffset()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawableXOffset()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 324
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextStartY()I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawableYOffset()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    mul-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 325
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p4, v2, v5, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 327
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    if-eqz p4, :cond_6

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 334
    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->canStartHolidayAnimation()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 335
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworks:Z

    const/4 p4, 0x0

    if-nez p2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-nez v2, :cond_7

    .line 336
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    .line 337
    new-instance p2, Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 338
    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    iput-boolean p4, p2, Lorg/telegram/ui/Components/SnowflakesEffect;->occupyStatusBar:Z

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz p2, :cond_8

    .line 341
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 342
    new-instance p2, Lorg/telegram/ui/Components/FireworksEffect;

    invoke-direct {p2}, Lorg/telegram/ui/Components/FireworksEffect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    .line 346
    :cond_8
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz p2, :cond_9

    .line 347
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 348
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    if-eqz p2, :cond_a

    .line 349
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/FireworksEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    return p3
.end method

.method public getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    return-object v0
.end method

.method public getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    .line 2138
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method public getAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 2390
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    return-object v0
.end method

.method public getAdditionalSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBackButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonState:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1090
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    return v0
.end method

.method public getCastShadows()Z
    .locals 1

    .line 1933
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return v0
.end method

.method public getOccupyStatusBar()Z
    .locals 1

    .line 1852
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method public getSearchAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getShadowAlpha()I
    .locals 1

    .line 1929
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->shadowAlpha:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 594
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 3

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 579
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 580
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x41900000    # 18.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0

    .line 583
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 2

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTitleTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 2

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTitlesContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 2360
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideActionMode()V
    .locals 11

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 931
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    const/4 v0, 0x0

    .line 932
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 933
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 934
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    .line 936
    array-length v7, v2

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v2, v8

    if-eqz v9, :cond_1

    .line 938
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 939
    new-array v10, v3, [F

    aput v4, v10, v0

    invoke-static {v9, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 943
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v2, :cond_3

    .line 944
    new-array v8, v3, [F

    aput v5, v8, v0

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 945
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    .line 947
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeShowingView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 948
    new-array v8, v3, [F

    aput v5, v8, v0

    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 954
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    new-array v9, v3, [F

    aput v8, v9, v0

    invoke-static {v2, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v2, :cond_7

    .line 957
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 958
    new-array v7, v3, [F

    aput v4, v7, v0

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 961
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v7, v3, [F

    aput v4, v7, v0

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_8

    .line 965
    new-array v7, v3, [F

    aput v4, v7, v0

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_8
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    if-nez v2, :cond_9

    .line 969
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 971
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-static {v4}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v4, v6, v8

    if-ltz v4, :cond_a

    move v4, v3

    goto :goto_1

    :cond_a
    move v4, v0

    :goto_1
    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 974
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_b

    .line 975
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 977
    :cond_b
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 978
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    .line 980
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 981
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 986
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    aput-object v1, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 988
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 989
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1011
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1012
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v1, :cond_e

    .line 1013
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_d

    .line 1014
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1017
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_f

    .line 1021
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 1024
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1025
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_10

    .line 1026
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_3

    .line 1027
    :cond_10
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_11

    .line 1028
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 1030
    :cond_11
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isActionModeShowed()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isActionModeShowed(Ljava/lang/String;)Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTag:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isSearchFieldVisible()Z
    .locals 1

    .line 1841
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    return v0
.end method

.method public listenToBackgroundUpdate(Ljava/lang/Runnable;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 2086
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2087
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    .line 2088
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    .line 2089
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2090
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    :cond_0
    if-nez v1, :cond_1

    .line 2092
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2093
    :cond_1
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    .line 2094
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_0

    .line 2096
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 2099
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_4

    .line 2100
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 7

    .line 2106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2107
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    .line 2108
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2109
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2110
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerTitleLayoutAnimator:Landroid/animation/ValueAnimator;

    .line 2112
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    .line 2113
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v1, :cond_4

    .line 2114
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 2117
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-static {v3}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_1

    .line 2115
    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2120
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_5

    .line 2121
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 277
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleOverlayShown:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworks:Z

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworks:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 287
    new-instance v0, Lorg/telegram/ui/Components/FireworksEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/FireworksEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    .line 283
    new-instance v0, Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 284
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->occupyStatusBar:Z

    .line 289
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 293
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouchEventListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .line 1574
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1577
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1578
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v1, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1579
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleLeft(Z)I

    move-result v1

    goto :goto_1

    .line 1581
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleLeft(Z)I

    move-result v1

    .line 1584
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 1585
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->searchFieldVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x42940000    # 74.0f

    goto :goto_2

    :cond_2
    const/high16 v4, 0x42840000    # 66.0f

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_3

    :cond_3
    sub-int v4, p4, p2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1586
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v5, v4, p1, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1589
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldUseAdaptiveCenterTitle()Z

    move-result v4

    .line 1590
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v5, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getTargetCenterTitleX(IIZ)I

    move-result v5

    .line 1591
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-direct {p0, v6, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getCenteredTitleAvailableWidth(IIZ)I

    move-result v4

    .line 1592
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAnimateCenterTitleLayout()Z

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->updateCenterTitleLayoutAnimation(IIZ)V

    .line 1593
    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getAnimatedCenterTitleX(I)I

    move-result v4

    move v5, v0

    :goto_4
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-ge v5, v7, :cond_c

    .line 1596
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v8, v5

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_b

    .line 1598
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    if-eqz v8, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    if-nez v8, :cond_7

    if-ne v5, v2, :cond_7

    :cond_6
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    if-eqz v8, :cond_7

    .line 1599
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/2addr v6, v7

    goto :goto_6

    .line 1601
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_9

    .line 1602
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    div-int/2addr v8, v7

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v7, :cond_8

    goto :goto_5

    :cond_8
    const/high16 v6, 0x40400000    # 3.0f

    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v8

    goto :goto_6

    .line 1604
    :cond_9
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/2addr v6, v7

    .line 1607
    :goto_6
    sget-boolean v8, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v8, :cond_a

    .line 1608
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    sub-int v9, v4, v9

    add-int/2addr v6, p1

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int v10, v6, v10

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    div-int/2addr v11, v7

    add-int/2addr v11, v4

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v8, v9, v10, v11, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1610
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    add-int/2addr v6, p1

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int v8, v6, v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v6, v10

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v6, v10

    invoke-virtual {v7, v1, v8, v9, v6}, Landroid/view/View;->layout(IIII)V

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1614
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eqz v5, :cond_e

    .line 1615
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    div-int/2addr v5, v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    div-int/2addr v8, v7

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v5, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    .line 1616
    sget-boolean v8, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v8, :cond_d

    .line 1617
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    sub-int v9, v4, v9

    add-int/2addr v5, p1

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v10, v4

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v8, v9, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 1619
    :cond_d
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    add-int/2addr v5, p1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v8, v1, v5, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1622
    :cond_e
    :goto_8
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_10

    .line 1623
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    div-int/2addr v5, v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    div-int/2addr v8, v7

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr v5, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    .line 1624
    sget-boolean v6, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v6, :cond_f

    .line 1625
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v8, v7

    sub-int v8, v4, v8

    add-int/2addr v5, p1

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    add-int/2addr v9, v4

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v6, v8, v5, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    .line 1627
    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    add-int/2addr v5, p1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v1, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1631
    :cond_10
    :goto_9
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_13

    .line 1632
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    div-int/2addr v5, v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    div-int/2addr v6, v7

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    :cond_11
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    .line 1633
    sget-boolean v6, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v6, :cond_12

    .line 1634
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v7

    sub-int v6, v4, v6

    add-int/2addr v5, p1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v8, v7

    add-int/2addr v4, v8

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v1, v6, v5, v4, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    .line 1636
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    add-int/2addr v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v1, v5, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 1640
    :cond_13
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_14

    const/high16 v4, 0x42800000    # 64.0f

    .line 1642
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1643
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/2addr v6, v7

    add-int/2addr v6, p1

    .line 1644
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v4, v8

    .line 1645
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    div-int/2addr v8, v7

    add-int/2addr p1, v8

    .line 1641
    invoke-virtual {v1, v5, v6, v4, p1}, Landroid/view/View;->layout(IIII)V

    .line 1649
    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_b
    if-ge v1, p1, :cond_1c

    .line 1651
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1652
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v5, v0

    if-eq v4, v6, :cond_1b

    aget-object v5, v5, v2

    if-eq v4, v5, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eq v4, v5, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v4, v5, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v4, v5, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eq v4, v5, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v4, v5, :cond_1b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne v4, v5, :cond_15

    goto :goto_10

    .line 1656
    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1658
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1659
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1663
    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_16

    const/16 v9, 0x33

    :cond_16
    and-int/lit8 v10, v9, 0x70

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_18

    const/4 v11, 0x5

    if-eq v9, v11, :cond_17

    .line 1680
    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_17
    sub-int v9, p4, v6

    .line 1676
    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_c
    sub-int/2addr v9, v11

    goto :goto_d

    :cond_18
    sub-int v9, p4, p2

    sub-int/2addr v9, v6

    .line 1673
    div-int/2addr v9, v7

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v11

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    :goto_d
    const/16 v11, 0x10

    if-eq v10, v11, :cond_1a

    const/16 v11, 0x50

    if-eq v10, v11, :cond_19

    .line 1691
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_f

    :cond_19
    sub-int v10, p5, p3

    sub-int/2addr v10, v8

    .line 1688
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_e
    sub-int v5, v10, v5

    goto :goto_f

    :cond_1a
    sub-int v10, p5, p3

    sub-int/2addr v10, v8

    .line 1685
    div-int/2addr v10, v7

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_e

    :goto_f
    add-int/2addr v6, v9

    add-int/2addr v8, v5

    .line 1693
    invoke-virtual {v4, v9, v5, v6, v8}, Landroid/view/View;->layout(IIII)V

    :cond_1b
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_1c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 1433
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1434
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1435
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 1436
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1438
    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->lastMeasuredWidth:I

    if-lez v5, :cond_0

    if-eq v5, v1, :cond_0

    .line 1439
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->resetCenterTitleLayoutAnimation()V

    .line 1441
    :cond_0
    iput v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->lastMeasuredWidth:I

    const/4 v7, 0x1

    .line 1443
    iput-boolean v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->ignoreLayoutRequest:Z

    .line 1444
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1445
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1446
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1448
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    .line 1449
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v9, :cond_2

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_2
    move v9, v8

    :goto_0
    invoke-virtual {v5, v8, v9, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1451
    :cond_3
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/ActionBar;->ignoreLayoutRequest:Z

    .line 1453
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v5, :cond_4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_4
    move v5, v8

    :goto_1
    add-int/2addr v3, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    add-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1456
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_5

    .line 1457
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 1458
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleLeft(Z)I

    move-result v3

    goto :goto_2

    .line 1460
    :cond_5
    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleLeft(Z)I

    move-result v3

    .line 1463
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v10, 0x0

    const/high16 v11, -0x80000000

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_b

    .line 1465
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->searchFieldVisible()Z

    move-result v5

    const/high16 v12, 0x42840000    # 66.0f

    const/high16 v13, 0x42940000    # 74.0f

    if-eqz v5, :cond_7

    .line 1466
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v5, :cond_7

    .line 1467
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1468
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v14, v5, v4}, Landroid/view/View;->measure(II)V

    .line 1469
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItemsMeasuredWidth(Z)I

    move-result v5

    .line 1470
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_6

    move v12, v13

    :cond_6
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v1, v12

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v13, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItemsMeasuredWidth(Z)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1471
    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    if-nez v13, :cond_a

    .line 1472
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v13, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    goto :goto_3

    .line 1474
    :cond_7
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v5, :cond_9

    .line 1475
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_8

    move v12, v13

    :cond_8
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1476
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    if-nez v5, :cond_a

    .line 1477
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    goto :goto_3

    .line 1480
    :cond_9
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1481
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    if-nez v5, :cond_a

    .line 1482
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    .line 1485
    :cond_a
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5, v12, v4}, Landroid/view/View;->measure(II)V

    .line 1489
    :cond_b
    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-nez v4, :cond_c

    .line 1490
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->resetCenterTitleLayoutAnimation()V

    .line 1493
    :cond_c
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldUseAdaptiveCenterTitle()Z

    move-result v4

    move v5, v8

    :goto_4
    const/4 v12, 0x2

    if-ge v5, v12, :cond_27

    .line 1495
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v8

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v9, :cond_e

    :cond_d
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v13, :cond_25

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v9, :cond_25

    .line 1497
    :cond_e
    sget-boolean v13, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v13, :cond_f

    .line 1498
    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getCenteredTitleAvailableWidth(IIZ)I

    move-result v13

    .line 1499
    invoke-direct {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->getAnimatedCenterTitleAvailableWidth(I)I

    move-result v13

    goto :goto_6

    .line 1501
    :cond_f
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    goto :goto_5

    :cond_10
    move v13, v8

    :goto_5
    sub-int v13, v1, v13

    const/high16 v14, 0x41800000    # 16.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v3

    iget v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleRightMargin:I

    sub-int/2addr v13, v14

    .line 1504
    :goto_6
    iget-boolean v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    const/16 v15, 0x14

    const/16 v16, 0x12

    if-eqz v14, :cond_11

    if-eqz v5, :cond_12

    :cond_11
    if-nez v14, :cond_15

    if-ne v5, v7, :cond_15

    :cond_12
    iget-boolean v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    if-eqz v14, :cond_15

    iget-boolean v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    if-eqz v14, :cond_15

    .line 1505
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v14, v14, v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move/from16 p2, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v12, :cond_14

    move/from16 v15, v16

    goto :goto_7

    :cond_13
    move/from16 p2, v7

    :cond_14
    :goto_7
    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    goto/16 :goto_d

    :cond_15
    move/from16 p2, v7

    .line 1507
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v8

    const/16 v17, 0x10

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_1a

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_1a

    .line 1508
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    if-eqz v7, :cond_17

    .line 1509
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_16

    goto :goto_8

    :cond_16
    move/from16 v15, v16

    :goto_8
    invoke-virtual {v7, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1511
    :cond_17
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_18

    move/from16 v12, v17

    goto :goto_9

    :cond_18
    const/16 v12, 0xe

    :goto_9
    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1512
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_20

    .line 1513
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_19

    move/from16 v14, v17

    goto :goto_a

    :cond_19
    const/16 v14, 0xe

    :goto_a
    invoke-virtual {v7, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    goto/16 :goto_d

    .line 1516
    :cond_1a
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_1c

    .line 1517
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v18

    if-nez v18, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v12, :cond_1b

    move/from16 v15, v16

    :cond_1b
    invoke-virtual {v7, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1519
    :cond_1c
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_1e

    .line 1520
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-nez v14, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v12, :cond_1d

    const/16 v14, 0xe

    goto :goto_b

    :cond_1d
    move/from16 v14, v17

    :goto_b
    invoke-virtual {v7, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1522
    :cond_1e
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_20

    .line 1523
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-nez v14, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v12, :cond_1f

    const/16 v14, 0xe

    goto :goto_c

    :cond_1f
    move/from16 v14, v17

    :goto_c
    invoke-virtual {v7, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1528
    :cond_20
    :goto_d
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    if-eqz v7, :cond_22

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_22

    .line 1529
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v16, v14

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    add-int/2addr v15, v14

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v15, v14

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v7, v12, v14}, Landroid/view/View;->measure(II)V

    .line 1530
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    if-eqz v7, :cond_21

    .line 1531
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1532
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v14, v7, v8, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v7, v14

    invoke-virtual {v12, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1533
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    shr-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v7, v12}, Landroid/view/View;->setPivotY(F)V

    goto :goto_e

    .line 1535
    :cond_21
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1536
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v10}, Landroid/view/View;->setPivotY(F)V

    .line 1539
    :cond_22
    :goto_e
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v12, 0x41a00000    # 20.0f

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_23

    .line 1540
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1542
    :cond_23
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eqz v7, :cond_24

    .line 1543
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1545
    :cond_24
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_26

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_26

    .line 1546
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v7, v13, v12}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_25
    move/from16 p2, v7

    :cond_26
    :goto_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, p2

    goto/16 :goto_4

    :cond_27
    move/from16 p2, v7

    .line 1551
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_28

    const/high16 v2, 0x42280000    # 42.0f

    .line 1553
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1554
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1552
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1558
    :cond_28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v10, v8

    :goto_10
    if-ge v10, v7, :cond_2b

    .line 1560
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1561
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v8

    if-eq v1, v3, :cond_2a

    aget-object v2, v2, p2

    if-eq v1, v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eq v1, v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v1, v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eq v1, v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne v1, v2, :cond_29

    goto :goto_11

    .line 1564
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_2a
    :goto_11
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_10

    :cond_2b
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 1

    .line 1698
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1701
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 1702
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onMenuButtonPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1712
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resumed:Z

    .line 1713
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1715
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1707
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resumed:Z

    .line 1708
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    return-void
.end method

.method protected onSearchChangedIgnoreTitles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchFieldVisibilityChanged(Z)V
    .locals 13

    .line 1113
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1117
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    .line 1118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchChangedIgnoreTitles()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1122
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 1123
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1127
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :cond_3
    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchFieldVisibleAlpha:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v3, v7, v2

    const/4 v3, 0x1

    aput v6, v7, v3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1133
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1139
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-array v8, v3, [Landroid/animation/Animator;

    aput-object v6, v8, v2

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v6, v2

    .line 1141
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-ge v6, v7, :cond_9

    .line 1142
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v9, 0x3f733333    # 0.95f

    if-nez p1, :cond_5

    .line 1144
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1146
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1147
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1149
    :cond_5
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    move v11, v4

    goto :goto_3

    :cond_6
    move v11, v5

    :goto_3
    new-array v12, v3, [F

    aput v11, v12, v2

    invoke-static {v7, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v11, v3, [Landroid/animation/Animator;

    aput-object v8, v11, v2

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1150
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    move v10, v9

    goto :goto_4

    :cond_7
    move v10, v5

    :goto_4
    new-array v11, v3, [F

    aput v10, v11, v2

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v11, v3, [Landroid/animation/Animator;

    aput-object v10, v11, v2

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1151
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v9, v5

    :goto_5
    new-array v10, v3, [F

    aput v9, v10, v2

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v9, v3, [Landroid/animation/Animator;

    aput-object v7, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1153
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v6, :cond_b

    .line 1154
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_a

    move v9, v5

    goto :goto_6

    :cond_a
    move v9, v4

    :goto_6
    new-array v10, v3, [F

    aput v9, v10, v2

    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v3, [Landroid/animation/Animator;

    aput-object v7, v8, v2

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1157
    :cond_b
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    .line 1158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 1159
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBar$4;

    invoke-direct {v6, p0, v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 1192
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1193
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_d

    .line 1194
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 1195
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotateToBack(Z)V

    if-eqz p1, :cond_c

    move v4, v5

    .line 1196
    :cond_c
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    :cond_d
    return-void
.end method

.method public onSearchPressed()V
    .locals 1

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onSearchPressed()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1938
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->forceSkipTouches:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1941
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public openSearchField(Ljava/lang/String;Z)V
    .locals 3

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1233
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    xor-int/lit8 v2, v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->openSearchField(ZZLjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshTitlePosition(Z)V
    .locals 12

    .line 2210
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    const/16 v1, 0x11

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_6

    :goto_2
    if-ge v3, v0, :cond_3

    .line 2215
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2217
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 2218
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 2219
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 2223
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_3
    if-ge v6, v0, :cond_8

    .line 2228
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v6

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v6

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2230
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :goto_4
    if-ge v7, v6, :cond_c

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/view/View;

    .line 2234
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2238
    instance-of v9, v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v9, :cond_b

    .line 2239
    move-object v9, v8

    check-cast v9, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextStartX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v11

    add-float/2addr v10, v11

    .line 2240
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextStartY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    :goto_5
    add-float/2addr v9, v8

    goto :goto_6

    .line 2242
    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v10, v9

    .line 2243
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    goto :goto_5

    .line 2246
    :goto_6
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    :goto_7
    if-ge v3, v0, :cond_e

    .line 2251
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v3

    if-eqz v6, :cond_d

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2253
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 2254
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 2256
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 2258
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar$10;

    invoke-direct {v0, p0, p1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar$10;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2291
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2293
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBar$11;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar$11;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/ActionBar/ActionBar$10;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1279
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ignoreLayoutRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 1282
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    return-void
.end method

.method public setActionModeColor(I)V
    .locals 1

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setActionModeOverrideColor(I)V
    .locals 0

    .line 1072
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    return-void
.end method

.method public setActionModeTopColor(I)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 2400
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 2403
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_topColorKey:I

    .line 2404
    iput p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_lowerColorKey:I

    .line 2405
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2426
    new-instance p3, Lorg/telegram/ui/ActionBar/ActionBar$15;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar$15;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2432
    iget-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptiveBackground:Z

    if-eqz p3, :cond_0

    .line 2433
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 2435
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptiveBackground:Z

    const/4 p2, -0x1

    .line 2436
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    .line 2437
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    return-void
.end method

.method public setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;)V
    .locals 2

    .line 2441
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;II)V

    return-void
.end method

.method public setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;II)V
    .locals 0

    .line 2444
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_topColorKey:I

    .line 2445
    iput p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_lowerColorKey:I

    .line 2446
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    .line 2447
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/SectionsScrollView;)V

    .line 2468
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SectionsScrollView;->onScroll(Ljava/lang/Runnable;)V

    .line 2469
    iget-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptiveBackground:Z

    if-eqz p3, :cond_0

    .line 2470
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 2472
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->adaptiveBackground:Z

    const/4 p2, -0x1

    .line 2473
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTop:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->onTopAnimated:F

    .line 2474
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    return-void
.end method

.method public setAddToContainer(Z)V
    .locals 0

    .line 403
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return-void
.end method

.method public setAllowOverlayTitle(Z)V
    .locals 0

    .line 1720
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    return-void
.end method

.method public setBackButtonContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_3

    .line 230
    check-cast p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 232
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 233
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    return-void

    .line 234
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v0, :cond_4

    .line 235
    check-cast p1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 236
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    .line 237
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    return-void

    .line 239
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setBackButtonImage(I)V
    .locals 3

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1077
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    .line 1078
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    if-nez v0, :cond_0

    .line 1079
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1081
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1083
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_1

    .line 1084
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    :cond_1
    return-void
.end method

.method public setCastShadows(Z)V
    .locals 1

    .line 1912
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1913
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1914
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1916
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return-void
.end method

.method public setClipContent(Z)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->clipContent:Z

    return-void
.end method

.method public setDrawBackButton(Z)V
    .locals 0

    .line 2335
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->drawBackButton:Z

    .line 2336
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 2337
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 1

    const/4 v0, 0x1

    .line 2310
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    .line 2311
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 2312
    iget-object p1, p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2313
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1265
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1269
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 1270
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setEnabled(Z)V

    .line 1272
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    .line 1273
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setExtraHeight(I)V
    .locals 1

    .line 1210
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    .line 1211
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_0

    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1213
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setForceSkipTouches(Z)V
    .locals 0

    .line 2331
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->forceSkipTouches:Z

    return-void
.end method

.method public setInterceptTouchEventListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouchEventListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setInterceptTouches(Z)V
    .locals 0

    .line 1202
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    return-void
.end method

.method public setItemsBackgroundColor(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1857
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    .line 1858
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz p2, :cond_0

    .line 1859
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 1860
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1863
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_3

    .line 1864
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    return-void

    .line 1867
    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    .line 1868
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 1869
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1871
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_3

    .line 1872
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    :cond_3
    return-void
.end method

.method public setItemsColor(IZ)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1879
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    .line 1880
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p2, :cond_0

    .line 1881
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    .line 1883
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    .line 1884
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1885
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_1

    .line 1886
    check-cast p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    return-void

    .line 1888
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 1892
    :cond_2
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    .line 1893
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 1895
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1896
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_3

    .line 1897
    check-cast p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    goto :goto_0

    .line 1898
    :cond_3
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v0, :cond_4

    .line 1899
    check-cast p2, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    goto :goto_0

    .line 1901
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1905
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_6

    .line 1906
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    :cond_6
    return-void
.end method

.method public setMenuOffsetSuppressed(Z)V
    .locals 0

    .line 1569
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 2

    .line 1845
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1847
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setOverlayTitleAnimation(Z)V
    .locals 0

    .line 2142
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    return-void
.end method

.method public setPopupBackgroundColor(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 564
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p2, :cond_1

    .line 565
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    :cond_1
    return-void
.end method

.method public setPopupItemsColor(IZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(IZ)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 548
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p3, :cond_1

    .line 549
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(IZ)V

    :cond_1
    return-void
.end method

.method public setPopupItemsSelectorColor(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsSelectorColor(I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 556
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p2, :cond_1

    .line 557
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsSelectorColor(I)V

    :cond_1
    return-void
.end method

.method public setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 512
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 516
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    .line 271
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSearchCursorColor(I)V
    .locals 1

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchCursorColor(I)V

    :cond_0
    return-void
.end method

.method public setSearchFieldText(Ljava/lang/String;)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchFieldText(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    :cond_0
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchTextColor(IZ)V

    :cond_0
    return-void
.end method

.method public setShadowAlpha(I)V
    .locals 1

    .line 1920
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->shadowAlpha:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1921
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1922
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1923
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1925
    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->shadowAlpha:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_3

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 425
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 536
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 538
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setSupportsHolidayImage(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    if-eqz p1, :cond_0

    .line 252
    new-instance p1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 253
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 490
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 491
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 493
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    if-eqz p1, :cond_1

    .line 494
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u044d\u043a\u0441\u0442\u0435\u0440\u0430\u0433\u0440\u0430\u043c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fonts/impact.ttf"

    goto :goto_0

    :cond_1
    const-string v2, "fonts/rmedium.ttf"

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 497
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->hideActionBarStatus:Z

    if-nez p1, :cond_5

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 498
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_3

    .line 499
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    .line 501
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v0

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 502
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p2, :cond_4

    .line 503
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    .line 505
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 508
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    return-void
.end method

.method public setTitleActionRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1724
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setTitleAnimated(Ljava/lang/CharSequence;ZJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1949
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setTitleAnimated(Ljava/lang/CharSequence;ZJLandroid/view/animation/Interpolator;)V
    .locals 8

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1957
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 1959
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1960
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1961
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1963
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz p2, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xdc

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1965
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 1966
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1967
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1968
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1970
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aput-object v6, v5, v2

    .line 1972
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v5, v1

    aput-object v7, v5, v2

    .line 1973
    aput-object v6, v5, v1

    .line 1974
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1975
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    .line 1976
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const/high16 p1, 0x41a00000    # 20.0f

    if-nez v0, :cond_8

    .line 1978
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-eqz p2, :cond_7

    :goto_2
    int-to-float v6, v6

    goto :goto_3

    :cond_7
    neg-int v6, v6

    goto :goto_2

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1980
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p5, :cond_9

    .line 1982
    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1984
    :cond_9
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1986
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    .line 1987
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v0, :cond_b

    .line 1989
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    if-eqz p2, :cond_a

    neg-int p1, p1

    :cond_a
    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_b
    if-eqz p5, :cond_c

    .line 1992
    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1994
    :cond_c
    invoke-virtual {v1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ActionBar/ActionBar$7;

    invoke-direct {p3, p0, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBar$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;ZZ)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2010
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2011
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 1954
    :cond_d
    :goto_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleAnimatedX(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 6

    .line 2018
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 2023
    aget-object v0, v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2024
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2026
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2028
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aput-object v3, v0, v2

    .line 2031
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 2032
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2033
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    .line 2036
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v0, v1

    aput-object v4, v0, v2

    .line 2037
    aput-object v3, v0, v1

    .line 2038
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 2039
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    const/high16 p1, 0x41200000    # 10.0f

    .line 2041
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    if-eqz p3, :cond_4

    const/4 p2, -0x1

    goto :goto_0

    :cond_4
    move p2, v2

    :goto_0
    mul-int/2addr p1, p2

    int-to-float p1, p1

    .line 2043
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 2044
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 2045
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    neg-float v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2046
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 2048
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2049
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2050
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2051
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2053
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    new-array v4, v2, [F

    aput p3, v4, v1

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v1

    new-array v4, v2, [F

    aput v0, v4, v1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v2

    new-array v3, v2, [F

    aput p1, v3, v1

    sget-object p1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    new-array v2, v2, [F

    aput p3, v2, v1

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    .line 2059
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2060
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBar$8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2073
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2074
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2076
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 2019
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 2

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 523
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 525
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleColorToSet:I

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEmojiColor(I)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEmojiColor(I)V

    :cond_1
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 6

    .line 1730
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 1733
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1734
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 1736
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 1739
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastOverlayTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    if-eqz p1, :cond_18

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    .line 1742
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastOverlayTitle:Ljava/lang/CharSequence;

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1746
    sget v0, Lorg/telegram/messenger/R$string;->ConnectingToProxyWithDots:I

    if-ne p2, v0, :cond_4

    .line 1747
    sget v0, Lorg/telegram/messenger/R$string;->TitleSetupProxy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x402aaaab

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 1751
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->setText(Ljava/lang/CharSequence;Z)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1755
    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    :goto_1
    if-nez p1, :cond_8

    .line 1756
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideActionBarStatus:Z

    if-nez v0, :cond_8

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 1759
    const-string v0, "..."

    invoke-static {p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 1761
    invoke-static {p2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p2

    .line 1762
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v4, p2, v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    if-eqz p1, :cond_a

    move p1, v3

    goto :goto_4

    :cond_a
    move p1, v1

    .line 1767
    :goto_4
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleOverlayShown:Z

    const/high16 p1, 0x40800000    # 4.0f

    if-eqz p2, :cond_b

    .line 1768
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_12

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_6

    .line 1786
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_16

    .line 1787
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1788
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    if-eqz v4, :cond_d

    .line 1789
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1791
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    if-nez v4, :cond_e

    .line 1792
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 1794
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1795
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 1796
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 1797
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 1798
    instance-of p1, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_f

    .line 1799
    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_f
    if-eqz v0, :cond_10

    .line 1802
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    .line 1804
    :cond_10
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    .line 1805
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p1, v3

    .line 1806
    aget-object v0, p1, v1

    aput-object v0, p1, v3

    .line 1807
    aput-object p2, p1, v1

    const/4 p1, 0x0

    .line 1808
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1809
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1810
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1811
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1812
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xdc

    .line 1813
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1814
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v3

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1815
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1816
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p2, :cond_11

    .line 1817
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    :cond_11
    const p2, 0x3f333333    # 0.7f

    .line 1819
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 1821
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 1822
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    .line 1823
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBar$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1835
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_7

    .line 1769
    :cond_12
    :goto_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 1770
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    if-eqz v3, :cond_13

    .line 1771
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1772
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1774
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1775
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 1776
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 1777
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 1778
    instance-of p1, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_14

    .line 1779
    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_14
    if-eqz v0, :cond_15

    .line 1782
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 1784
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    :cond_16
    :goto_7
    if-eqz p3, :cond_17

    goto :goto_8

    .line 1837
    :cond_17
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRunnable:Ljava/lang/Runnable;

    :goto_8
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    :cond_18
    :goto_9
    return-void
.end method

.method public setTitleRightMargin(I)V
    .locals 0

    .line 466
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleRightMargin:I

    return-void
.end method

.method public setTitleScrollNonFitText(Z)V
    .locals 2

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 362
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->clipContent:Z

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUseContainerForTitles()V
    .locals 2

    const/4 v0, 0x1

    .line 2342
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->useContainerForTitles:Z

    .line 2343
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2344
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar$12;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar$12;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    .line 2355
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public shouldAddToContainer()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return v0
.end method

.method protected shouldClipChild(Landroid/view/View;)Z
    .locals 4

    .line 297
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->clipContent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    aget-object v0, v0, v3

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titlesContainer:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public showActionMode()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 731
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(ZLandroid/view/View;Landroid/view/View;[Landroid/view/View;[ZLandroid/view/View;I)V

    return-void
.end method

.method public showActionMode(Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 735
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(ZLandroid/view/View;Landroid/view/View;[Landroid/view/View;[ZLandroid/view/View;I)V

    return-void
.end method

.method public showActionMode(ZLandroid/view/View;Landroid/view/View;[Landroid/view/View;[ZLandroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 739
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v7, :cond_21

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v8, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v8, 0x1

    .line 742
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    const/4 v13, 0x0

    if-eqz p1, :cond_10

    .line 744
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 745
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v15, 0x2

    const-wide v16, 0x3fe6666660000000L    # 0.699999988079071

    new-array v9, v15, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v14, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 747
    array-length v9, v3

    move v14, v13

    :goto_0
    if-ge v14, v9, :cond_2

    const/16 v18, 0x0

    aget-object v12, v3, v14

    if-eqz v12, :cond_1

    .line 749
    new-array v11, v15, [F

    fill-array-data v11, :array_1

    invoke-static {v12, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    if-eqz v2, :cond_3

    .line 754
    new-array v9, v15, [F

    fill-array-data v9, :array_2

    invoke-static {v2, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_3
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v5, :cond_4

    int-to-float v6, v6

    .line 757
    new-array v11, v8, [F

    aput v6, v11, v13

    invoke-static {v5, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    .line 760
    :cond_4
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    .line 761
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeShowingView:Landroid/view/View;

    .line 762
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    if-eqz v1, :cond_5

    .line 767
    new-array v2, v8, [F

    aput v18, v2, v13

    invoke-static {v1, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_5
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    if-nez v1, :cond_8

    .line 770
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v1, :cond_7

    .line 771
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v13

    if-eqz v1, :cond_6

    .line 772
    new-array v2, v8, [F

    aput v18, v2, v13

    invoke-static {v1, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v2, v8, [F

    aput v18, v2, v13

    invoke-static {v1, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_8

    .line 779
    new-array v2, v8, [F

    aput v18, v2, v13

    invoke-static {v1, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_8
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    if-nez v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    :cond_9
    if-nez v1, :cond_a

    .line 785
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 786
    :cond_a
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    cmpg-double v1, v1, v16

    if-gez v1, :cond_b

    .line 787
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v13}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_1

    .line 789
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 792
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_c

    .line 793
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 795
    :cond_c
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 796
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 797
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 798
    new-array v1, v15, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 799
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v13

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 806
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 807
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$2;

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 848
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 849
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_21

    .line 850
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 851
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_e

    .line 852
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_2

    :cond_e
    const/high16 v9, 0x3f800000    # 1.0f

    .line 853
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v2, :cond_f

    .line 854
    check-cast v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v9, v8}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 856
    :cond_f
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_10
    const/high16 v9, 0x3f800000    # 1.0f

    const-wide v16, 0x3fe6666660000000L    # 0.699999988079071

    const/16 v18, 0x0

    .line 859
    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    if-eqz v3, :cond_12

    .line 861
    array-length v7, v3

    move v9, v13

    :goto_3
    if-ge v9, v7, :cond_12

    aget-object v10, v3, v9

    if-eqz v10, :cond_11

    move/from16 v11, v18

    .line 863
    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    add-int/lit8 v9, v9, 0x1

    const/16 v18, 0x0

    goto :goto_3

    :cond_12
    if-eqz v2, :cond_13

    const/high16 v9, 0x3f800000    # 1.0f

    .line 868
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_13
    if-eqz v5, :cond_14

    int-to-float v6, v6

    .line 871
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 872
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    .line 874
    :cond_14
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    if-eqz v1, :cond_15

    const/4 v11, 0x0

    .line 876
    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 878
    :cond_15
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeShowingView:Landroid/view/View;

    .line 879
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    .line 884
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    if-nez v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    :cond_16
    if-nez v1, :cond_17

    .line 886
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_4

    .line 887
    :cond_17
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    cmpg-double v1, v1, v16

    if-gez v1, :cond_18

    .line 888
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v13}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_4

    .line 890
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 893
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v13

    const/4 v2, 0x4

    if-eqz v1, :cond_19

    .line 898
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 900
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 901
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 903
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_1b

    .line 904
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    if-eqz v1, :cond_1e

    move v1, v13

    .line 907
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    array-length v5, v3

    if-ge v1, v5, :cond_1e

    .line 908
    aget-object v3, v3, v1

    if-eqz v3, :cond_1d

    if-eqz v4, :cond_1c

    .line 909
    array-length v5, v4

    if-ge v1, v5, :cond_1c

    aget-boolean v5, v4, v1

    if-eqz v5, :cond_1d

    .line 910
    :cond_1c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 915
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_21

    .line 916
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 917
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_1f

    .line 918
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v13}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_6

    :cond_1f
    const/high16 v9, 0x3f800000    # 1.0f

    .line 919
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v2, :cond_20

    .line 920
    check-cast v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v9, v13}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 922
    :cond_20
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_21
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showActionModeTop()V
    .locals 2

    .line 1035
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 1037
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultTop:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1040
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 1041
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x33

    .line 1042
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1043
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 2365
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->adaptive_updateColor()V

    .line 2366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubTitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eqz v0, :cond_0

    .line 2367
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->updateColors()V

    :cond_0
    return-void
.end method
