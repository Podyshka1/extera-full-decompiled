.class public Lorg/telegram/ui/Components/ReactionsContainerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;
    }
.end annotation


# static fields
.field public static final TRANSITION_PROGRESS_VALUE:Landroid/util/Property;


# instance fields
.field private allReactionsAvailable:Z

.field private allReactionsIsDefault:Z

.field public allReactionsList:Ljava/util/List;

.field final alwaysSelectedReactions:Ljava/util/HashSet;

.field private animatePopup:Z

.field private final animationEnabled:Z

.field private final bgPaint:Landroid/graphics/Paint;

.field public bigCircleOffset:I

.field private bigCircleRadius:F

.field public bubblesOffset:F

.field cancelPressedAnimation:Landroid/animation/ValueAnimator;

.field private cancelPressedProgress:F

.field public channelReactions:Z

.field chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

.field private clicked:Z

.field private currentAccount:I

.field private customEmojiReactionsEnterProgress:F

.field private customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

.field customReactionsContainer:Landroid/widget/FrameLayout;

.field private delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

.field public final durationScale:F

.field private flipVerticalProgress:F

.field public forceAttachToParent:Z

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public hasHint:Z

.field private hasStar:Z

.field private hintMeasured:Z

.field public hintView:Landroid/widget/TextView;

.field public hintViewHeight:I

.field public hintViewWidth:I

.field public hitLimit:Z

.field private isFlippedVertically:Z

.field public isHiddenNextReaction:Z

.field private isTop:Z

.field public items:Ljava/util/ArrayList;

.field lastReactionSentTime:J

.field private lastUpdate:J

.field lastVisibleViews:Ljava/util/HashSet;

.field lastVisibleViewsTmp:Ljava/util/HashSet;

.field private leftAlpha:F

.field private final leftShadowPaint:Landroid/graphics/Paint;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

.field private location:[I

.field private mPath:Landroid/graphics/Path;

.field public messageObject:Lorg/telegram/messenger/MessageObject;

.field private miniBubblesOffset:F

.field private mirrorX:Z

.field public nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

.field public final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public oldItems:Ljava/util/ArrayList;

.field private onSwitchedToLoopView:Ljava/lang/Runnable;

.field private otherViewsScale:F

.field parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

.field public paused:Z

.field public pausedExceptSelected:Z

.field premiumLockContainer:Landroid/widget/FrameLayout;

.field private premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private premiumLockedReactions:Ljava/util/List;

.field private prepareAnimation:Z

.field private pressedProgress:F

.field private pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field private pressedReactionPosition:I

.field private pressedViewScale:F

.field pullingDownBackAnimator:Landroid/animation/ValueAnimator;

.field pullingLeftOffset:F

.field public radius:F

.field reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field public rect:Landroid/graphics/RectF;

.field rectF:Landroid/graphics/RectF;

.field public final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightAlpha:F

.field private final rightShadowPaint:Landroid/graphics/Paint;

.field private final selectedPaint:Landroid/graphics/Paint;

.field final selectedReactions:Ljava/util/HashSet;

.field private shadow:Landroid/graphics/drawable/Drawable;

.field private shadowPad:Landroid/graphics/Rect;

.field private showExpandableReactions:Z

.field skipDraw:Z

.field public skipEnterAnimation:Z

.field private smallCircleRadius:F

.field private starSelectedGradient:Landroid/graphics/LinearGradient;

.field private starSelectedGradientMatrix:Landroid/graphics/Matrix;

.field private starSelectedGradientPaint:Landroid/graphics/Paint;

.field private final starSelectedPaint:Landroid/graphics/Paint;

.field private transitionProgress:F

.field private triggeredReactions:Ljava/util/List;

.field private final type:I

.field private visibleReactionsList:Ljava/util/List;

.field private waitingLoadingChatId:J


# direct methods
.method public static synthetic $r8$lambda$-sDBCw5cNZ8A7xGChcTYEPdxBuk(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$animatePullingBack$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1oUHdBxBMzfg-EE8nzWVkj1Fos(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$showCustomEmojiReactionDialog$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$AqNY6gloNhV3NNWV5BlEKMRrUeg(Lorg/telegram/ui/Components/ReactionsContainerLayout;ILandroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$new$1(ILandroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NqCfVDWAoeh5OOWNw3i6Caju1A0(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$reset$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPnB7HiL1xkhUsZn7X_TS666hbw(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$stPtMbac9stYZV85nvD8RGC-vXU(Lorg/telegram/ui/Components/ReactionsContainerLayout;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$updateSelected$4(ZLandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallReactionsIsDefault(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationEnabled(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animationEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcancelPressedProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclicked(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetleftAlpha(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetleftShadowPaint(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinearLayoutManager(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->location:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonSwitchedToLoopView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onSwitchedToLoopView:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedReaction(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrightAlpha(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrightShadowPaint(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPaint(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstarSelectedPaint(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransitionProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvisibleReactionsList(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcancelPressedProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclicked(Lorg/telegram/ui/Components/ReactionsContainerLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputleftAlpha(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Premium/PremiumLockIconView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressedProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressedReaction(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressedReactionPosition(Lorg/telegram/ui/Components/ReactionsContainerLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrightAlpha(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$manimatePullingBack(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePullingBack()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPressed(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetChildScale(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setChildScale(Landroid/view/View;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCustomEmojiReactionDialog(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReactionDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUnlockPremium(Lorg/telegram/ui/Components/ReactionsContainerLayout;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showUnlockPremium(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUnlockPremiumButton(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showUnlockPremiumButton()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "transitionProgress"

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 241
    invoke-direct {p0, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->forceAttachToParent:Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->oldItems:Ljava/util/ArrayList;

    .line 151
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    .line 152
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 155
    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    .line 156
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    .line 157
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    const/high16 v4, 0x42900000    # 72.0f

    .line 158
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    const/high16 v4, 0x41000000    # 8.0f

    .line 159
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 160
    iput v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    const/high16 v4, 0x42100000    # 36.0f

    .line 161
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockedReactions:Ljava/util/List;

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    .line 183
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    .line 185
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasStar:Z

    .line 186
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    .line 187
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->alwaysSelectedReactions:Ljava/util/HashSet;

    const/4 v4, 0x2

    .line 189
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->location:[I

    .line 193
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->triggeredReactions:Ljava/util/List;

    .line 220
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    .line 221
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    .line 225
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedPaint:Landroid/graphics/Paint;

    .line 226
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedPaint:Landroid/graphics/Paint;

    .line 229
    new-instance v7, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v7}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 232
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 2595
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->paused:Z

    .line 242
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    .line 243
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "animator_duration_scale"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->durationScale:F

    .line 244
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_reactionStarSelector:I

    invoke-static {v3, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iput-object p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 247
    iput p4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    .line 248
    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 250
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-direct {p2, p0, p3, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/16 v3, 0x8

    .line 251
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-boolean v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    .line 253
    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animationEnabled:Z

    .line 259
    sget p2, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p3, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 261
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 263
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$2;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout$2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 285
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 286
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 287
    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;

    invoke-direct {v2, p0, p3, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;IZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 343
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 366
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 367
    invoke-virtual {p2, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 368
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 369
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout-IA;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 370
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 404
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 415
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 421
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;I)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    const/high16 p3, -0x40800000    # -1.0f

    const/4 v2, -0x1

    .line 432
    invoke-static {v2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 434
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 435
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateShaders()V

    .line 437
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p3, p2

    .line 438
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v4, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 444
    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {p1, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 p1, -0x1000000

    const p2, 0x3e051eb8    # 0.13f

    .line 442
    invoke-static {p1, v2, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    :goto_2
    invoke-static {p4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->preloadDefaultReactions()V

    return-void
.end method

.method public static allowSmoothEnterTransition()Z
    .locals 1

    .line 2480
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v0

    return v0
.end method

.method private animatePullingBack()V
    .locals 4

    .line 474
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 478
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    .line 479
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private cancelPressed()V
    .locals 3

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2267
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    .line 2268
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    const/4 v1, 0x2

    .line 2269
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    .line 2270
    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2278
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$9;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2288
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2289
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2290
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkPressedProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V
    .locals 11

    .line 951
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v0

    .line 953
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float/2addr v3, v0

    const/high16 v0, 0x42380000    # 46.0f

    .line 954
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 956
    :goto_0
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 957
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 958
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    shr-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setPivotX(F)V

    .line 959
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->setPivotY(F)V

    .line 960
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 961
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 963
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    if-nez v5, :cond_5

    .line 964
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 965
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 967
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 968
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 971
    :cond_3
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    sub-float v7, v2, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 972
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 974
    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 975
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    .line 976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x12c

    cmp-long v0, v7, v9

    if-lez v0, :cond_5

    .line 977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v0, p2, v2, v4, v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    .line 983
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v0, v2

    .line 985
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v0, v2

    cmpg-float v5, v4, v1

    if-gez v5, :cond_6

    .line 986
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_6

    neg-float v0, v4

    sub-float/2addr v0, v3

    .line 987
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    .line 988
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    add-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_7

    .line 989
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    sub-float/2addr v1, v3

    .line 991
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 993
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 994
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 995
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPivotX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 996
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 999
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 1001
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v0, v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float v6, v2, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 1003
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    if-ge p1, v4, :cond_9

    .line 1004
    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotX(F)V

    neg-float p1, v0

    .line 1005
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 1007
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v3

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    sub-float/2addr v0, v3

    .line 1008
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1010
    :goto_4
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    .line 1011
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1012
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1015
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private checkPressedProgressForOtherViews(Landroid/view/View;)V
    .locals 5

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 920
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 922
    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    neg-float v0, v1

    .line 924
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 926
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 927
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 929
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 930
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private drawBubbles(Landroid/graphics/Canvas;FFFI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p5

    .line 869
    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return-void

    .line 872
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 873
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v10, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v3

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    sub-float v3, v9, v3

    mul-float/2addr v6, v3

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v3, v10

    int-to-float v3, v3

    sub-float/2addr v5, v3

    add-float/2addr v5, v9

    invoke-virtual {v2, v4, v4, v1, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 876
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {v1, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v3

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    sub-float v3, v9, v3

    mul-float/2addr v6, v3

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v3, v10

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v10

    sub-float/2addr v8, v10

    iget v10, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v6, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 878
    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    sub-int/2addr v1, v3

    :goto_1
    int-to-float v1, v1

    goto :goto_3

    :cond_3
    :goto_2
    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    goto :goto_1

    .line 879
    :goto_3
    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    add-float/2addr v1, v3

    .line 880
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v4

    add-float/2addr v3, v4

    :goto_4
    const/high16 v4, 0x40400000    # 3.0f

    .line 881
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 882
    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 883
    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 884
    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    sub-float v6, v1, p2

    int-to-float v10, v4

    mul-float v4, v10, p3

    sub-float v8, v6, v4

    float-to-int v8, v8

    sub-float v11, v3, p2

    sub-float v12, v11, v4

    float-to-int v12, v12

    add-float v13, v1, p2

    add-float v14, v13, v4

    float-to-int v14, v14

    add-float v15, v3, p2

    add-float/2addr v4, v15

    float-to-int v4, v4

    invoke-virtual {v5, v8, v12, v14, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 885
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 888
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v6, v11, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 889
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    const/4 v8, 0x0

    move/from16 v4, p2

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    goto :goto_5

    :cond_5
    move/from16 v4, p2

    .line 891
    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 894
    :goto_5
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    add-float/2addr v1, v3

    goto :goto_7

    :cond_7
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    sub-float/2addr v1, v3

    .line 895
    :goto_7
    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->miniBubblesOffset:F

    add-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 896
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    sub-float/2addr v3, v5

    sub-float/2addr v3, v10

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v5

    add-float/2addr v3, v5

    .line 897
    :goto_8
    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    add-float/2addr v5, v10

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v6

    sub-float/2addr v5, v6

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 898
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    .line 899
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    sub-float v7, v1, v4

    int-to-float v5, v5

    mul-float v5, v5, p3

    sub-float/2addr v7, v5

    float-to-int v7, v7

    sub-float v8, v3, v4

    sub-float/2addr v8, v5

    float-to-int v8, v8

    add-float v9, v1, v4

    add-float/2addr v9, v5

    float-to-int v9, v9

    add-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 900
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 901
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 902
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    sub-float v5, v1, p4

    sub-float v6, v3, p4

    add-float v1, v1, p4

    add-float v3, v3, p4

    invoke-virtual {v4, v5, v6, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 903
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    const/4 v8, 0x0

    move/from16 v4, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    goto :goto_9

    :cond_9
    move/from16 v4, p4

    .line 905
    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 907
    :goto_9
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 909
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 910
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private fillRecentReactionsList(Ljava/util/List;)V
    .locals 10

    .line 1289
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1291
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 1292
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1293
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1294
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1295
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_0

    goto/16 :goto_b

    .line 1300
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v1

    .line 1301
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    .line 1302
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 1303
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1304
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_2

    goto/16 :goto_b

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1312
    :cond_3
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_13

    if-ne v1, v3, :cond_4

    goto/16 :goto_8

    :cond_4
    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 1338
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 1339
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1341
    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 1342
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    .line 1343
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1344
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1345
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-ne v1, v5, :cond_7

    .line 1355
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getSavedReactions()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 1357
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getTopReactions()Ljava/util/ArrayList;

    move-result-object v1

    .line 1359
    :goto_2
    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const-wide/16 v6, 0x0

    if-ne v3, v5, :cond_b

    .line 1360
    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->getSavedReactionTags(J)Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    move-result-object v3

    if-eqz v3, :cond_9

    move v4, v2

    .line 1362
    :goto_3
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 1363
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    .line 1364
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1365
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1366
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move v3, v2

    .line 1371
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 1372
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 1373
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1374
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1375
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    move v3, v2

    .line 1380
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 1381
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 1382
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    iget v8, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v8, v5, :cond_c

    iget v8, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v8

    if-nez v8, :cond_c

    iget-wide v8, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_d

    .line 1383
    :cond_c
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1384
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1393
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne v1, v5, :cond_f

    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1394
    :cond_f
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getRecentReactions()Ljava/util/ArrayList;

    move-result-object v1

    move v3, v2

    .line 1395
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 1396
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 1397
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1398
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1399
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1404
    :cond_11
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v1

    .line 1405
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 1406
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    .line 1407
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1408
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1409
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    if-ne v1, v5, :cond_16

    .line 1314
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getSavedReactions()Ljava/util/ArrayList;

    move-result-object v1

    move v3, v2

    .line 1315
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    .line 1316
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 1317
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1318
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_14
    const/16 v4, 0x10

    if-ne v3, v4, :cond_15

    goto :goto_b

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1328
    :cond_16
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    .line 1329
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_17

    .line 1330
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    .line 1331
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    :goto_b
    return-void
.end method

.method private filterReactions(Ljava/util/List;)V
    .locals 3

    .line 1277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1278
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1279
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 1281
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1283
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInclusiveReactions(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 11

    .line 1206
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 1207
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    .line 1209
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1210
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 1211
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v6, :cond_2

    .line 1212
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    move v7, v3

    .line 1213
    :goto_1
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1214
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v8, :cond_1

    .line 1215
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v8

    if-nez v5, :cond_0

    .line 1216
    iget-wide v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_1

    .line 1217
    :cond_0
    iget-wide v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-wide v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-virtual {v0, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    .line 1224
    :goto_2
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1225
    invoke-virtual {v0, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1226
    invoke-virtual {v0, v5}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_3
    add-int/2addr v5, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 1231
    :cond_5
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1232
    :goto_3
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 1233
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1234
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-object p0
.end method

.method private getStarGradientPaint(Landroid/graphics/RectF;F)Landroid/graphics/Paint;
    .locals 9

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientPaint:Landroid/graphics/Paint;

    .line 2612
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientMatrix:Landroid/graphics/Matrix;

    .line 2613
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_2

    .line 2614
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_reactionStarSelector:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 2615
    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v6

    const/4 v0, 0x2

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradient:Landroid/graphics/LinearGradient;

    .line 2616
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2618
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2619
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2620
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2621
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2622
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->starSelectedGradientPaint:Landroid/graphics/Paint;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private invalidateEmojis()V
    .locals 3

    .line 934
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 935
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    const/4 v0, 0x0

    .line 938
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 940
    instance-of v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v2, :cond_1

    .line 941
    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 942
    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 944
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private invalidateShaders()V
    .locals 11

    const/high16 v0, 0x41c00000    # 24.0f

    .line 1035
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v1, v2

    .line 1037
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    .line 1038
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move v7, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1039
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v6, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animatePullingBack$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    .line 416
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz p2, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_0

    .line 417
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 418
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(ILandroid/view/View;I)Z
    .locals 1

    const/4 p3, 0x5

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    return v0

    .line 425
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz p1, :cond_1

    instance-of p3, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz p3, :cond_1

    .line 426
    check-cast p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 427
    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 p3, 0x1

    invoke-interface {p1, p0, p2, p3, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return p3

    :cond_1
    return v0
.end method

.method private synthetic lambda$reset$5(Landroid/view/View;)V
    .locals 5

    .line 1609
    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_3

    .line 1610
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v0, 0x0

    .line 1611
    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    .line 1612
    iget-object v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1613
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    if-eqz v0, :cond_2

    .line 1614
    iget-object v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v3, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    const v4, 0x3f428f5c    # 0.76f

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1615
    iget-object v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz p1, :cond_1

    move v1, v4

    :cond_1
    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 1617
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$showCustomEmojiReactionDialog$3()V
    .locals 1

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 514
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateLoopViews()V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onEmojiWindowDismissed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateSelected$4(ZLandroid/view/View;)V
    .locals 2

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1269
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    instance-of v1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_1

    .line 1271
    check-cast p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateSelected(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setChildScale(Landroid/view/View;F)V
    .locals 1

    .line 554
    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_0

    .line 555
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput p2, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    return-void

    .line 557
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 558
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setVisibleReactionsList(Ljava/util/List;Z)V
    .locals 6

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 585
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/2addr v0, v3

    const/4 v3, 0x7

    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    move v3, v1

    if-ge v0, v2, :cond_1

    move v0, v2

    .line 592
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 593
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->-$$Nest$msetReaction(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V

    goto :goto_1

    .line 599
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 601
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    move v0, v1

    .line 602
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 604
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 607
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 611
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr v0, p1

    const/high16 p1, 0x43480000    # 200.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 614
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->updateItems(Z)V

    return-void
.end method

.method private showCustomEmojiReactionDialog()V
    .locals 9

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v0, :cond_0

    return-void

    .line 509
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->forceAttachToParent:Z

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 510
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->allowLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setLongPressEnabled(Z)V

    .line 511
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateLoopViews()V

    .line 512
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismissListener(Ljava/lang/Runnable;)V

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onShownCustomEmojiReactionDialog()V

    return-void
.end method

.method private showUnlockPremium(FF)V
    .locals 2

    .line 549
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 550
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private showUnlockPremiumButton()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockedReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSelected(Z)V
    .locals 2

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Z)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method


# virtual methods
.method public clearRecentReactions()V
    .locals 2

    .line 1567
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearRecentReactions()V

    .line 1568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 1570
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setVisibleReactionsList(Ljava/util/List;Z)V

    .line 1571
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1572
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setRecentReactions(Ljava/util/List;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 2344
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2345
    aget-object p2, p3, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2346
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->waitingLoadingChatId:J

    cmp-long p3, v2, v4

    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-nez p2, :cond_2

    .line 2347
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p2, v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 2348
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    return-void

    .line 2351
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 2352
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateEmojis()V

    return-void

    .line 2353
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    if-ne p1, p2, :cond_2

    .line 2354
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    :cond_2
    return-void
.end method

.method public dismissParent(Z)V
    .locals 1

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss(Z)V

    const/4 p1, 0x0

    .line 1485
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    :cond_0
    return-void
.end method

.method public dismissWindow()V
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastUpdate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastUpdate:J

    .line 622
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    const/high16 v5, 0x435c0000    # 220.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    iget v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    cmpl-float v7, v6, v10

    if-eqz v7, :cond_0

    long-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v6, v2

    .line 623
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    .line 624
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 625
    iget v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    cmpl-float v6, v4, v9

    if-eqz v6, :cond_1

    long-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v4, v2

    .line 626
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    .line 627
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 630
    :cond_1
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 631
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 634
    :cond_2
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v2, v3

    const/high16 v4, 0x3f400000    # 0.75f

    div-float v11, v2, v4

    .line 635
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    mul-float v12, v2, v11

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    mul-float v13, v2, v11

    .line 637
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 638
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 641
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation:Z

    if-eqz v2, :cond_3

    .line 642
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 645
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v14, 0x5

    if-eqz v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v2, v14, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->allowLongPress()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 646
    :cond_4
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v4, v2, v10

    if-eqz v4, :cond_7

    .line 647
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_5
    const v4, 0x44bb8000    # 1500.0f

    :goto_1
    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v2, v2, v10

    if-ltz v2, :cond_6

    .line 649
    iput v10, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    .line 651
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 656
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v2, :cond_8

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v2, :cond_8

    .line 657
    iput v10, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    .line 658
    iput v10, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    goto :goto_2

    .line 660
    :cond_8
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    mul-float v4, v2, v15

    add-float/2addr v4, v10

    iput v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    const v4, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v4

    sub-float v2, v10, v2

    .line 661
    iput v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    .line 664
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 665
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f600000    # 0.875f

    :goto_3
    mul-float/2addr v4, v5

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e000000    # 0.125f

    goto :goto_3

    .line 667
    :goto_5
    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v6, v5, v10

    if-eqz v6, :cond_b

    .line 669
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v15

    invoke-virtual {v1, v5, v5, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 673
    :cond_b
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_d

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v5, :cond_c

    goto :goto_6

    .line 676
    :cond_c
    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v3, v10, v3

    move v5, v10

    goto :goto_7

    .line 674
    :cond_d
    :goto_6
    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v5, v3

    move v3, v9

    .line 678
    :goto_7
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v16

    .line 679
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v6

    .line 680
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v7, :cond_e

    .line 681
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setExpandSize(F)V

    .line 683
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    .line 684
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v8

    move/from16 v17, v15

    .line 685
    iget-object v15, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    move/from16 v19, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    move/from16 v20, v3

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float v3, v19, v3

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    sub-float/2addr v9, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v3, v10

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    sub-int v10, v10, v21

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {v15, v14, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 686
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v8

    mul-float v15, v6, v17

    sub-float/2addr v3, v15

    div-float v3, v3, v17

    iput v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    .line 688
    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v10, 0x1

    if-eq v3, v10, :cond_f

    .line 689
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v14, 0x3d4ccccd    # 0.05f

    div-float/2addr v8, v14

    sub-float v8, v19, v8

    move/from16 v15, v19

    const/4 v14, 0x0

    invoke-static {v8, v15, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 690
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    move/from16 v21, v9

    iget v9, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    int-to-float v9, v14

    mul-float v9, v9, v20

    add-float/2addr v8, v9

    iget v9, v15, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iget-object v14, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v14

    float-to-int v6, v6

    sub-int/2addr v9, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v5, v14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    add-int/2addr v14, v6

    invoke-virtual {v3, v8, v9, v5, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 691
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    :cond_f
    move/from16 v21, v9

    .line 694
    :goto_8
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 696
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-nez v2, :cond_16

    .line 697
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 698
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v19

    if-eqz v3, :cond_10

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    invoke-virtual {v1, v2, v2, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 702
    :cond_10
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v2, v10, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    .line 705
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move v14, v4

    move v15, v7

    goto :goto_a

    .line 703
    :cond_12
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    move v2, v4

    iget v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    move v8, v7

    const/16 v7, 0xff

    move v14, v8

    const/4 v8, 0x0

    move v15, v14

    move v14, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    move-object v1, v2

    .line 708
    :goto_a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasStar:Z

    if-eqz v2, :cond_15

    .line 710
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 711
    iget-boolean v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v3, :cond_13

    goto :goto_b

    .line 717
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v4

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v4, v19, v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v4

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getStarGradientPaint(Landroid/graphics/RectF;F)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 721
    :cond_15
    :goto_b
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_c

    :cond_16
    move v14, v4

    move v15, v7

    .line 724
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 725
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 727
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 728
    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v19

    if-eqz v4, :cond_17

    .line 730
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    invoke-virtual {v1, v3, v3, v14, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 733
    :cond_17
    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/16 v18, 0x0

    cmpl-float v3, v3, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_18

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2f

    :cond_18
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 736
    :goto_d
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_2a

    .line 737
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 738
    iget v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v19

    if-eqz v8, :cond_19

    invoke-static {}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allowSmoothEnterTransition()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 739
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    add-float/2addr v6, v8

    .line 740
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    const v8, 0x3f4ccccd    # 0.8f

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v8, 0x43480000    # 200.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 742
    :cond_19
    instance-of v8, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v8, :cond_1e

    .line 743
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 744
    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->checkPressedProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    .line 745
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_1a

    .line 746
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 748
    :cond_1a
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    if-nez v7, :cond_29

    iget-boolean v7, v8, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v7, :cond_1b

    iget-object v7, v8, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v7

    if-nez v7, :cond_1b

    goto/16 :goto_12

    .line 751
    :cond_1b
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v7, v9

    const/16 v18, 0x0

    cmpl-float v7, v7, v18

    if-lez v7, :cond_1d

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1d

    .line 752
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 753
    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->play(I)Z

    add-int/lit8 v6, v6, 0x1e

    .line 756
    :cond_1c
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 757
    :cond_1d
    invoke-static {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->-$$Nest$fgetisEnter(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 758
    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    goto/16 :goto_12

    .line 761
    :cond_1e
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockContainer:Landroid/widget/FrameLayout;

    if-ne v7, v8, :cond_22

    .line 762
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    const/16 v18, 0x0

    cmpl-float v8, v8, v18

    if-lez v8, :cond_21

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_21

    .line 763
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 764
    iget v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v19

    if-eqz v8, :cond_1f

    .line 765
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resetAnimation()V

    .line 767
    :cond_1f
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->play(I)V

    add-int/lit8 v6, v6, 0x1e

    .line 770
    :cond_20
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 772
    :cond_21
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resetAnimation()V

    .line 775
    :cond_22
    :goto_e
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-ne v7, v8, :cond_28

    .line 776
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    const/16 v18, 0x0

    cmpl-float v8, v8, v18

    if-lez v8, :cond_27

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_27

    .line 777
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 778
    iget v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v19

    if-eqz v8, :cond_23

    .line 779
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->resetAnimation()V

    .line 781
    :cond_23
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    const/16 v9, 0x2008

    invoke-static {v9}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_25

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v9

    if-lt v9, v10, :cond_24

    goto :goto_f

    :cond_24
    move v9, v3

    goto :goto_10

    :cond_25
    :goto_f
    move v9, v10

    :goto_10
    invoke-virtual {v8, v6, v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->play(IZ)V

    add-int/lit8 v6, v6, 0x1e

    .line 784
    :cond_26
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 786
    :cond_27
    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->resetAnimation()V

    .line 789
    :cond_28
    :goto_11
    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->checkPressedProgressForOtherViews(Landroid/view/View;)V

    :cond_29
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_2a
    const/16 v18, 0x0

    cmpl-float v4, v16, v18

    if-lez v4, :cond_2d

    .line 793
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v4

    .line 794
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 796
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v7, v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static {v7, v8, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    mul-float/2addr v7, v4

    int-to-float v6, v6

    mul-float/2addr v7, v6

    .line 799
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2b

    .line 800
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 801
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 802
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->play(I)Z

    :cond_2b
    const/4 v14, 0x0

    .line 804
    invoke-static {v4, v8, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    .line 805
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    .line 806
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    .line 808
    iget v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v4, v10, :cond_2c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2c

    const/high16 v4, 0x41a00000    # 20.0f

    .line 809
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_13
    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_14

    :cond_2c
    const/high16 v4, 0x41000000    # 8.0f

    .line 811
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_13

    .line 813
    :goto_14
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v8, v5

    sub-float/2addr v8, v7

    add-float/2addr v8, v4

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 814
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 815
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    .line 818
    :cond_2d
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    if-eqz v3, :cond_2e

    .line 819
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 821
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 822
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 827
    :cond_2f
    :goto_15
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-eqz v3, :cond_30

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v3, :cond_30

    .line 828
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v3, 0x3e4ccccd    # 0.2f

    div-float/2addr v2, v3

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v10, v15, v2

    const/4 v14, 0x0

    invoke-static {v10, v15, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    sub-float v10, v15, v3

    mul-float/2addr v2, v10

    mul-float v2, v2, v21

    float-to-int v5, v2

    .line 829
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move v3, v11

    move v2, v12

    move v4, v13

    .line 830
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    .line 831
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_30
    move v3, v11

    move v4, v12

    move v5, v13

    .line 835
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v6

    if-nez v6, :cond_31

    .line 837
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 839
    :cond_31
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_32

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v7, :cond_33

    :cond_32
    const/4 v10, -0x1

    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/2addr v10, v7

    int-to-float v7, v10

    iget v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v10, v19, v8

    mul-float/2addr v7, v10

    const/4 v14, 0x0

    invoke-virtual {v1, v7, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 840
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    neg-float v8, v15

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 841
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-nez v6, :cond_35

    .line 844
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_34

    .line 845
    iget v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    iget v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    mul-float/2addr v6, v7

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v6, v15, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    .line 846
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 847
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 849
    :cond_34
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_35

    .line 850
    iget v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    iget v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    mul-float/2addr v6, v7

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v6, v15, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    .line 851
    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 852
    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget-object v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 855
    :cond_35
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v2, v5

    const/16 v5, 0xff

    move/from16 v22, v4

    move v4, v2

    move/from16 v2, v22

    .line 857
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    .line 858
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2360
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2363
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBubbles(Landroid/graphics/Canvas;)V
    .locals 9

    .line 862
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    div-float v6, v0, v2

    .line 863
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    mul-float v5, v0, v6

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    mul-float v7, v0, v6

    .line 864
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/16 v0, 0xff

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v8, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 865
    :goto_1
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    return-void
.end method

.method public expandSize()F
    .locals 2

    .line 2472
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;
    .locals 1

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-object v0
.end method

.method public getHintTextWidth()I
    .locals 1

    .line 1467
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    return v0
.end method

.method public getItemsCount()I
    .locals 2

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPullingLeftProgress()F
    .locals 3

    .line 1022
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    return-object v0
.end method

.method public getSelectedEmoji()Ljava/lang/String;
    .locals 5

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    const-string v0, ""

    return-object v0

    .line 1189
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1190
    iget-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1191
    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1193
    invoke-static {v1, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1196
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 1199
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1200
    const-string/jumbo v0, "\ud83d\udc4d"

    return-object v0

    :cond_3
    return-object v4
.end method

.method public getSelectedReactions()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTopOffset()F
    .locals 1

    .line 1695
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalWidth()I
    .locals 3

    .line 1456
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getItemsCount()I

    move-result v0

    .line 1458
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    if-nez v1, :cond_0

    .line 1459
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 1461
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getVisibleReactionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    return-object v0
.end method

.method public getWindowType()I
    .locals 2

    .line 458
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0xd

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb

    return v0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/16 v0, 0xe

    return v0

    .line 467
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public getWindowView()Landroid/view/View;
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public invalidateLoopViews()V
    .locals 3

    const/4 v0, 0x0

    .line 532
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 534
    instance-of v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v2, :cond_0

    .line 535
    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    return v0
.end method

.method public measureHint()V
    .locals 12

    .line 1656
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintMeasured:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/high16 v0, 0x43a00000    # 320.0f

    .line 1658
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1659
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1660
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewHeight:I

    const/4 v0, 0x0

    .line 1661
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    move v1, v0

    .line 1662
    :goto_0
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1663
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1665
    :cond_1
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1666
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v7

    .line 1667
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1668
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewHeight:I

    .line 1669
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    move v1, v0

    .line 1670
    :goto_1
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1671
    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewWidth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1673
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v4, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2

    .line 1676
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    :goto_2
    const/high16 v0, 0x41a00000    # 20.0f

    .line 1679
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintViewHeight:I

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1680
    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    goto :goto_3

    .line 1683
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 1681
    :cond_5
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 1685
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1687
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintMeasured:Z

    :cond_6
    :goto_5
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2324
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2325
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2326
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2327
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2328
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method public onCustomEmojiWindowClosing()V
    .locals 1

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1553
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1555
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1557
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1559
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCustomEmojiWindowOpened()V
    .locals 1

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1543
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1547
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2334
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2335
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2336
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2337
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2338
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 2

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1491
    invoke-interface {v0, p1, p2, p3, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    .line 1493
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    const/4 p1, 0x3

    .line 1495
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected onShownCustomEmojiReactionDialog()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1027
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1028
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateShaders()V

    return-void
.end method

.method public prepareAnimation(Z)V
    .locals 0

    .line 1503
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation:Z

    .line 1504
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 1602
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    const/4 v0, 0x0

    .line 1603
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    const/4 v1, 0x0

    .line 1604
    iput v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    .line 1605
    iput v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v1, 0x0

    .line 1606
    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1607
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1627
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 2368
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 2369
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 2370
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2371
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_0

    .line 2372
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 2373
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2377
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setBubbleOffset(F)V
    .locals 0

    .line 1699
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    return-void
.end method

.method public setChatScrimView(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V
    .locals 0

    .line 1586
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 0

    .line 1594
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    return-void
.end method

.method public setCustomEmojiEnterProgress(F)V
    .locals 2

    .line 1475
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 1477
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setPopupAlpha(F)V

    .line 1479
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomEmojiReactionsBackground(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1509
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1511
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 10

    const/4 v0, 0x1

    .line 1631
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    .line 1632
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1633
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    .line 1634
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v4, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1635
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1636
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1637
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v1, v0, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1641
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1638
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1639
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1643
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1644
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1646
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintMeasured:Z

    .line 1649
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1650
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .locals 11

    .line 1052
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1054
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 1056
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_reactionPaid;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 1061
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatMaxUniqReactions(J)I

    move-result v1

    if-lt v3, v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hitLimit:Z

    .line 1062
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->channelReactions:Z

    .line 1064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x4

    if-eqz p1, :cond_5

    .line 1065
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1066
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {p2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-nez p2, :cond_5

    .line 1068
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide p2

    neg-long p2, p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->waitingLoadingChatId:J

    .line 1069
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {p2, v4, v5, v0, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 1070
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1074
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasStar:Z

    .line 1075
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 1076
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1077
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_7

    .line 1079
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1080
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    goto/16 :goto_6

    .line 1081
    :cond_7
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hitLimit:Z

    if-eqz v4, :cond_9

    .line 1082
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-eqz p2, :cond_8

    .line 1083
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz p2, :cond_8

    .line 1084
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasStar:Z

    .line 1085
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->asStar()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v0

    :goto_3
    if-ge v6, v4, :cond_11

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 1088
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_10

    .line 1091
    iget-boolean v4, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v4, :cond_a

    .line 1092
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasStar:Z

    .line 1093
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->asStar()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_a
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    if-eqz v6, :cond_c

    .line 1096
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1097
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 1098
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    goto :goto_4

    .line 1100
    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1102
    :goto_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    goto :goto_6

    .line 1103
    :cond_c
    instance-of p2, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz p2, :cond_11

    .line 1104
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    .line 1105
    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v0

    :cond_d
    :goto_5
    if-ge v6, v4, :cond_11

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1106
    iget v8, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 1107
    instance-of v10, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v10, :cond_f

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    move-object v10, v7

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1108
    invoke-static {v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1110
    :cond_f
    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v9, :cond_e

    .line 1111
    invoke-static {v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1118
    :cond_10
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1119
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    .line 1121
    :cond_11
    :goto_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->filterReactions(Ljava/util/List;)V

    .line 1122
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hitLimit:Z

    if-nez p2, :cond_14

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-nez p2, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/16 v4, 0x10

    if-gt p2, v4, :cond_13

    :cond_12
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-eqz p2, :cond_14

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_14

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-eqz p2, :cond_14

    :cond_13
    move p2, v2

    goto :goto_7

    :cond_14
    move p2, v0

    :goto_7
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    .line 1123
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne p2, v5, :cond_15

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_15

    .line 1124
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    .line 1126
    :cond_15
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne p2, v3, :cond_16

    .line 1127
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    .line 1129
    :cond_16
    invoke-direct {p0, v1, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setVisibleReactionsList(Ljava/util/List;Z)V

    if-eqz p1, :cond_18

    .line 1131
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz p2, :cond_18

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz p2, :cond_18

    .line 1132
    :goto_8
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_18

    .line 1133
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz p2, :cond_17

    .line 1134
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object p3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public setMiniBubblesOffset(F)V
    .locals 0

    .line 914
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->miniBubblesOffset:F

    return-void
.end method

.method public setMirrorX(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnSwitchedToLoopView(Ljava/lang/Runnable;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onSwitchedToLoopView:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentLayout(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    return-void
.end method

.method public setPaused(ZZ)V
    .locals 1

    .line 2598
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->paused:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2599
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->paused:Z

    .line 2600
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pausedExceptSelected:Z

    .line 2601
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2602
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->paused:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pausedExceptSelected:Z

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setPaused(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectedEmojis(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1256
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 1257
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1259
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->alwaysSelectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1263
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->updateSelected(Z)V

    return-void
.end method

.method public setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 1

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    .line 1162
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->updateSelected(Z)V

    return-void
.end method

.method public setSelectedReactionInclusive(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    .line 1251
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->updateSelected(Z)V

    return-void
.end method

.method public setSelectedReactions(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 1167
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1168
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 1169
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move v3, v0

    .line 1170
    :goto_1
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1171
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v4, :cond_0

    .line 1172
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1177
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedReactionsInclusive(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getInclusiveReactions(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 1243
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->updateSelected(Z)V

    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 4

    .line 1518
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-eq v0, p1, :cond_4

    .line 1519
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    move v0, p1

    .line 1521
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1522
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_2

    .line 1523
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 1524
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1525
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->shouldSwitchToLoopView:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1528
    iput-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 1531
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1535
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    .line 1142
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p1, :cond_0

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .line 1691
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 2

    .line 1044
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v0, :cond_1

    .line 1046
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePopup:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allowSmoothEnterTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setReactionsTransitionProgress(F)V

    .line 1048
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 2382
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2383
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public showCustomEmojiReaction()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

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

.method public showExpandableReactions()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    return v0
.end method

.method public startEnterAnimation(Z)V
    .locals 4

    .line 1433
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePopup:Z

    const/4 p1, 0x0

    .line 1434
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1435
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    .line 1436
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1438
    invoke-static {}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allowSmoothEnterTransition()Z

    move-result p1

    const/4 v0, 0x2

    const/high16 v1, 0x3f000000    # 0.5f

    const-wide/16 v2, 0xfa

    if-eqz p1, :cond_0

    .line 1439
    sget-object p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1440
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 1442
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1443
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1445
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$7;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1452
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
