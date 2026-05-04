.class public Lorg/telegram/ui/Components/ItemOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ItemOptions$ScrimView;,
        Lorg/telegram/ui/Components/ItemOptions$DimView;
    }
.end annotation


# instance fields
.field public actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private allowCenter:Z

.field private allowMoveScrim:Z

.field private allowMoveScrimGravity:I

.field private animateToHeight:I

.field private animateToWidth:I

.field private blur:Z

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private dimAlpha:I

.field private dimAnimator:Landroid/animation/ValueAnimator;

.field private dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

.field private discardScrolls:Z

.field private dismissListener:Ljava/lang/Runnable;

.field private dismissOnMoveOutside:Z

.field public dismissWithButtons:Z

.field private dontDismiss:Z

.field private drawScrim:Z

.field private fixedWidthDp:I

.field private forceBelowScrim:Z

.field private forceBottom:Z

.field private forceTop:Z

.field private foregroundIndex:I

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private gapBackgroundColor:Ljava/lang/Integer;

.field private gravity:I

.field private hideScrimUnder:Z

.field private iconColor:Ljava/lang/Integer;

.field private ignoreX:Z

.field private lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private layout:Landroid/view/ViewGroup;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private maxHeight:I

.field private minWidthDp:I

.field public needsFocus:Z

.field private offsetX:F

.field private offsetY:F

.field public onTopOfScrim:Z

.field private overridenSwipebackGravity:Z

.field private final point:[F

.field private pointContainer:Landroid/view/ViewGroup;

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scaleOut:Z

.field private scrimView:Landroid/view/View;

.field private scrimViewBackground:Landroid/graphics/drawable/Drawable;

.field private scrimViewBackgroundShadowColor:I

.field private scrimViewPadding:I

.field private scrimViewRoundRadius:I

.field private selectorColor:Ljava/lang/Integer;

.field private shiftDp:I

.field public shownFromBottom:Z

.field public swipeback:Z

.field private textColor:Ljava/lang/Integer;

.field private translateX:F

.field private translateY:F

.field public useScrollView:Z

.field private viewAdditionalOffsets:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$8YuuzYGEnMvj0HfKFPR-XaVSrWc(Lorg/telegram/ui/Components/ItemOptions;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$show$15(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9IjnIXChlJlPs492gQQ5iWEGIQU(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$putPremiumLock$10(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9iWVJZMQ29P-Ac_crTL8IAKbqrk(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addChecked$3(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BUhHQma1xskccHGOUC_-yilj5WM(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->lambda$makeSwipeback$1(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$IU_cW_K_lzYaLOpihhjqyb0LOBY(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addChat$7(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JdlnDv1S2iw88B5r4Qh0zll-YpM(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$init$0(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJcrYW1_F6qWfG19CcJScXKMLnw(Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1619
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1620
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$P5S9Tlq9xZfF-gvcS2T00vqa2EM(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addProfile$13(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V_HhOruIuOuYFIRh2k-2pAz1DLA(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addBot$6(Ljava/lang/Runnable;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YlX8kpZfl--Ap0fPi7gLmw9dM98(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1965
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$d9Eg07xeckUnTf5ZYyeOwMcKcU4(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addAccount$8(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbr4EuECeuaHsnCnoCn0mU2U3Us(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addChecked$4(Ljava/lang/Runnable;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iSibFNqWjwA5BV23rz5zC_y1wuE(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$add$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rthUlxeDxDmkKqdcYYxFvk62QVQ(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addSpaceGap$11(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZI4zt9U4B0QyKZbUK0L_GkPRoo(ZLjava/util/HashSet;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1998
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2000
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2002
    :goto_0
    invoke-interface {p3, p4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wBZWM0Rm2EMVtz5qlkClUoxbnRM(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$add$9(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xIGcLVjU76ra19DeNG0gRCW353Y(Lorg/telegram/ui/Components/ItemOptions$DimView;)Z
    .locals 0

    .line 1338
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$xxoyc40g_YsWpV8u7TbRnZpAM6g(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addBot$5(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowMoveScrim(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateToHeight(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateToWidth(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetblur(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->blur:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdimAlpha(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdimView(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions$DimView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissListener(Lorg/telegram/ui/Components/ItemOptions;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawScrim(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethideScrimUnder(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayout(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxHeight(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->maxHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpoint(Lorg/telegram/ui/Components/ItemOptions;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointContainer(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->pointContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreDrawListener(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimView(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimViewBackground(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimViewBackgroundShadowColor(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackgroundShadowColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimViewPadding(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewPadding:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimViewRoundRadius(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewRoundRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewAdditionalOffsets(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdimAnimator(Lorg/telegram/ui/Components/ItemOptions;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdismissListener(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissDim(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->dismissDim(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 210
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZZ)V
    .locals 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 126
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    .line 230
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->discardScrolls:Z

    const/4 v1, 0x0

    .line 231
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissOnMoveOutside:Z

    .line 611
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    const/4 v0, -0x4

    .line 849
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    .line 219
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 221
    iput-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 222
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fe68f5c28f5c28fL    # 0.705

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x66

    goto :goto_0

    :cond_1
    const/16 p1, 0x33

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    .line 223
    iput-boolean p4, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    .line 224
    iput-boolean p5, p0, Lorg/telegram/ui/Components/ItemOptions;->shownFromBottom:Z

    .line 225
    iput-boolean p6, p0, Lorg/telegram/ui/Components/ItemOptions;->useScrollView:Z

    .line 227
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    :cond_2
    :goto_1
    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 126
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    .line 230
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->discardScrolls:Z

    const/4 v1, 0x0

    .line 231
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissOnMoveOutside:Z

    .line 611
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    const/4 v1, -0x4

    .line 849
    iput v1, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 345
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 126
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    .line 230
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->discardScrolls:Z

    const/4 v1, 0x0

    .line 231
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissOnMoveOutside:Z

    .line 611
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    const/4 v0, -0x4

    .line 849
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    .line 192
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->downFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 197
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 198
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 199
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 201
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fe68f5c28f5c28fL    # 0.705

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x66

    goto :goto_0

    :cond_1
    const/16 p1, 0x33

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    .line 202
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    .line 203
    iput-boolean p4, p0, Lorg/telegram/ui/Components/ItemOptions;->useScrollView:Z

    .line 204
    iput-boolean p5, p0, Lorg/telegram/ui/Components/ItemOptions;->shownFromBottom:Z

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method public static addAlbumsItemOptions(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/HashSet;ZLjava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1944
    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$8;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ItemOptions$8;-><init>(Landroid/content/Context;)V

    .line 1953
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1954
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    .line 1955
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    .line 1956
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    const v2, 0x3df5c28f    # 0.12f

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 1959
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v13, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1960
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v10, v8, v11, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1961
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v11, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v13, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1962
    iget-object v11, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1963
    sget v10, Lorg/telegram/messenger/R$string;->StoriesAlbumNewAlbum:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->menu_album_add:I

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1964
    new-instance v10, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda16;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1967
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move-object/from16 v1, p1

    .line 1970
    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_2

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 1971
    iget v15, v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    .line 1972
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 1974
    new-instance v16, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v20, 0x0

    iget-object v12, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v21, v12

    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v12, v16

    .line 1975
    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    move/from16 v22, v7

    .line 1976
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v12, v7, v8, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1977
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v7, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v4, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v12, v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1978
    iget-object v4, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1979
    iget-object v4, v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->icon_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    const/16 v5, 0x32

    .line 1980
    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 1981
    iget-object v5, v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->icon_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v8, v4, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 1991
    iget-object v5, v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    iget-object v6, v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->icon_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v19, "50_50"

    move-object/from16 v17, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object/from16 v4, v16

    goto :goto_1

    :cond_1
    move-object v4, v12

    const/4 v7, 0x1

    .line 1993
    iget-object v5, v11, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_folders:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1996
    :goto_1
    new-instance v12, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda17;

    move-object/from16 v16, p5

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda17;-><init>(ZLjava/util/HashSet;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    .line 2004
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v7

    move/from16 v7, v22

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private dismissDim(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1613
    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    .line 1614
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 1615
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1617
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    .line 1618
    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ItemOptions$DimView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1622
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$7;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions$7;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1638
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz p1, :cond_2

    .line 1639
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1640
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 1642
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1644
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static downFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 174
    instance-of v0, p0, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->hasMainTabs:Z

    if-nez v0, :cond_3

    :cond_0
    instance-of v0, p0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->hasMainTabs:Z

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p0, Lorg/telegram/ui/ContactsActivity;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/ContactsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-nez v0, :cond_3

    :cond_2
    instance-of v0, p0, Lorg/telegram/ui/SettingsActivity;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/SettingsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_4

    .line 180
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 183
    instance-of v1, v0, Lorg/telegram/ui/MainTabsActivity;

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    return-object p0
.end method

.method private findAndHighlightView(FF)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 279
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 280
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ItemOptions;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    .line 282
    new-array v3, v3, [I

    .line 283
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 285
    aget v4, v3, v0

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    aget v4, v3, v6

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v0

    .line 288
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x4

    .line 290
    invoke-static {v5}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v5

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 292
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eq v5, v4, :cond_2

    .line 293
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    if-eqz v4, :cond_3

    .line 296
    aget v4, v3, v0

    int-to-float v4, v4

    sub-float v4, p1, v4

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V
    .locals 3

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :cond_1
    if-eq p0, p1, :cond_4

    .line 1682
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    .line 1683
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 1684
    instance-of v2, p0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    .line 1685
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1686
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1688
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_3

    goto :goto_0

    .line 1691
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 1692
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1696
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 1697
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    .line 1698
    aput v1, p2, p0

    const/4 p0, 0x1

    .line 1699
    aput v0, p2, p0

    :cond_5
    :goto_1
    return-void
.end method

.method private init()V
    .locals 7

    .line 351
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$1;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ItemOptions;->shownFromBottom:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    or-int/2addr v1, v5

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ItemOptions;->useScrollView:Z

    if-nez v5, :cond_1

    const/4 v6, 0x4

    :cond_1
    or-int v5, v1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions$1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 360
    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 365
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-void
.end method

.method private synthetic lambda$add$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 497
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 499
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$add$9(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 807
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 809
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addAccount$8(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 778
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 780
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addBot$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 656
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 658
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addBot$6(Ljava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 662
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 664
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$addChat$7(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 726
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 728
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addChecked$3(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 567
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 569
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addChecked$4(Ljava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 574
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 576
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$addProfile$13(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 997
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    if-eqz p1, :cond_0

    .line 999
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addSpaceGap$11(Landroid/view/KeyEvent;)V
    .locals 2

    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 914
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/KeyEvent;)V
    .locals 2

    .line 361
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeSwipeback$1(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 1

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-nez v0, :cond_0

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p1

    if-nez p2, :cond_2

    cmpl-float p1, p3, p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 394
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$putPremiumLock$10(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 863
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 864
    sget-object p2, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p2}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 865
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$15(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1353
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 105
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V

    return-object v0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 108
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V

    return-object v0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 111
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V

    return-object v0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 114
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZZ)V

    return-object v0
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 88
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V

    return-object v0
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 91
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V

    return-object v0
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 94
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    xor-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V

    return-object v0
.end method

.method private performClickAt(Landroid/view/ViewGroup;FF)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 317
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 318
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    .line 320
    new-array v3, v3, [I

    .line 321
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 323
    aget v4, v3, v0

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v5, v3

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_1

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gtz v3, :cond_1

    .line 326
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    return v4

    .line 329
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 330
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->performClickAt(Landroid/view/ViewGroup;FF)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static swipeback(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 340
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method


# virtual methods
.method public add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 4

    .line 512
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 513
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v0
.end method

.method public add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    .line 484
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 485
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 487
    :cond_2
    :goto_0
    invoke-virtual {v0, p3, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p5, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_3
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p5, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_4
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 495
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p6}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_6

    int-to-float p1, p1

    .line 502
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 503
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0

    :cond_6
    const/4 p1, -0x1

    .line 505
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 476
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    move v4, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 472
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    if-eqz p3, :cond_0

    .line 468
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    goto :goto_3

    :cond_1
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    goto :goto_2

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 464
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    .line 797
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 798
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 799
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 800
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 802
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 805
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_4

    int-to-float p1, p1

    .line 812
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 813
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0

    :cond_4
    const/4 p1, -0x1

    .line 815
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0, p1, v0, p2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    .line 518
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 519
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 522
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionText:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 525
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v1, -0x2

    if-lez v0, :cond_3

    int-to-float v0, v0

    .line 526
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 527
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0

    :cond_3
    const/4 v0, -0x1

    .line 529
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addAccount(IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 16

    move-object/from16 v0, p0

    .line 741
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 745
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    .line 746
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    .line 748
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 750
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v6, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 751
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v6, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 752
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 754
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 755
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-boolean v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkViewLeft:Z

    const/high16 v8, 0x422c0000    # 43.0f

    if-eqz v6, :cond_1

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    iget-boolean v9, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkViewLeft:Z

    if-eqz v9, :cond_3

    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_2

    :cond_3
    iget-object v9, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    move v8, v7

    :goto_2
    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 756
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 757
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 758
    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 759
    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    const/high16 v7, 0x42080000    # 34.0f

    .line 760
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 761
    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const v6, 0x3f570a3d    # 0.84f

    if-eqz p2, :cond_5

    move v8, v6

    goto :goto_3

    :cond_5
    move v8, v3

    .line 762
    :goto_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_6

    move v3, v6

    .line 763
    :cond_6
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 764
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x3

    const/4 v8, 0x5

    if-eqz v3, :cond_7

    move v3, v8

    goto :goto_4

    :cond_7
    move v3, v6

    :goto_4
    or-int/lit8 v11, v3, 0x10

    const/high16 v14, -0x3f600000    # -5.0f

    const/4 v15, 0x0

    const/16 v9, 0x22

    const/high16 v10, 0x42080000    # 34.0f

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_9

    .line 768
    new-instance v3, Landroid/view/View;

    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v9, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createOutlineCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 770
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_8

    move v6, v8

    :cond_8
    or-int/lit8 v9, v6, 0x10

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v13, 0x0

    const/high16 v7, 0x42100000    # 36.0f

    const/high16 v8, 0x42100000    # 36.0f

    const/high16 v10, -0x3f400000    # -6.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_6
    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 774
    iget-object v2, v0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    :goto_7
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 776
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda5;

    move-object/from16 v2, p3

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v2, -0x2

    if-lez v1, :cond_d

    int-to-float v1, v1

    .line 783
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 784
    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v0

    :cond_d
    const/4 v1, -0x1

    .line 786
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v0
.end method

.method public addBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    .line 622
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    .line 623
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    .line 625
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 626
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 629
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    if-eqz v3, :cond_1

    .line 630
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 632
    :cond_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    .line 635
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getSideAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v4

    .line 636
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const-wide/32 v7, 0x765bf322

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 637
    sget p1, Lorg/telegram/messenger/R$drawable;->menu_wallet:I

    invoke-virtual {v2, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_5

    .line 639
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 641
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_3
    move-object v6, v5

    .line 643
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    :goto_1
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 644
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const-string v5, "24_24"

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    const/16 p1, 0x18

    .line 645
    invoke-virtual {v2, p1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setImageSize(II)V

    goto :goto_2

    .line 647
    :cond_5
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    invoke-virtual {v2, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 650
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_4
    invoke-virtual {v2, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_5
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColorImage(I)V

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_6
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 654
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 668
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_a

    int-to-float p1, p1

    .line 669
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 670
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0

    :cond_a
    const/4 p1, -0x1

    .line 672
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addChat(Lorg/telegram/tgnet/TLObject;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 679
    iget-object v2, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    return-object v0

    .line 683
    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    .line 684
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    .line 686
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v6, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 687
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v6, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 688
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_2

    .line 689
    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 690
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/messenger/R$string;->DiscussChannel:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 692
    :cond_2
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_4

    .line 693
    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 694
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    .line 696
    sget v5, Lorg/telegram/messenger/R$string;->VoipGroupPersonalAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 697
    :cond_3
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 698
    sget v5, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 702
    :cond_4
    :goto_1
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 703
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-boolean v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkViewLeft:Z

    const/high16 v8, 0x422c0000    # 43.0f

    if-eqz v6, :cond_5

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_2

    :cond_6
    move v6, v7

    :goto_2
    iget-boolean v9, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkViewLeft:Z

    if-eqz v9, :cond_7

    :goto_3
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_4

    :cond_7
    iget-object v9, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    move v8, v7

    :goto_4
    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 704
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->subtextView:Landroid/widget/TextView;

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v8, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 705
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 706
    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 707
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    const/high16 v7, 0x42080000    # 34.0f

    .line 708
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 709
    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v6, 0x3f570a3d    # 0.84f

    if-eqz p2, :cond_9

    move v8, v6

    goto :goto_5

    :cond_9
    move v8, v1

    .line 710
    :goto_5
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_a

    move v1, v6

    .line 711
    :cond_a
    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleY(F)V

    .line 712
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x3

    const/4 v8, 0x5

    if-eqz v1, :cond_b

    move v1, v8

    goto :goto_6

    :cond_b
    move v1, v6

    :goto_6
    or-int/lit8 v11, v1, 0x10

    const/high16 v14, -0x3f600000    # -5.0f

    const/4 v15, 0x0

    const/16 v9, 0x22

    const/high16 v10, 0x42080000    # 34.0f

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_d

    .line 716
    new-instance v1, Landroid/view/View;

    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 717
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v9, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createOutlineCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 718
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_c

    move v6, v8

    :cond_c
    or-int/lit8 v9, v6, 0x10

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v13, 0x0

    const/high16 v7, 0x42100000    # 36.0f

    const/high16 v8, 0x42100000    # 36.0f

    const/high16 v10, -0x3f400000    # -6.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_8

    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_8
    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 722
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_9

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    :goto_9
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 724
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda15;

    move-object/from16 v2, p3

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v2, -0x2

    if-lez v1, :cond_11

    int-to-float v1, v1

    .line 731
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 732
    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v0

    :cond_11
    const/4 v1, -0x1

    .line 734
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v0
.end method

.method public addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 8

    .line 592
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    .line 593
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    .line 595
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 596
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 598
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 599
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 601
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v1, -0x2

    if-lez v0, :cond_3

    int-to-float v0, v0

    .line 602
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 603
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v2

    :cond_3
    const/4 v0, -0x1

    .line 605
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object v2
.end method

.method public addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ItemOptions;->addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    .line 554
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    .line 555
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    .line 557
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 558
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 559
    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_1
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_2
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 565
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_4

    .line 572
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 580
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_5

    int-to-float p1, p1

    .line 581
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 582
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0

    :cond_5
    const/4 p1, -0x1

    .line 584
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addGap()Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    .line 893
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getLastView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v0, :cond_0

    return-object p0

    .line 896
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 897
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->gapBackgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 899
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    :cond_1
    const/4 v1, -0x1

    const/16 v2, 0x8

    .line 901
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addGapIf(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 889
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    .line 452
    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    if-nez p1, :cond_0

    return-object p0

    .line 445
    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 438
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addProfile(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 12

    .line 967
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 968
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 970
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 971
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 972
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 973
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 974
    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x22

    const/high16 v5, 0x42080000    # 34.0f

    const/16 v6, 0x13

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v8, 0x0

    .line 975
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 978
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v4, 0x1

    .line 979
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 980
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 981
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 982
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_0

    .line 983
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 984
    :cond_0
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    .line 985
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 986
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x37

    const/high16 v8, 0x426c0000    # 59.0f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 988
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 991
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 992
    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 993
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f28f5c3    # 0.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x37

    const/high16 v4, 0x426c0000    # 59.0f

    const/high16 v5, 0x41d80000    # 27.0f

    .line 994
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    const/16 p2, 0x34

    .line 1002
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 912
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, -0x3f000000    # -8.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, -0x1

    .line 1009
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 1013
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addText(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5

    .line 1017
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$3;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ItemOptions$3;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V

    int-to-float p2, p2

    const/4 v1, 0x1

    .line 1023
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1024
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 1025
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, p2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1026
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1028
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1029
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    if-lez p4, :cond_0

    .line 1031
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    const/4 p1, -0x1

    const/4 p2, -0x2

    .line 1033
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 925
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 926
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 951
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0

    .line 954
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0
.end method

.method public allowCenter(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1124
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->allowCenter:Z

    return-object p0
.end method

.method public allowMoveScrim()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    return-object p0
.end method

.method public allowMoveScrimGravity(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1054
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrimGravity:I

    return-object p0
.end method

.method public animateToSize(II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1061
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    .line 1062
    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToHeight:I

    return-object p0
.end method

.method public closeSwipeback()V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss()V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method public cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 839
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    .line 840
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 841
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 1661
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1662
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    return-void

    .line 1665
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    .line 1666
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 1667
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1668
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public dispatchCapturedTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x2

    .line 258
    new-array v2, v1, [I

    .line 259
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 260
    aget v3, v2, v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 262
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 267
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->handleTouchUp(Landroid/view/MotionEvent;)V

    .line 270
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    :goto_1
    return-void
.end method

.method public dontDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 1674
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    return-void
.end method

.method public forceBelowScrim(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1136
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->forceBelowScrim:Z

    return-object p0
.end method

.method public forceBottom(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1130
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->forceBottom:Z

    return-object p0
.end method

.method public forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->forceTop:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 4

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-object v1

    .line 1224
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_1

    .line 1225
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 1227
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 1228
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1229
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_4

    .line 1230
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1231
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    .line 1233
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    sub-int/2addr p1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public getItemsCount()I
    .locals 4

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return v1

    .line 1206
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_1

    .line 1207
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1210
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 1211
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1212
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_3

    .line 1213
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1214
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 3

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1154
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-object v1

    .line 1155
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1156
    instance-of v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v2, :cond_1

    return-object v1

    .line 1157
    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0

    .line 1158
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_5

    .line 1159
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_3

    return-object v1

    .line 1160
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    instance-of v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v2, :cond_4

    return-object v1

    .line 1162
    :cond_4
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getLastView()Landroid/view/View;
    .locals 2

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1169
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-object v1

    .line 1170
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1171
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_3

    .line 1172
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_2

    return-object v1

    .line 1173
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->findAndHighlightView(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 4

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->performClickAt(Landroid/view/ViewGroup;FF)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissOnMoveOutside:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 309
    new-array v1, v1, [I

    .line 310
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 311
    aget v2, v1, v2

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 312
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideScrimUnder()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1068
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder:Z

    return-object p0
.end method

.method public ignoreX()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->ignoreX:Z

    return-object p0
.end method

.method public isDiscardScrolls()Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 240
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->discardScrolls:Z

    return v0
.end method

.method public isDismissOnMoveOutside()Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 250
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissOnMoveOutside:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 827
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    .line 828
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setMultiline(Z)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    return-object v0
.end method

.method public makeSwipeback(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5

    .line 373
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 375
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/ItemOptions$2;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 385
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/ItemOptions;->foregroundIndex:I

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/ItemOptions;->foregroundIndex:I

    .line 390
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->addOnSwipeBackProgressListener(Lorg/telegram/ui/Components/PopupSwipeBackLayout$OnSwipeBackProgressListener;)V

    :cond_1
    return-object v0
.end method

.method public needsFocus()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->needsFocus:Z

    return-object p0
.end method

.method public openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 1

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss()V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    iget p1, p1, Lorg/telegram/ui/Components/ItemOptions;->foregroundIndex:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void
.end method

.method public putCheck()Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 876
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    goto :goto_0

    .line 879
    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 880
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_text_check:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 881
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 882
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 883
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public putPremiumLock(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    if-eqz p1, :cond_2

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    goto :goto_0

    .line 858
    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 859
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 860
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 861
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    const/4 v0, 0x0

    .line 1529
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1530
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1531
    :goto_1
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_1

    .line 1532
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setBlur(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 154
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->blur:Z

    return-object p0
.end method

.method public setBlurBackground(Lorg/telegram/ui/Components/BlurringShader$BlurManager;FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1184
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    .line 1185
    new-instance v2, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-direct {v2, p1, v1, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    .line 1187
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v2, p1, p2, v0, p3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1185
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 1190
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1191
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1192
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v5, :cond_1

    .line 1193
    new-instance v5, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-direct {v5, p1, v2, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    add-float/2addr v6, p2

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    .line 1195
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr v7, p3

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v0, v8}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1193
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setColors(II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 1560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    .line 1561
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    move v1, v0

    .line 1562
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1563
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1564
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    .line 1565
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v3, v0

    .line 1566
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1567
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 1568
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_1

    .line 1569
    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1572
    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_3

    .line 1573
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1107
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return-object p0
.end method

.method public setDiscardScrolls(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 234
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->discardScrolls:Z

    return-object p0
.end method

.method public setDismissOnMoveOutside(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 244
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissOnMoveOutside:Z

    return-object p0
.end method

.method public setDismissWithButtons(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 613
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    return-object p0
.end method

.method public setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1112
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    return-object p0
.end method

.method public setFixedWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1101
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fixedWidthDp:I

    return-object p0
.end method

.method public setGapBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 1540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gapBackgroundColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    move v1, v0

    .line 1541
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1542
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1543
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    .line 1544
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v3, v0

    .line 1545
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1546
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 1547
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v5, :cond_1

    .line 1548
    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1551
    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_3

    .line 1552
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public setGravity(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 1073
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1074
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    .line 1075
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    :cond_0
    return-object p0
.end method

.method public setMaxHeight(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1142
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->maxHeight:I

    return-object p0
.end method

.method public setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1096
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    return-object p0
.end method

.method public setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 1656
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1148
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->onTopOfScrim:Z

    return-object p0
.end method

.method public setRoundRadius(II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 137
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewRoundRadius:I

    .line 138
    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewPadding:I

    return-object p0
.end method

.method public setScaleOut(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 425
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scaleOut:Z

    return-object p0
.end method

.method public setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 1038
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 1039
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackgroundShadowColor:I

    .line 1040
    instance-of v0, p1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1041
    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShadowLayerColor()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackgroundShadowColor:I

    :cond_0
    return-object p0
.end method

.method public setSelectorColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 1581
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    move v1, v0

    .line 1582
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1583
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1584
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    .line 1585
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v3, v0

    .line 1586
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1587
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 1588
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_1

    .line 1589
    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1592
    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_3

    .line 1593
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public setSwipebackGravity(ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->overridenSwipebackGravity:Z

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-boolean p1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    .line 419
    iput-boolean p2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityBottom:Z

    return-object p0
.end method

.method public setTranslationY(F)V
    .locals 3

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1524
    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr v2, p1

    float-to-int p1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public setViewAdditionalOffsets(IIII)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public setupSelectors()V
    .locals 8

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1245
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 1246
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1247
    :goto_1
    instance-of v4, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_10

    .line 1248
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1249
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-gtz v4, :cond_2

    goto/16 :goto_b

    .line 1251
    :cond_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 1252
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 1253
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v6, 0xc

    if-eqz v5, :cond_4

    .line 1254
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v4, v2, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    invoke-virtual {v5, v3, v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZI)V

    goto :goto_6

    .line 1255
    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-nez v5, :cond_7

    instance-of v5, v4, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_9

    .line 1257
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_9

    .line 1258
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    if-ne v4, v2, :cond_6

    move v7, v6

    goto :goto_3

    :cond_6
    move v7, v0

    :goto_3
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1256
    :cond_7
    :goto_4
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    if-ne v4, v2, :cond_8

    move v7, v6

    goto :goto_5

    :cond_8
    move v7, v0

    :goto_5
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1260
    :cond_9
    :goto_6
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_b

    .line 1261
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v2, v4, :cond_a

    move v2, v3

    goto :goto_7

    :cond_a
    move v2, v0

    :goto_7
    invoke-virtual {v5, v2, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZI)V

    goto :goto_b

    .line 1262
    :cond_b
    instance-of v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-nez v3, :cond_e

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v2, :cond_10

    .line 1264
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_10

    .line 1265
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    if-ne v4, v2, :cond_d

    move v4, v6

    goto :goto_8

    :cond_d
    move v4, v0

    :goto_8
    invoke-static {v3, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 1263
    :cond_e
    :goto_9
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    if-ne v4, v2, :cond_f

    move v4, v6

    goto :goto_a

    :cond_f
    move v4, v0

    :goto_a
    invoke-static {v3, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_c
    return-void
.end method

.method public show()Lorg/telegram/ui/Components/ItemOptions;
    .locals 17

    move-object/from16 v1, p0

    .line 1271
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v0, :cond_28

    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    goto/16 :goto_15

    .line 1275
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->getLastView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v0, :cond_1

    .line 1276
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->getLastView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1279
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_2

    goto/16 :goto_15

    .line 1283
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->setupSelectors()V

    .line 1285
    iget v0, v1, Lorg/telegram/ui/Components/ItemOptions;->fixedWidthDp:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v0, :cond_5

    move v0, v6

    .line 1286
    :goto_0
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v7

    if-ge v0, v2, :cond_8

    .line 1287
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v7

    if-ne v0, v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1288
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_4

    .line 1289
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v3, v6

    .line 1290
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1291
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1292
    iget v5, v1, Lorg/telegram/ui/Components/ItemOptions;->fixedWidthDp:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_5
    iget v0, v1, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez v0, :cond_8

    move v0, v6

    .line 1297
    :goto_3
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v7

    if-ge v0, v2, :cond_8

    .line 1298
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v7

    if-ne v0, v2, :cond_6

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_4

    :cond_6
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1299
    :goto_4
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_7

    .line 1300
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v3, v6

    .line 1301
    :goto_5
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1302
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, v1, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1308
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    :cond_9
    move-object v5, v0

    iput-object v5, v1, Lorg/telegram/ui/Components/ItemOptions;->pointContainer:Landroid/view/ViewGroup;

    .line 1310
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_28

    if-nez v5, :cond_a

    goto/16 :goto_15

    .line 1315
    :cond_a
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    .line 1316
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    .line 1317
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    invoke-static {v2, v5, v0}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 1318
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v2, v0, v7

    .line 1319
    aget v0, v0, v6

    goto :goto_6

    :cond_b
    move v2, v0

    move v0, v9

    .line 1321
    :goto_6
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 1322
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    if-eqz v4, :cond_c

    .line 1323
    check-cast v3, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    invoke-interface {v3, v10}, Lorg/telegram/ui/Components/ItemOptions$ScrimView;->getBounds(Landroid/graphics/RectF;)V

    goto :goto_7

    .line 1324
    :cond_c
    iget v4, v1, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    if-eqz v4, :cond_d

    iget v11, v1, Lorg/telegram/ui/Components/ItemOptions;->animateToHeight:I

    if-eqz v11, :cond_d

    int-to-float v3, v4

    int-to-float v4, v11

    .line 1325
    invoke-virtual {v10, v9, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7

    .line 1327
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10, v9, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1329
    :goto_7
    iget v3, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    .line 1330
    iget v3, v10, Landroid/graphics/RectF;->top:F

    add-float v11, v2, v3

    .line 1331
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ItemOptions;->ignoreX:Z

    if-eqz v2, :cond_e

    .line 1332
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aput v9, v0, v6

    move v0, v9

    .line 1335
    :cond_e
    iget v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    const/4 v12, 0x2

    if-lez v2, :cond_12

    .line 1336
    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$DimView;

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/ItemOptions$DimView;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    .line 1337
    new-instance v3, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ItemOptions$DimView;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1341
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1342
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    .line 1344
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder:Z

    if-eqz v2, :cond_f

    .line 1345
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    :cond_f
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_10

    .line 1348
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 1349
    iput-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    .line 1351
    :cond_10
    new-array v2, v12, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    .line 1352
    new-instance v3, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1358
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ItemOptions$4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ItemOptions$4;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1368
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz v2, :cond_11

    .line 1369
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x17c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1370
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_8

    .line 1372
    :cond_11
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1374
    :goto_8
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1376
    :cond_12
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    const/4 v13, 0x3

    if-eqz v2, :cond_14

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v2, :cond_14

    .line 1377
    iget v3, v1, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    if-eqz v3, :cond_14

    .line 1378
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fputmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;F)V

    .line 1379
    iget v2, v1, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrimGravity:I

    if-ne v2, v13, :cond_13

    .line 1380
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fputmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;F)V

    .line 1382
    :cond_13
    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v2, v2, v6

    neg-float v2, v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fgetmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    :cond_14
    move v14, v0

    .line 1385
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1386
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    .line 1387
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 1388
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move/from16 v16, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iget-object v8, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v0

    int-to-float v0, v8

    invoke-virtual {v15, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1390
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$5;

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions$5;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;IILandroid/view/ViewGroup;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1402
    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$6;

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/Components/ItemOptions$6;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1414
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1415
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1416
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1417
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1418
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1419
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1420
    iget-boolean v0, v1, Lorg/telegram/ui/Components/ItemOptions;->needsFocus:Z

    if-eqz v0, :cond_15

    .line 1421
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1422
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    goto :goto_9

    .line 1424
    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1425
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1428
    :goto_9
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1429
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v11, v0

    .line 1430
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v14, v0

    .line 1433
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 1434
    iget v0, v1, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    if-ne v0, v13, :cond_17

    .line 1435
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v14

    :goto_a
    float-to-int v0, v0

    goto :goto_c

    :cond_17
    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    .line 1437
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v0, v2

    iget v2, v15, Landroid/graphics/RectF;->right:F

    :goto_b
    sub-float/2addr v0, v2

    goto :goto_a

    :cond_18
    if-ne v0, v7, :cond_19

    .line 1439
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, v2, v16

    add-float/2addr v0, v2

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v16

    goto :goto_b

    .line 1441
    :cond_19
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v14

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1a

    .line 1442
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v0, v2

    iget v2, v15, Landroid/graphics/RectF;->right:F

    goto :goto_b

    .line 1444
    :cond_1a
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v14

    iget v2, v15, Landroid/graphics/RectF;->left:F

    goto :goto_b

    .line 1448
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v12

    .line 1451
    :goto_c
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ItemOptions;->onTopOfScrim:Z

    if-eqz v2, :cond_1c

    move v2, v9

    goto :goto_d

    :cond_1c
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 1453
    :goto_d
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->forceBelowScrim:Z

    if-eqz v3, :cond_1d

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v3, :cond_1d

    add-float/2addr v11, v2

    .line 1454
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v2

    :goto_e
    add-float/2addr v11, v2

    float-to-int v2, v11

    :goto_f
    move v3, v6

    goto/16 :goto_13

    .line 1455
    :cond_1d
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->forceBottom:Z

    if-eqz v3, :cond_1f

    .line 1456
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz v3, :cond_1e

    goto :goto_e

    :cond_1e
    add-float/2addr v11, v2

    .line 1459
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_f

    .line 1461
    :cond_1f
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v3, :cond_23

    .line 1462
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->forceTop:Z

    if-nez v3, :cond_21

    add-float v3, v11, v2

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_20

    goto :goto_11

    :cond_20
    :goto_10
    move v3, v6

    goto :goto_12

    :cond_21
    :goto_11
    sub-float/2addr v11, v2

    .line 1466
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v11, v3

    .line 1467
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->allowCenter:Z

    if-eqz v3, :cond_22

    add-float v3, v11, v2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v4, v4, v7

    iget v8, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_22

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_22

    .line 1469
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v16

    sub-float/2addr v3, v2

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v4

    sub-float v11, v3, v4

    goto :goto_10

    :cond_22
    move v3, v7

    :goto_12
    add-float/2addr v11, v2

    .line 1472
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v11, v2

    float-to-int v2, v11

    goto :goto_13

    .line 1474
    :cond_23
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v12

    goto/16 :goto_f

    .line 1476
    :goto_13
    iget-boolean v4, v1, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    if-eqz v4, :cond_24

    if-eqz v3, :cond_24

    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->overridenSwipebackGravity:Z

    if-nez v3, :cond_24

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_24

    .line 1477
    iput-boolean v7, v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityBottom:Z

    .line 1480
    :cond_24
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz v3, :cond_25

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v3, :cond_25

    .line 1494
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float v0, v0, v16

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fputmoveToY(Lorg/telegram/ui/Components/ItemOptions$DimView;F)V

    .line 1495
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fgetmoveToY(Lorg/telegram/ui/Components/ItemOptions$DimView;)F

    move-result v0

    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 1496
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fgetmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;)F

    move-result v0

    iget v3, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 1497
    iget v3, v1, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrimGravity:I

    if-ne v3, v13, :cond_25

    .line 1498
    iget-object v0, v1, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->-$$Nest$fgetmoveToX(Lorg/telegram/ui/Components/ItemOptions$DimView;)F

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 1502
    :cond_25
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ItemOptions;->discardScrolls:Z

    if-eqz v3, :cond_27

    .line 1504
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1505
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_14

    .line 1506
    :cond_26
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-eqz v3, :cond_27

    .line 1507
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1511
    :cond_27
    :goto_14
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ItemOptions;->scaleOut:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 1512
    iget-object v3, v1, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    int-to-float v0, v0

    iget v4, v1, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    float-to-int v0, v0

    int-to-float v2, v2

    iget v4, v1, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr v2, v4

    iput v2, v1, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    float-to-int v2, v2

    invoke-virtual {v3, v5, v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_28
    :goto_15
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translate(FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 1081
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    .line 1082
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    return-object p0
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method
