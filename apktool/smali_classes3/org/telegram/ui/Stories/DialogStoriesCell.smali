.class public abstract Lorg/telegram/ui/Stories/DialogStoriesCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;,
        Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;,
        Lorg/telegram/ui/Stories/DialogStoriesCell$Item;
    }
.end annotation


# instance fields
.field public K:F

.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

.field addCirclePaint:Landroid/graphics/Paint;

.field private final addNewStoryDrawable:Landroid/graphics/drawable/Drawable;

.field private addNewStoryLastColor:I

.field afterNextLayout:Ljava/util/ArrayList;

.field public allowGlobalUpdates:Z

.field animateToDialogIds:Ljava/util/ArrayList;

.field private animationRunnable:Ljava/lang/Runnable;

.field private final animatorHasTitleText:Lme/vkryl/android/animator/BoolAnimator;

.field backgroundPaint:Landroid/graphics/Paint;

.field private checkedStoryNotificationDeletion:J

.field private clipTop:I

.field collapsed:Z

.field private collapsedOvershootAnimator:Landroid/animation/ValueAnimator;

.field private collapsedOvershootProgress:F

.field collapsedProgress:F

.field private collapsedProgress1:F

.field private collapsedProgress2:F

.field private collapsedSpringCoef:F

.field comparator:Ljava/util/Comparator;

.field currentAccount:I

.field public currentCellWidth:I

.field currentState:I

.field private currentTitle:Ljava/lang/CharSequence;

.field private dialogsTitleOverride:Ljava/lang/CharSequence;

.field drawCircleForce:Z

.field ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field emojiStatusView:Landroid/widget/ImageView;

.field private expandOvershootAnimator:Landroid/animation/ValueAnimator;

.field private expandOvershootAnimatorProgress:F

.field private expandedSpringCoef:F

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

.field grayPaint:Landroid/graphics/Paint;

.field private hasOverlayText:Z

.field itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field items:Ljava/util/ArrayList;

.field private lastUploadingCloseFriends:Z

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

.field private menuItemsOffset:F

.field miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

.field private final miniItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field miniItems:Ljava/util/ArrayList;

.field miniItemsClickArea:Lorg/telegram/ui/Components/CanvasButton;

.field oldItems:Ljava/util/ArrayList;

.field oldMiniItems:Ljava/util/ArrayList;

.field private overScrollCoef:F

.field private overlayTextId:I

.field private overscrollProgress:F

.field private overscrollSelectedPosition:I

.field private overscrollSelectedView:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

.field private premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private premiumStar:Landroid/graphics/drawable/Drawable;

.field public radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field public recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field storiesAnimatorSet:Landroid/animation/AnimatorSet;

.field private storiesCollapseInterpolator:Landroid/view/animation/OvershootInterpolator;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private storiesExpandInterpolator:Landroid/view/animation/OvershootInterpolator;

.field subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

.field private textAnimator:Landroid/animation/ValueAnimator;

.field private titleOverrideAnimator:Landroid/animation/ValueAnimator;

.field private titleOverrideForward:Z

.field private titleOverrideProgress:F

.field titleView:Lorg/telegram/ui/Components/AnimatedTextView;

.field titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final type:I

.field updateOnIdleState:Z

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field viewsDrawInParent:Ljava/util/ArrayList;

.field private yStoriesAnimator:Landroid/animation/ValueAnimator;

.field private yStoriesProgress:F


# direct methods
.method public static synthetic $r8$lambda$2z64GguTSO1WRgpTsWiS7KloF1E(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$setProgressToCollapse$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3NwAwpqU94ribSfRKDAWQ_nGMf8(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$setDialogsTitleOverride$15(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4qDfdpLsGpFYccN6ALAdRCojpec(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$updateCurrentState$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$8nes5Xgry-HpHmlGkxGGWqgzwJQ(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$new$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Bb9TAUkCQfAti7J-EgbNxiWZfg0(Lorg/telegram/ui/Stories/DialogStoriesCell;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$openStoryForCell$4(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Elfeqd_jiE4bOsxLma6AIZYknaU(ILandroid/view/View;)V
    .locals 0

    .line 1118
    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 1119
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 1120
    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GG4Q1vron03zbe2MLK2tOjNnE2w(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$setProgressToCollapse$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HQIOqQ7gHGVpkq66OoGB1qqrst0(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$IWjVIGjdLLZg21YCLA-7rv7YqUo(Lorg/telegram/ui/Stories/DialogStoriesCell;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$openStoryForCell$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$IvQRzivuQCnsoLOlsoxdzVmX7_E(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$setProgressToCollapse$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JU35FNtrFzbGb3io22HLzqPub2Y(Lorg/telegram/ui/Stories/DialogStoriesCell;Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$openStoryForCell$5(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NrhGsZxg09iUAB-w-bMrBhjzt4g(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$makePremiumHint$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$PNIilrFjmzHxfcnrNHoXNSZEuIg(Landroid/view/View;)V
    .locals 0

    .line 1123
    check-cast p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 1124
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$YHyYfzeD7yIG3DqAFSFxFKhk1IM(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLLcGrs3ecWcfBgfj5WeKmCtcUg(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2087
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 2088
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2089
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$lAPtwsOpwv1uI1hYpscDS2WX-QQ(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$setProgressToCollapse$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lVHczz4QeRYnsXttpU5Plx0C_pQ(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkLoadMore()V

    return-void
.end method

.method public static synthetic $r8$lambda$mrKyDE7kqyAfP266l3FH_xwibtA(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)I
    .locals 0

    .line 648
    iget p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$rA62sdPRos58E5fIu_gIaKeRPqc(Lorg/telegram/ui/Stories/DialogStoriesCell;Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$openStoryRecorder$14(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ux-la2NIYA7FIXmv2pzkSWGY7Us(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1080
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddNewStoryLastColor(Lorg/telegram/ui/Stories/DialogStoriesCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryLastColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationRunnable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsedProgress1(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsedProgress2(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsedSpringCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexpandedSpringCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastUploadingCloseFriends(Lorg/telegram/ui/Stories/DialogStoriesCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->lastUploadingCloseFriends:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoverScrollCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overScrollCoef:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoverscrollProgress(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumHint(Lorg/telegram/ui/Stories/DialogStoriesCell;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->textAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleOverrideAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaddNewStoryLastColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryLastColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimationRunnable(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcollapsedProgress2(Lorg/telegram/ui/Stories/DialogStoriesCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcollapsedSpringCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputexpandedSpringCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastUploadingCloseFriends(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->lastUploadingCloseFriends:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoverScrollCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overScrollCoef:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->textAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtitleOverrideAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtitleOverrideProgress(Lorg/telegram/ui/Stories/DialogStoriesCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCollapsedProgress(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLoadMore(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkLoadMore()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateVerifiedDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->createVerifiedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTextColor(Lorg/telegram/ui/Stories/DialogStoriesCell;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
    .locals 13

    .line 188
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x17c

    const/4 v1, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animatorHasTitleText:Lme/vkryl/android/animator/BoolAnimator;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    .line 132
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemsClickArea:Lorg/telegram/ui/Components/CanvasButton;

    const/high16 v0, -0x40800000    # -1.0f

    .line 150
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/4 v4, -0x1

    .line 152
    iput v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    .line 165
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 174
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    .line 175
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideForward:Z

    .line 177
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->allowGlobalUpdates:Z

    .line 565
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overScrollCoef:F

    const v5, 0x3f733333    # 0.95f

    .line 566
    iput v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    const v5, 0x3f666666    # 0.9f

    .line 567
    iput v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    .line 648
    new-instance v5, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda6;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->comparator:Ljava/util/Comparator;

    const v5, 0x3e99999a    # 0.3f

    .line 987
    iput v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    .line 990
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootProgress:F

    .line 996
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    iget v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesExpandInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 997
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    iget v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesCollapseInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 1227
    new-instance v5, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    move/from16 v5, p4

    .line 189
    iput v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    move/from16 v5, p3

    .line 190
    iput v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    .line 191
    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/high16 v6, 0x42880000    # 68.0f

    .line 192
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->menuItemsOffset:F

    .line 193
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 194
    new-instance v5, Lorg/telegram/ui/Stories/DialogStoriesCell$1;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v6, 0x40400000    # 3.0f

    .line 220
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v7, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 222
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 223
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemsClickArea:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 224
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemsClickArea:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CanvasButton;->setLongPress(Ljava/lang/Runnable;)V

    .line 296
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$5;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 307
    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 308
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 309
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 310
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 311
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 312
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 313
    new-instance v5, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    .line 317
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 318
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 325
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 326
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->createTitleView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x8

    .line 329
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->createTitleView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 333
    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 336
    iput-boolean v3, v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 337
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 339
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    .line 340
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v3, Lorg/telegram/ui/Stories/DialogStoriesCell$6;

    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v3, p0, p1, v7, v4}, Lorg/telegram/ui/Stories/DialogStoriesCell$6;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    const/4 p1, -0x2

    .line 351
    invoke-static {p1, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    const v3, -0x2a2522

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mini_addstory:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$7;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    .line 409
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$8;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 422
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$9;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 428
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 429
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 435
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 436
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkUi_titleVisibility()V

    .line 438
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    return-void
.end method

.method private cancelTitleOverrideAnimation()V
    .locals 3

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1383
    iput-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1385
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1387
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkCollapsedProgress()V
    .locals 3

    .line 1087
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    sub-float v2, v1, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    .line 1088
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkUi_titleVisibility()V

    .line 1091
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1096
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateCurrentState(I)V

    .line 1097
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private checkExpanded()V
    .locals 4

    .line 2132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkedStoryNotificationDeletion:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2136
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkedStoryNotificationDeletion:J

    return-void
.end method

.method private checkLoadMore()V
    .locals 2

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isReadAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 553
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 554
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadNextStories(Z)V

    return-void
.end method

.method private checkUi_titleVisibility()V
    .locals 6

    .line 2255
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 2257
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2258
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2259
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    cmpl-float v5, v0, v2

    if-lez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2262
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_3

    .line 2263
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2264
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 2268
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2269
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    cmpl-float v5, v0, v2

    if-lez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2272
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eqz v1, :cond_7

    .line 2273
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2274
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private createTitleView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 4

    .line 1370
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    const/4 v1, 0x3

    .line 1371
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 1372
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextLogoColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1373
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    .line 1374
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 1375
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1376
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

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    return-object v0
.end method

.method private createVerifiedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 2052
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2053
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2054
    new-instance v1, Lorg/telegram/ui/Stories/DialogStoriesCell$12;

    move-object v5, v3

    move-object v6, v4

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/DialogStoriesCell$12;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2072
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    return-object v1
.end method

.method static getAvatarRight(IF)F
    .locals 3

    const/high16 v0, 0x42400000    # 48.0f

    .line 2120
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41d2a3d7    # 26.33f

    .line 2121
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 2122
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p0, v0

    const/4 v2, 0x0

    .line 2126
    invoke-static {p0, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method private getDialogsMainTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->dialogsTitleOverride:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->dialogsTitleOverride:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 1395
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1396
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getTextColor()I
    .locals 1

    .line 1133
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-nez v0, :cond_0

    .line 1134
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result v0

    return v0

    .line 1136
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedTitle:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method private getTextLogoColor()I
    .locals 1

    .line 1129
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_telegram_color_dialogsLogo:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2240
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2243
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    return p1

    .line 2241
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method private isReadAtPosition(I)Z
    .locals 4

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private synthetic lambda$makePremiumHint$18()V
    .locals 3

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 2162
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2164
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string/jumbo v2, "stories"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 17

    move-object/from16 v0, p0

    .line 225
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 231
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen oversrcoll: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overScrollCoef:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    .line 236
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overScrollCoef:F

    const v7, 0x3e4ccccd    # 0.2f

    sub-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 237
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 238
    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$2;

    invoke-direct {v6, v0, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x26

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/16 v12, 0x14

    .line 250
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v13, 0x14

    const/4 v11, 0x5

    const/4 v12, 0x0

    .line 252
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collapsed spring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x14

    .line 256
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    .line 258
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    const/high16 v8, 0x3e800000    # 0.25f

    sub-float/2addr v6, v8

    const/high16 v9, 0x40100000    # 2.25f

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 259
    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$3;

    invoke-direct {v6, v0, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$3;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    const/16 v15, 0x14

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x26

    const/4 v13, 0x5

    .line 271
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expanded X spring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v13, 0x14

    .line 276
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v4, Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    .line 278
    iget v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v9

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 279
    new-instance v5, Lorg/telegram/ui/Stories/DialogStoriesCell$4;

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$4;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    const/4 v8, -0x1

    const/16 v9, 0x26

    const/4 v10, 0x0

    const/4 v11, 0x5

    .line 291
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 293
    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopViewAspectRatio(F)V

    .line 294
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 0

    .line 314
    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    const/4 p2, 0x0

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)Z
    .locals 2

    .line 319
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    .line 320
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iget-wide v0, p2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->onUserLongPressed(Landroid/view/View;J)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$openStoryForCell$3(J)V
    .locals 2

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    return-void
.end method

.method private synthetic lambda$openStoryForCell$4(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 535
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 536
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadNextStories(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$openStoryForCell$5(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;J)V
    .locals 10

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 485
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    .line 487
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 490
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 491
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v6, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    .line 492
    iget v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 500
    :goto_1
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 501
    :cond_3
    iget-wide v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    move p1, v5

    goto/16 :goto_5

    .line 504
    :cond_4
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    .line 507
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 508
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v6, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    .line 509
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 510
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_5
    iget-wide v8, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    .line 513
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move p1, v1

    move v2, v5

    goto :goto_5

    :cond_8
    move p1, v1

    .line 517
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    .line 518
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    .line 519
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v6, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 520
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-gt p1, v0, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    move p1, v1

    move v2, p1

    .line 527
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v3

    .line 528
    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0, p2, p3}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;J)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady(Ljava/lang/Runnable;)V

    move p2, v2

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p3

    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    invoke-virtual {p3, v6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->with(Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p3

    iget v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-ne v6, v5, :cond_c

    move v1, v5

    .line 538
    :cond_c
    invoke-virtual {p3, v1, p2, p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->setPaginationParaments(ZZZ)Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v0

    .line 530
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    :cond_d
    :goto_6
    return-void
.end method

.method private synthetic lambda$openStoryRecorder$14(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Ljava/lang/Boolean;)V
    .locals 0

    .line 1214
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1215
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1216
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p1, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    .line 1217
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedPeerId(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1218
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    .line 1219
    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDialogsTitleOverride$15(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1349
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    .line 1350
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setProgressToCollapse$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1069
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimatorProgress:F

    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setProgressToCollapse$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1023
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    .line 1024
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgress()V

    return-void
.end method

.method private synthetic lambda$setProgressToCollapse$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1030
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->yStoriesProgress:F

    return-void
.end method

.method private synthetic lambda$setProgressToCollapse$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1057
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootProgress:F

    return-void
.end method

.method private synthetic lambda$updateCurrentState$16()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2083
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    return-void
.end method

.method private makePremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 6

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    return-object v0

    .line 2155
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    .line 2156
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 2157
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2158
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v3, 0x41e80000    # 29.0f

    .line 2159
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2160
    const-string v0, "StoriesPremiumHint2"

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    new-instance v3, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 2166
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    if-eqz v1, :cond_1

    .line 2167
    array-length v3, v1

    if-lt v3, v2, :cond_1

    .line 2168
    aget-object v2, v1, v4

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 2169
    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2170
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v5, 0x21

    invoke-interface {v0, v3, v2, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2172
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2173
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2175
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 2176
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v2, 0x96

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2178
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object v0
.end method

.method private openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 461
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :catch_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-nez v0, :cond_3

    .line 464
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 465
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->showPremiumHint()V

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryRecorder()V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 474
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    .line 475
    iget-wide v1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    .line 476
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    if-eqz v3, :cond_5

    .line 477
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancel()V

    const/4 v3, 0x0

    .line 478
    iput-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    .line 481
    :cond_5
    new-instance v3, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1, v1, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;J)V

    if-eqz p2, :cond_6

    .line 541
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 543
    :cond_6
    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->ensureStoryFileLoaded(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    if-eqz p2, :cond_7

    .line 545
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method private shouldDrawSelfInMini()Z
    .locals 3

    .line 644
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 645
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateCurrentState(I)V
    .locals 7

    .line 2077
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2081
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2082
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateOnIdleState:Z

    if-eqz p1, :cond_1

    .line 2083
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2085
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 2091
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2092
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2093
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkExpanded()V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v0, :cond_6

    .line 2095
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move p1, v2

    .line 2096
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 2097
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->shouldDrawSelfInMini()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2098
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2104
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2105
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 2107
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2108
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2109
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2110
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->scheduleSort()V

    .line 2111
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    if-eqz p1, :cond_7

    .line 2112
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancel()V

    const/4 p1, 0x0

    .line 2113
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    .line 2116
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public afterNextLayout(Ljava/lang/Runnable;)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 978
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_1

    .line 979
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->allowGlobalUpdates:Z

    if-eqz p1, :cond_1

    .line 980
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    .line 981
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 652
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 653
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->clipTop:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 656
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 657
    iget v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    const/4 v6, 0x0

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 658
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 659
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 660
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    iget v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->menuItemsOffset:F

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    move v7, v3

    .line 662
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 663
    iget-object v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iput-boolean v3, v8, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 665
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 668
    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eq v7, v10, :cond_2

    if-nez v7, :cond_4

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v3

    move v11, v9

    .line 669
    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v7, v12, :cond_6

    .line 670
    iget-object v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 671
    iget-wide v13, v12, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_3

    .line 672
    iget-object v11, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v11

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 675
    :cond_4
    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ne v7, v8, :cond_5

    move v11, v3

    goto :goto_2

    :cond_5
    move v11, v9

    .line 679
    :cond_6
    :goto_2
    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/high16 v14, 0x3f800000    # 1.0f

    if-ltz v7, :cond_30

    if-eq v7, v8, :cond_30

    if-ne v11, v9, :cond_8

    .line 682
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 684
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v11

    :cond_7
    move v7, v10

    goto :goto_3

    :cond_8
    move v7, v3

    .line 688
    :goto_3
    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v16, v4

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/high16 v17, 0x41800000    # 16.0f

    iget v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    div-float/2addr v4, v12

    invoke-static {v4, v14, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    sub-float v4, v14, v4

    invoke-virtual {v15, v4}, Landroid/view/View;->setAlpha(F)V

    .line 689
    iput v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    .line 690
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_f

    move v4, v3

    move v12, v9

    .line 692
    :goto_4
    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_e

    .line 693
    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 694
    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v18

    cmpg-float v18, v18, v6

    if-ltz v18, :cond_c

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    add-float v18, v18, v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v18, v13

    if-lez v13, :cond_9

    goto :goto_5

    .line 697
    :cond_9
    iget-object v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v13

    if-gez v13, :cond_a

    goto :goto_5

    :cond_a
    if-eq v12, v9, :cond_b

    if-ge v13, v12, :cond_d

    .line 702
    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v8, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    iget v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    move-object/from16 v22, v15

    iget-wide v14, v10, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v8, v8, v14

    if-eqz v8, :cond_d

    .line 704
    move-object/from16 v15, v22

    check-cast v15, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iput-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedView:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move v12, v13

    goto :goto_5

    :cond_c
    const/high16 v19, 0x40000000    # 2.0f

    :cond_d
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_e
    const/high16 v19, 0x40000000    # 2.0f

    .line 707
    iput v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    goto :goto_6

    :cond_f
    const/high16 v19, 0x40000000    # 2.0f

    :goto_6
    move v4, v3

    move v8, v6

    .line 709
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_2f

    .line 710
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 711
    invoke-static {v9, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->-$$Nest$msetClipInParent(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V

    .line 712
    iget-object v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    .line 713
    iget v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    move/from16 v22, v4

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lt v10, v11, :cond_10

    .line 714
    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v11

    if-ge v10, v15, :cond_10

    sub-int v12, v10, v11

    add-int/lit8 v15, v11, 0x2

    if-ne v12, v15, :cond_11

    .line 717
    iget v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    :cond_10
    move/from16 v25, v7

    goto :goto_9

    :cond_11
    add-int/lit8 v15, v11, 0x1

    if-ne v12, v15, :cond_12

    .line 719
    iget v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    move/from16 v25, v7

    float-to-double v6, v12

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    :goto_8
    double-to-float v12, v6

    goto :goto_9

    :cond_12
    move/from16 v25, v7

    .line 721
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    float-to-double v6, v6

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    goto :goto_8

    :goto_9
    if-ge v10, v11, :cond_13

    .line 725
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    float-to-double v6, v6

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v12, v6

    .line 727
    :cond_13
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    iget v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    iget v14, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    if-ne v13, v14, :cond_14

    const/4 v13, 0x1

    goto :goto_a

    :cond_14
    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v9, v12, v6, v7, v13}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setProgressToCollapsed(FFFZ)V

    if-le v10, v11, :cond_17

    .line 728
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v11

    if-ge v10, v6, :cond_17

    .line 729
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/lit8 v7, v22, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    if-eqz v6, :cond_16

    const/high16 v7, 0x42400000    # 48.0f

    .line 731
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const v13, 0x41d2a3d7    # 26.33f

    .line 732
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    .line 733
    iget v14, v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v7, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    const/high16 v15, 0x41000000    # 8.0f

    move-wide/from16 v26, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v14, v3

    .line 734
    iget v3, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v7, v13, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float v14, v14, v19

    div-float v3, v3, v19

    .line 738
    iget-object v4, v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v4, v7

    .line 739
    iget-object v7, v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v7, v13

    .line 740
    iget-object v13, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v13, v13, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v15

    add-float/2addr v13, v15

    .line 741
    iget-object v15, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v15, v15, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v28

    add-float v15, v15, v28

    sub-float/2addr v13, v4

    sub-float/2addr v15, v7

    mul-float v4, v13, v13

    mul-float v7, v15, v15

    add-float/2addr v4, v7

    move v7, v2

    move/from16 v28, v3

    float-to-double v2, v4

    .line 745
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float v14, v14, v28

    cmpg-float v3, v2, v14

    if-gez v3, :cond_15

    div-float/2addr v2, v14

    float-to-double v2, v2

    .line 747
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v28

    .line 748
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, v15

    move/from16 v28, v7

    move v14, v8

    float-to-double v7, v13

    .line 749
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float v2, v2, v19

    sub-float v4, v3, v2

    add-float/2addr v3, v2

    .line 752
    iget-object v7, v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput v4, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightTopAngleToExclude:F

    .line 753
    iput v3, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightBottomAngleToExclude:F

    neg-float v3, v15

    float-to-double v3, v3

    neg-float v7, v13

    float-to-double v7, v7

    .line 754
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, v3, v2

    .line 755
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v4, v4

    add-float/2addr v3, v2

    .line 756
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 757
    iget-object v3, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftTopAngleToExclude:F

    .line 758
    iput v2, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftBottomAngleToExclude:F

    goto :goto_b

    :cond_15
    move/from16 v28, v7

    move v14, v8

    .line 760
    iget-object v2, v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightTopAngleToExclude:F

    .line 761
    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightBottomAngleToExclude:F

    .line 762
    iget-object v2, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftTopAngleToExclude:F

    .line 763
    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftBottomAngleToExclude:F

    .line 765
    :goto_b
    iget-object v2, v6, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v15, 0x0

    iput-boolean v15, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->useArcProgress:Z

    .line 766
    iget-object v2, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v15, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->useArcProgress:Z

    goto :goto_c

    :cond_16
    move/from16 v28, v2

    move-wide/from16 v26, v3

    move v14, v8

    const/4 v15, 0x0

    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_17
    move/from16 v28, v2

    move-wide/from16 v26, v3

    move v14, v8

    const/4 v15, 0x0

    .line 769
    iget-object v2, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightTopAngleToExclude:F

    .line 770
    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightBottomAngleToExclude:F

    .line 771
    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftTopAngleToExclude:F

    .line 772
    iput v3, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftBottomAngleToExclude:F

    .line 773
    iput-boolean v15, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->useArcProgress:Z

    .line 776
    :goto_d
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v2, v4

    div-float/2addr v2, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    .line 777
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float v2, v6, v2

    mul-float/2addr v2, v4

    float-to-double v6, v2

    add-double v6, v6, v26

    double-to-float v2, v6

    if-gt v10, v11, :cond_18

    const/4 v8, 0x0

    const/16 v24, 0x0

    goto :goto_e

    :cond_18
    add-int/lit8 v6, v11, 0x1

    if-ne v10, v6, :cond_19

    .line 786
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v6, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/4 v8, 0x0

    invoke-static {v4, v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    add-float/2addr v4, v6

    move/from16 v24, v4

    const/4 v8, 0x0

    goto :goto_e

    .line 788
    :cond_19
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    add-float/2addr v6, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v6, v4

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/4 v8, 0x0

    invoke-static {v4, v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    add-float v24, v6, v4

    .line 790
    :goto_e
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->menuItemsOffset:F

    add-float v4, v24, v4

    .line 791
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsed:Z

    if-nez v6, :cond_1c

    .line 793
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1b

    .line 794
    iget v6, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    if-ge v6, v7, :cond_1a

    neg-float v6, v3

    goto :goto_f

    :cond_1a
    if-le v6, v7, :cond_1b

    move v6, v3

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    .line 800
    :goto_f
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimatorProgress:F

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v7, v21, v7

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    const/4 v8, 0x0

    goto :goto_10

    .line 802
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesCollapseInterpolator:Landroid/view/animation/OvershootInterpolator;

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootProgress:F

    invoke-virtual {v6, v7}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 805
    :goto_10
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    const v7, 0x3e4ccccd    # 0.2f

    sub-float/2addr v6, v7

    const v7, 0x3dcccccd    # 0.1f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v8, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    sub-int v7, v10, v11

    if-nez v7, :cond_1d

    sub-float v13, v5, v28

    const v23, 0x3f266666    # 0.65f

    .line 809
    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-virtual {v12, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v12

    invoke-static {v8, v13, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v24

    :goto_11
    move/from16 v12, v24

    goto :goto_12

    :cond_1d
    const/4 v12, 0x1

    const v23, 0x3f266666    # 0.65f

    if-ne v7, v12, :cond_1e

    sub-float v12, v5, v28

    mul-float v12, v12, v23

    .line 811
    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-virtual {v13, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v13

    invoke-static {v8, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v24

    goto :goto_11

    :cond_1e
    move v12, v8

    .line 815
    :goto_12
    iget v13, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    iget v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    if-ne v13, v15, :cond_1f

    iget v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    cmpl-float v13, v13, v8

    if-lez v13, :cond_1f

    neg-float v3, v3

    div-float v3, v3, v19

    goto :goto_13

    :cond_1f
    const/4 v3, 0x0

    :goto_13
    if-nez v7, :cond_20

    sub-float v8, v5, v28

    .line 819
    iget v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->yStoriesProgress:F

    invoke-static {v3, v8, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    goto :goto_14

    :cond_20
    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    sub-float v8, v5, v28

    mul-float v8, v8, v23

    .line 821
    iget v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->yStoriesProgress:F

    invoke-static {v3, v8, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    .line 824
    :goto_14
    invoke-static {v3, v12, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 826
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/16 v24, 0x0

    cmpl-float v6, v6, v24

    if-lez v6, :cond_27

    if-lt v10, v11, :cond_22

    add-int/lit8 v2, v11, 0x2

    if-gt v10, v2, :cond_22

    const/4 v15, 0x1

    goto :goto_15

    :cond_22
    const/4 v15, 0x0

    :goto_15
    const-wide/16 v12, -0x1

    if-eqz v25, :cond_24

    if-ltz v7, :cond_23

    .line 830
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_23

    .line 831
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 832
    invoke-virtual {v9, v6, v7}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setCrossfadeTo(J)V

    goto :goto_16

    .line 834
    :cond_23
    invoke-virtual {v9, v12, v13}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setCrossfadeTo(J)V

    goto :goto_16

    .line 837
    :cond_24
    invoke-virtual {v9, v12, v13}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setCrossfadeTo(J)V

    .line 839
    :goto_16
    iput-boolean v15, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-ne v10, v11, :cond_25

    const/4 v2, 0x1

    goto :goto_17

    :cond_25
    const/4 v2, 0x0

    .line 840
    :goto_17
    iput-boolean v2, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFirst:Z

    .line 841
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v11

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    if-lt v10, v2, :cond_26

    move/from16 v2, v20

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    .line 842
    invoke-virtual {v9, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 843
    invoke-virtual {v9, v3}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v15, :cond_2c

    .line 846
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_27
    const/16 v20, 0x1

    .line 848
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    if-eqz v6, :cond_28

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 849
    :cond_28
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    const/16 v24, 0x0

    cmpl-float v6, v6, v24

    if-lez v6, :cond_2b

    .line 850
    iget v6, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    if-ge v6, v7, :cond_29

    .line 851
    invoke-virtual {v9, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_19

    :cond_29
    if-le v6, v7, :cond_2a

    .line 853
    invoke-virtual {v9, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_19

    :cond_2a
    const/high16 v6, 0x3f800000    # 1.0f

    .line 855
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_19

    :cond_2b
    const/high16 v6, 0x3f800000    # 1.0f

    .line 858
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    .line 860
    :goto_19
    invoke-virtual {v9, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 861
    invoke-virtual {v9, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 863
    :cond_2c
    :goto_1a
    iget-boolean v2, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-eqz v2, :cond_2e

    .line 864
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v19

    add-float/2addr v2, v3

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v19

    add-float/2addr v2, v3

    const/16 v24, 0x0

    cmpl-float v3, v14, v24

    if-eqz v3, :cond_2d

    cmpl-float v3, v2, v14

    if-lez v3, :cond_2e

    :cond_2d
    move v8, v2

    goto :goto_1b

    :cond_2e
    move v8, v14

    :goto_1b
    add-int/lit8 v4, v22, 0x1

    move/from16 v7, v25

    move/from16 v2, v28

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_2f
    move v14, v8

    const/16 v20, 0x1

    goto :goto_1d

    :cond_30
    move/from16 v16, v4

    move/from16 v20, v10

    const/high16 v17, 0x41800000    # 16.0f

    const/high16 v19, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 871
    :goto_1c
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v15, v2, :cond_33

    .line 872
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 873
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    const/16 v24, 0x0

    cmpl-float v2, v8, v24

    if-eqz v2, :cond_31

    cmpl-float v2, v3, v8

    if-lez v2, :cond_32

    :cond_31
    move v8, v3

    :cond_32
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    .line 880
    :cond_33
    :goto_1d
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_35

    .line 881
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    const/16 v3, 0x1d

    const/16 v4, 0x4a

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 882
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_34

    .line 883
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 885
    :cond_34
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_1e

    :cond_35
    const/4 v4, 0x0

    .line 888
    :goto_1e
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_3a

    .line 890
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->getTotalVisibility()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    .line 892
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v6, v6, v19

    .line 893
    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->getTotalVisibility()F

    move-result v7

    const v9, 0x3f733333    # 0.95f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    const/high16 v9, 0x41980000    # 19.0f

    .line 894
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    sub-float/2addr v9, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v9, v6

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->getTotalVisibility()F

    move-result v10

    mul-float/2addr v6, v10

    sub-float/2addr v9, v6

    .line 895
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setPivotX(F)V

    .line 896
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 897
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 898
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v6, 0x42900000    # 72.0f

    .line 899
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v10, v6

    int-to-float v10, v10

    .line 900
    iget v11, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-static {v6, v11}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getAvatarRight(IF)F

    move-result v6

    add-float/2addr v10, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v10, v6

    add-float/2addr v8, v10

    .line 902
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideForward:Z

    if-eqz v6, :cond_36

    const/16 v18, -0x1

    goto :goto_1f

    :cond_36
    move/from16 v18, v20

    :goto_1f
    mul-int v4, v4, v18

    int-to-float v4, v4

    .line 903
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_37

    neg-float v6, v4

    iget v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v14, v21, v10

    mul-float/2addr v6, v14

    goto :goto_20

    :cond_37
    const/4 v6, 0x0

    .line 904
    :goto_20
    iget-object v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    add-float/2addr v6, v8

    invoke-virtual {v10, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 905
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v6

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v8, v11

    iget-object v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibleItemsMeasuredWidthWithAlpha()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    .line 906
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v11, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    mul-float/2addr v11, v2

    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    .line 908
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setPivotX(F)V

    .line 909
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 910
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 911
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 912
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_38

    .line 913
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v8

    invoke-virtual {v6, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 914
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v8, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibleItemsMeasuredWidthWithAlpha()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v8, v6

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    .line 915
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v14, v21, v6

    mul-float/2addr v14, v2

    invoke-virtual {v4, v14}, Landroid/view/View;->setAlpha(F)V

    .line 916
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x0

    goto :goto_21

    :cond_38
    const/4 v15, 0x0

    .line 918
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 919
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 922
    :goto_21
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 923
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    const v6, 0x413553f8    # 11.333f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    add-float/2addr v7, v3

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 924
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    add-float/2addr v6, v3

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 925
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    if-eqz v4, :cond_39

    move v6, v8

    goto :goto_22

    :cond_39
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    mul-float v6, v2, v4

    :goto_22
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 927
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 928
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    const v3, 0x421154fe    # 36.333f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_23

    :cond_3a
    const/4 v15, 0x0

    .line 931
    :goto_23
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 932
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ltz v2, :cond_3b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3b

    .line 933
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->comparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v3, v15

    .line 934
    :goto_24
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3b

    .line 935
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 936
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 937
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 938
    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 939
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 942
    :cond_3b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public findStoryCell(J)Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;
    .locals 5

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1473
    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    :cond_0
    const/4 v1, 0x0

    .line 1476
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1477
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1478
    instance-of v3, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    if-eqz v3, :cond_1

    .line 1479
    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 1480
    iget-wide v3, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollapsedProgress()F
    .locals 1

    .line 1101
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    return v0
.end method

.method public getOverScrollCoef()F
    .locals 1

    .line 570
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overScrollCoef:F

    return v0
.end method

.method public getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 1165
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isFullExpanded()Z
    .locals 1

    .line 1169
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 947
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 948
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    .line 949
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 956
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 957
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancel()V

    const/4 v0, 0x0

    .line 961
    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->globalCancelable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    .line 963
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2250
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkUi_titleVisibility()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 968
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x41900000    # 18.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41a00000    # 20.0f

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/high16 p2, 0x428c0000    # 70.0f

    .line 971
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentCellWidth:I

    .line 972
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p2, 0x42b20000    # 89.0f

    .line 973
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public abstract onMiniListClicked()V
.end method

.method public onResume()V
    .locals 4

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->checkExpiredStories()V

    const/4 v0, 0x0

    .line 1294
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1295
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1297
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController;->preloadUserStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2193
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2194
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x41d2a3d7    # 26.33f

    int-to-float v2, v0

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 2195
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2196
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemsClickArea:Lorg/telegram/ui/Components/CanvasButton;

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v0, v0

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v4, v0, v5}, Lorg/telegram/ui/Components/CanvasButton;->setRect(IIII)V

    .line 2197
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemsClickArea:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 2201
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract onUserLongPressed(Landroid/view/View;J)V
.end method

.method public openOverscrollSelectedStory()Z
    .locals 2

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1313
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedView:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V

    return v1
.end method

.method public openSelfStories()V
    .locals 10

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1287
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V
    .locals 1

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V

    return-void
.end method

.method public openStoryRecorder()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1185
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryRecorder(J)V

    return-void
.end method

.method public openStoryRecorder(J)V
    .locals 12

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 1190
    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1191
    iget v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->getLimitReachedType()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1198
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 1199
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    if-nez v0, :cond_1

    .line 1200
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_1
    iget-wide v5, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_2

    :goto_1
    move-object v5, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_6

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    :cond_5
    move-object v11, v4

    .line 1211
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v3, 0x1f4

    .line 1212
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1213
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda20;

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    const/4 v10, 0x1

    move-wide v7, p1

    move-object v9, v0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Stories/StoriesController;->canSendStoryFor(JLcom/google/android/exoplayer2/util/Consumer;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 1223
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v0

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return-void
.end method

.method public overscrollProgress()F
    .locals 1

    .line 1402
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    return v0
.end method

.method public scrollTo(J)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1142
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1143
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    const/4 p2, 0x1

    if-ge v1, p1, :cond_2

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return p2

    .line 1152
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    if-le v1, p1, :cond_3

    .line 1153
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return p2

    :cond_3
    return v0
.end method

.method public scrollToFirst()Z
    .locals 2

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public scrollToFirstCell()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setActionBar(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-void
.end method

.method public setClipTop(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1277
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->clipTop:I

    if-eq v0, p1, :cond_1

    .line 1278
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->clipTop:I

    .line 1279
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDialogsTitleOverride(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1322
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setDialogsTitleOverride(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setDialogsTitleOverride(Ljava/lang/CharSequence;ZZ)V
    .locals 3

    .line 1326
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->dialogsTitleOverride:Ljava/lang/CharSequence;

    .line 1327
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1330
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getDialogsMainTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    .line 1331
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    if-eqz p1, :cond_2

    :goto_1
    return-void

    .line 1334
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1335
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->cancelTitleOverrideAnimation()V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1336
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 1341
    :cond_3
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideForward:Z

    const/4 p2, 0x0

    .line 1342
    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideProgress:F

    .line 1343
    iget-object p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1344
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    iget p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    invoke-static {p3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p3, p2, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1346
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1347
    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    .line 1348
    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1352
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$11;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$11;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1364
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1365
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1366
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleOverrideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1337
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1338
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setMenuItemsOffset(F)V
    .locals 0

    .line 446
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->menuItemsOffset:F

    return-void
.end method

.method public setOverscroll(F)V
    .locals 1

    const/high16 v0, 0x42b40000    # 90.0f

    .line 1303
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    .line 1304
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1305
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressToCollapse(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1000
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setProgressToCollapse(FZ)V

    return-void
.end method

.method public setProgressToCollapse(FZ)V
    .locals 8

    .line 1005
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 1009
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    .line 1010
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgress()V

    .line 1012
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1013
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsed:Z

    if-eq p1, v2, :cond_a

    .line 1014
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsed:Z

    .line 1015
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 1016
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1017
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 1018
    iput-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    .line 1021
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p2, v6, v0

    aput v4, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 1022
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1027
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1028
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    if-eqz p1, :cond_4

    move v4, p2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    new-array v6, v5, [F

    aput p2, v6, v0

    aput v4, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->yStoriesAnimator:Landroid/animation/ValueAnimator;

    .line 1029
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1032
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->yStoriesAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1034
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1035
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$10;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$10;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    invoke-virtual {p2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1050
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->yStoriesAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsed:Z

    if-eqz v4, :cond_6

    .line 1054
    iget-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1055
    iget v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    new-array p1, v5, [F

    aput v4, p1, v0

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootAnimator:Landroid/animation/ValueAnimator;

    .line 1056
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1059
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedSpringCoef:F

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesCollapseInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1061
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1062
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedOvershootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1064
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    new-array p1, v5, [F

    aput v4, p1, v0

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    .line 1065
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandedSpringCoef:F

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesExpandInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1068
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->expandOvershootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1075
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    .line 1077
    :goto_6
    iput v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    .line 1078
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgress()V

    .line 1079
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_a
    :goto_7
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;I)V
    .locals 5

    .line 1230
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->cancelTitleOverrideAnimation()V

    .line 1232
    sget v0, Lorg/telegram/messenger/R$string;->ConnectingToProxyWithDots:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    .line 1233
    sget v0, Lorg/telegram/messenger/R$string;->TitleSetupProxy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x402aaaab

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1237
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1241
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    .line 1242
    iget v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overlayTextId:I

    if-eq v3, p2, :cond_3

    .line 1243
    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overlayTextId:I

    .line 1244
    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1247
    const-string p2, "..."

    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    if-ltz p2, :cond_1

    .line 1249
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    .line 1250
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v0

    .line 1255
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v4, v2

    invoke-virtual {v3, p1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1258
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    .line 1259
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overlayTextId:I

    .line 1260
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v3, v2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_3
    move p2, v0

    .line 1262
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1263
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animatorHasTitleText:Lme/vkryl/android/animator/BoolAnimator;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    invoke-virtual {p1, v0, v2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    if-eqz p2, :cond_4

    .line 1267
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    return-void

    .line 1269
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 2141
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public showPremiumHint()V
    .locals 1

    .line 2182
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->makePremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2183
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 2184
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 2187
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 1109
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->updateColors()V

    .line 1110
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextColor()I

    move-result v0

    .line 1112
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextLogoColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1113
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleViewOut:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextLogoColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1114
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->subtitleOverlayContainer:Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;

    if-eqz v1, :cond_0

    .line 1115
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->updateColors()V

    .line 1117
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public updateItems(ZZ)V
    .locals 7

    .line 574
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 575
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateOnIdleState:Z

    return-void

    .line 578
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 580
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 582
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 583
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-eq p2, v1, :cond_2

    .line 584
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;J)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_2
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    .line 588
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 589
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 590
    iget v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    .line 591
    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;J)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 594
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 595
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 599
    :cond_6
    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-ne v2, v1, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    move v2, v0

    .line 600
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 602
    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-nez v2, :cond_8

    .line 603
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getDialogsMainTitle()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_3

    .line 604
    :cond_8
    const-string v2, "Stories"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    .line 606
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    if-nez v2, :cond_a

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_9

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    move v3, v0

    :goto_4
    invoke-virtual {v2, p2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 610
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animatorHasTitleText:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p2, v1, p1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 612
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 613
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_d

    .line 614
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v1, p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_b

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->shouldDrawSelfInMini()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_6

    .line 617
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x3

    if-lt p2, v1, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    :goto_7
    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 625
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_8

    .line 629
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 630
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_8

    .line 633
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 636
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateStatus(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 4

    .line 2207
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2210
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2212
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    .line 2213
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 2214
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2215
    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2216
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 2217
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    .line 2218
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$13;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {p1, p0, v1, v3, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell$13;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/graphics/drawable/Drawable;II)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    .line 2228
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2229
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumStar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 2230
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_0

    .line 2232
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 2233
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    .line 2235
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getThemedColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 2236
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->emojiStatusView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method
