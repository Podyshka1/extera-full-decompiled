.class public abstract Landroidx/recyclerview/widget/ChatListItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;,
        Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final activity:Lorg/telegram/ui/ChatActivity;

.field alphaEnterDelay:J

.field animators:Ljava/util/HashMap;

.field private chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

.field private getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

.field private greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field groupIdToEnterDelay:Ljava/util/HashMap;

.field private final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private reversePositions:Z

.field runOnAnimationsEnd:Ljava/util/ArrayList;

.field private shouldAnimateEnterFromBottom:Z

.field private supportsThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

.field thanosViews:Ljava/util/ArrayList;

.field private final toBeSnapped:Ljava/util/ArrayList;

.field private willChangedGroups:Ljava/util/ArrayList;

.field private willRemovedGroup:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$FBXPwnxBw-HzEwANDozv1cOm6AU(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 950
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    .line 951
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$KbxCrKnHJmMtgf00BJ3KTcoIZDE(Lorg/telegram/ui/Cells/ChatMessageCell;FFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1456
    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    .line 1457
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput p9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 1458
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1459
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 1461
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    sub-float/2addr v1, p9

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    mul-float/2addr p4, v1

    add-float/2addr p3, p4

    mul-float/2addr p5, v1

    mul-float/2addr p6, p9

    add-float/2addr p5, p6

    mul-float/2addr p7, v1

    mul-float/2addr p8, p9

    add-float/2addr p7, p8

    invoke-virtual {v0, p1, p3, p5, p7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1466
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$YYecdgGZNsi0ivRcwpVm6roqNgs(Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;ZFFLorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 924
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    .line 925
    iget v0, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetTop:I

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    .line 926
    iget v0, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    .line 927
    iget v0, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetLeft:I

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    .line 928
    iget p1, p1, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetRight:I

    int-to-float p1, p1

    mul-float/2addr p1, p6

    iput p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    if-eqz p2, :cond_0

    mul-float/2addr p3, p6

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p6

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    .line 930
    iput p3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    :cond_0
    if-eqz p5, :cond_1

    .line 933
    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ZhmpZs-u8pZI6IPqdJ0RRLbxS2o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 246
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$_2wsYLN-OJFHCLdCam-OD89maqw(Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;Lorg/telegram/ui/Cells/ChatActionCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 974
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChangeProgress:F

    .line 975
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$a050Xr0s9dbJsKJBVsRDrJ9BCg0(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateRemoveImpl$9(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aRrFzpT1ocseHn-5PxS5FEA7rNs(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 961
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 962
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$lDq94HiZb0UHgI_UoIBk3OfUaI4(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$animateRemoveGroupImpl$10(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2tWCM9_t3HWHSWL2BYl63l1nLY(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;ZFFLorg/telegram/ui/Cells/ChatMessageCell;[ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 846
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Float;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p8

    .line 847
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p8

    mul-float/2addr v0, v1

    iget v2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    mul-float/2addr v2, p8

    add-float/2addr v0, v2

    .line 848
    iget v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    mul-float/2addr v2, v1

    iget v3, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    mul-float/2addr v3, p8

    add-float/2addr v2, v3

    .line 849
    iget v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    mul-float/2addr v3, v1

    iget v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    mul-float/2addr v4, p8

    add-float/2addr v3, v4

    .line 850
    iget p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    mul-float/2addr p0, v1

    iget v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    mul-float/2addr v4, p8

    add-float/2addr p0, v4

    if-eqz p2, :cond_0

    mul-float/2addr p3, v1

    mul-float/2addr p4, p8

    add-float/2addr p3, p4

    .line 854
    iput p3, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    .line 855
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 856
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput p3, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 861
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz p2, :cond_1

    .line 862
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p3, 0x0

    aget p4, p6, p3

    int-to-float p4, p4

    mul-float/2addr p4, v1

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    aget p3, p1, p3

    int-to-float p3, p3

    mul-float/2addr p3, p8

    add-float/2addr p4, p3

    float-to-int p3, p4

    const/4 p4, 0x1

    aget v4, p6, p4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    aget p4, p1, p4

    int-to-float p4, p4

    mul-float/2addr p4, p8

    add-float/2addr v4, p4

    float-to-int p4, v4

    const/4 v4, 0x2

    aget v5, p6, v4

    int-to-float v5, v5

    mul-float/2addr v5, v1

    aget v4, p1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p8

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x3

    aget p6, p6, v5

    int-to-float p6, p6

    mul-float/2addr p6, v1

    aget p1, p1, v5

    int-to-float p1, p1

    mul-float/2addr p1, p8

    add-float/2addr p6, p1

    float-to-int p1, p6

    invoke-virtual {p2, p3, p4, v4, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 870
    :cond_1
    invoke-virtual {p5, v0, v2, v3, p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    .line 871
    iget-object p0, p7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$qA9X7o-vu6MzHoXlAlzncqZZGW4(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 889
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 890
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    if-eqz v0, :cond_0

    .line 891
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 892
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 893
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 894
    iget p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    iput p0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    goto :goto_0

    .line 896
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 897
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 898
    iget v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 899
    iget p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p3

    sub-float/2addr p0, p3

    iput p0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 901
    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$r0rKKsnGGYYcOtcUFJa4sskaSrU(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactivity(Landroidx/recyclerview/widget/ChatListItemAnimator;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatGreetingsView(Landroidx/recyclerview/widget/ChatListItemAnimator;)Lorg/telegram/ui/Components/ChatGreetingsView;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerListView(Landroidx/recyclerview/widget/ChatListItemAnimator;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestoreTransitionParams(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v5, 0x3fd1de90faad771eL    # 0.27920937042459737

    const-wide v7, 0x3fed20cccccccccdL    # 0.91025390625

    const-wide v1, 0x3fc97f367f967398L    # 0.19919472913616398

    const-wide v3, 0x3f85ccccccccccd0L    # 0.010644531250000006

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->runOnAnimationsEnd:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupIdToEnterDelay:Ljava/util/HashMap;

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->toBeSnapped:Ljava/util/ArrayList;

    .line 72
    iput-object p3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 73
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    .line 74
    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 75
    sget-object p1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->alwaysCreateMoveAnimationIfPossible:Z

    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method private animateRemoveGroupImpl(Ljava/util/ArrayList;)V
    .locals 5

    .line 1591
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1592
    const-string v0, "animate remove group impl with thanos"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1594
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1595
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-interface {v0}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThanosEffect;

    const/4 v1, 0x0

    move v2, v1

    .line 1596
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1597
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1599
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 1600
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1601
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1603
    :cond_2
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v2, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda9;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect;->animateGroup(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 1615
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    return-void
.end method

.method private cancelAnimators()V
    .locals 4

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1171
    iget-object v1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 1174
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 1177
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1178
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-interface {v0}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_2

    .line 1180
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThanosEffect;->kill()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$animateRemoveGroupImpl$10(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1604
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1605
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1607
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1608
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1609
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1611
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 1613
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$animateRemoveImpl$9(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1556
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1559
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 1561
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->onListItemAnimatorTick()V

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private restoreTransitionParams(Landroid/view/View;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1202
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1203
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1204
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1206
    instance-of v1, p1, Lorg/telegram/ui/Cells/BotHelpCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1207
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 1208
    iget-object v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 1209
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setAnimating(Z)V

    .line 1210
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1211
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1213
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1215
    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Cells/UserInfoCell;

    if-eqz v1, :cond_3

    .line 1216
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/UserInfoCell;

    .line 1217
    iget-object v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 1218
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/UserInfoCell;->setAnimating(Z)V

    .line 1219
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 1220
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1222
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1224
    :cond_3
    instance-of v1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_4

    .line 1225
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->resetAnimation()V

    .line 1226
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    return-void

    .line 1227
    :cond_4
    instance-of v1, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_5

    .line 1228
    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->resetAnimation()V

    return-void

    .line 1230
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private runAlphaEnterTransition()V
    .locals 15

    .line 129
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 130
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 131
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 132
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    goto/16 :goto_b

    .line 139
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->supportsThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    const-wide/16 v7, 0x0

    if-eqz v4, :cond_9

    const/4 v9, 0x0

    move v10, v6

    .line 142
    :goto_1
    iget-object v11, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 143
    iget-object v11, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 144
    iget-object v12, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->toBeSnapped:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v13, v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_4

    check-cast v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 145
    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 146
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-eqz v13, :cond_4

    if-nez v9, :cond_2

    .line 148
    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    .line 150
    :cond_2
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-nez v13, :cond_3

    .line 152
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v13, v14

    .line 154
    :cond_3
    iget-object v12, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->toBeSnapped:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v12, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    .line 157
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v10, v5

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_9

    move v10, v6

    move v11, v10

    .line 162
    :goto_2
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v10, v12, :cond_a

    .line 164
    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_6

    goto :goto_4

    .line 167
    :cond_6
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 168
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v14, v13, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v14, :cond_8

    .line 169
    check-cast v13, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 171
    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v13, v14, :cond_7

    goto :goto_3

    .line 176
    :cond_7
    iget-object v13, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 178
    :cond_8
    :goto_3
    invoke-direct {p0, v12}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateRemoveGroupImpl(Ljava/util/ArrayList;)V

    move v11, v5

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    move v11, v6

    .line 184
    :cond_a
    iget-object v9, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v12, v6

    :cond_b
    :goto_5
    if-ge v12, v10, :cond_d

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 185
    iget-object v14, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->toBeSnapped:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v4, :cond_c

    move v14, v5

    goto :goto_6

    :cond_c
    move v14, v6

    .line 186
    :goto_6
    invoke-virtual {p0, v13, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    if-eqz v14, :cond_b

    move v11, v5

    goto :goto_5

    .line 192
    :cond_d
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-nez v1, :cond_10

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 199
    new-instance v4, Landroidx/recyclerview/widget/ChatListItemAnimator$1;

    invoke-direct {v4, p0, v1, v11}, Landroidx/recyclerview/widget/ChatListItemAnimator$1;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;Z)V

    .line 209
    iget-boolean v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->delayAnimations:Z

    if-eqz v5, :cond_f

    if-nez v0, :cond_f

    .line 210
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v11, :cond_e

    move-wide v9, v7

    goto :goto_7

    .line 211
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveAnimationDelay()J

    move-result-wide v9

    :goto_7
    invoke-static {v1, v4, v9, v10}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_8

    .line 213
    :cond_f
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_10
    :goto_8
    if-nez v2, :cond_12

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 222
    new-instance v2, Landroidx/recyclerview/widget/ChatListItemAnimator$2;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$2;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;)V

    .line 232
    iget-boolean v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->delayAnimations:Z

    if-eqz v4, :cond_11

    if-nez v0, :cond_11

    .line 233
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 234
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_9

    .line 236
    :cond_11
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_12
    :goto_9
    if-nez v3, :cond_14

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 245
    iput-wide v7, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->alphaEnterDelay:J

    .line 246
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_a
    if-ge v6, v1, :cond_13

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 248
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_a

    .line 250
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_14
    :goto_b
    return-void
.end method

.method private runMessageEnterTransition()V
    .locals 8

    .line 255
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 256
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 257
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 258
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v4, v2

    .line 265
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 266
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 267
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_1

    .line 268
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 269
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 277
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 279
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v1, :cond_5

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v0

    :goto_3
    if-ge v5, v2, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 285
    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v7, v6}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V

    goto :goto_3

    .line 287
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    if-nez v3, :cond_7

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 296
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_4

    .line 298
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 329
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 330
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 331
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 333
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1

    .line 336
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->messageEntering:Z

    .line 339
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 1398
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1399
    const-string v0, "animate add impl"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1401
    :cond_0
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1402
    iget-object v0, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v7, v0, :cond_1

    .line 1404
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1406
    :cond_1
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1408
    instance-of v0, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_3

    .line 1409
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1410
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v2

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_2

    .line 1411
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->ANIMATION_OFFSET_X:Landroid/util/Property;

    .line 1412
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v3

    new-array v4, v11, [F

    aput v3, v4, v12

    aput v14, v4, v13

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v13, [Landroid/animation/Animator;

    aput-object v2, v3, v12

    .line 1411
    invoke-virtual {v10, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1415
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1416
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1417
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1419
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1423
    :goto_0
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v9, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    .line 1425
    instance-of v0, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_9

    .line 1426
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v7, v0, :cond_5

    .line 1428
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    if-eqz v0, :cond_4

    .line 1429
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1431
    :cond_4
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1432
    move-object/from16 v16, v8

    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1433
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1434
    iget-object v4, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    .line 1435
    iget-object v5, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v5, v0

    .line 1436
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    iget-object v6, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v0, v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v0, v6

    .line 1437
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    iget-object v15, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Landroid/view/View;->getY()F

    move-result v15

    add-float/2addr v6, v15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getY()F

    move-result v15

    add-float/2addr v6, v15

    .line 1438
    iget-object v15, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v15, v15, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    move/from16 v25, v12

    .line 1439
    iget-object v12, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v12, v12, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    .line 1440
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v22

    .line 1441
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v24

    sub-float v18, v4, v0

    sub-float v20, v5, v6

    .line 1445
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v17

    .line 1446
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v19

    .line 1448
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput-boolean v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    .line 1449
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    iput-boolean v13, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 1450
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    add-float v4, v17, v18

    add-float v5, v17, v20

    invoke-virtual {v0, v4, v5, v15, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1452
    new-array v0, v11, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v21, v15

    .line 1455
    new-instance v15, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda8;

    move/from16 v23, v12

    invoke-direct/range {v15 .. v24}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;FFFFFFFF)V

    move/from16 v5, v22

    move/from16 v6, v24

    invoke-virtual {v0, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v4, v0

    .line 1468
    new-instance v0, Landroidx/recyclerview/widget/ChatListItemAnimator$10;

    move-wide/from16 v26, v2

    move-object/from16 v2, v16

    move-wide/from16 v15, v26

    move-object v12, v4

    move/from16 v3, v17

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/ChatListItemAnimator$10;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/ui/Cells/ChatMessageCell;FFFF)V

    invoke-virtual {v12, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1479
    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-wide v2, v15

    move/from16 v0, v25

    goto :goto_4

    :cond_5
    move-wide v15, v2

    move/from16 v25, v12

    .line 1481
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1484
    iget-object v2, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupIdToEnterDelay:Ljava/util/HashMap;

    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_6

    .line 1486
    iget-object v2, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupIdToEnterDelay:Ljava/util/HashMap;

    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1488
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_7
    :goto_1
    move-wide v2, v15

    :goto_2
    if-eqz v0, :cond_8

    .line 1491
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v0, :cond_8

    const-wide/16 v4, 0x8c

    .line 1492
    invoke-virtual {v10, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_8
    :goto_3
    move v0, v13

    goto :goto_4

    :cond_9
    move-wide v15, v2

    move/from16 v25, v12

    goto :goto_3

    .line 1497
    :goto_4
    invoke-virtual {v8, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1498
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v5

    new-array v6, v11, [F

    aput v5, v6, v25

    aput v9, v6, v13

    invoke-static {v8, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v13, [Landroid/animation/Animator;

    aput-object v4, v5, v25

    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v0, :cond_a

    const v0, 0x3f666666    # 0.9f

    .line 1500
    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1501
    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1502
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v4

    new-array v5, v11, [F

    aput v4, v5, v25

    aput v9, v5, v13

    invoke-static {v8, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v4, v13, [Landroid/animation/Animator;

    aput-object v0, v4, v25

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1503
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v4

    new-array v5, v11, [F

    aput v4, v5, v25

    aput v9, v5, v13

    invoke-static {v8, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v4, v13, [Landroid/animation/Animator;

    aput-object v0, v4, v25

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    .line 1505
    :cond_a
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1506
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1509
    :goto_5
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v7, v0, :cond_b

    const-wide/16 v2, 0x15e

    .line 1510
    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1511
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 1513
    :cond_b
    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v2, 0xfa

    .line 1514
    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1517
    :goto_6
    new-instance v0, Landroidx/recyclerview/widget/ChatListItemAnimator$11;

    invoke-direct {v0, v1, v7, v8}, Landroidx/recyclerview/widget/ChatListItemAnimator$11;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1542
    iget-object v0, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 344
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 346
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float p2, p2

    .line 347
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 349
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    .line 350
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    :goto_0
    move-object v4, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_1

    .line 351
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->ignoreAlpha:Z

    if-nez p2, :cond_2

    .line 352
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 354
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_5

    if-eqz v4, :cond_5

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 355
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->canShowMessageTransition()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 357
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    .line 359
    new-instance v3, Lorg/telegram/ui/VoiceMessageEnterTransition;

    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object v7, p2, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    iget-object v8, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoiceMessageEnterTransition;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 360
    invoke-virtual {v3}, Lorg/telegram/ui/VoiceMessageEnterTransition;->start()V

    goto :goto_2

    .line 363
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    .line 364
    new-instance v3, Lorg/telegram/ui/TextMessageEnterTransition;

    iget-object v5, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    iget-object v6, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v5, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    iget-object v8, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/TextMessageEnterTransition;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 365
    invoke-virtual {v3}, Lorg/telegram/ui/TextMessageEnterTransition;->start()V

    .line 368
    :cond_4
    :goto_2
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->startMessageTransition()V

    :cond_5
    const/4 p2, 0x0

    .line 371
    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveDuration()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    .line 372
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Landroidx/recyclerview/widget/ChatListItemAnimator$3;

    invoke-direct {v2, p0, p1, v0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$3;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 373
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 2

    .line 304
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 305
    iget-boolean p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    .line 307
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 309
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move p3, p2

    move v0, p3

    .line 315
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 316
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 320
    :cond_3
    :goto_2
    iget-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 321
    iget-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float v1, v0

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return p1
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 8

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 1031
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 1034
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p3, :cond_1

    .line 1035
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result p1

    goto :goto_0

    .line 1037
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 1039
    :goto_0
    iget-object p3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    .line 1040
    iget-object p4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p4

    .line 1041
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p6, v5, v3

    int-to-float p5, p6

    sub-float/2addr p5, p1

    float-to-int p5, p5

    sub-int p7, v6, v4

    int-to-float p6, p7

    sub-float/2addr p6, p3

    float-to-int p6, p6

    .line 1045
    iget-object p7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, p7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_2

    .line 1046
    check-cast p7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p7, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    goto :goto_1

    .line 1048
    :cond_2
    invoke-virtual {p7, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1050
    :goto_1
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 1051
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_4

    .line 1054
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1055
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p3, :cond_3

    .line 1056
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    neg-int p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    goto :goto_2

    :cond_3
    neg-int p3, p5

    int-to-float p3, p3

    .line 1058
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 1060
    :goto_2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int p3, p6

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 1061
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1063
    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object v2, v1

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    const/4 p1, 0x1

    return p1
.end method

.method public animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 6

    .line 1069
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1071
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 1072
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1074
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1075
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getChangeDuration()J

    move-result-wide v4

    .line 1074
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1076
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    iget v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1078
    iget v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1079
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroidx/recyclerview/widget/ChatListItemAnimator$8;

    invoke-direct {v5, p0, p1, v3, v0}, Landroidx/recyclerview/widget/ChatListItemAnimator$8;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v1, :cond_3

    .line 1105
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1106
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1108
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$9;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$9;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1132
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 22

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    .line 443
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 446
    instance-of v0, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 447
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 448
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v3

    float-to-int v3, v3

    add-int v3, p3, v3

    .line 449
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTopOffset:I

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTopMediaOffset()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 450
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTopOffset:I

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTopMediaOffset()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v4, p4, v4

    :goto_0
    move-object v9, v0

    move-object v10, v1

    goto :goto_1

    :cond_0
    move/from16 v4, p4

    goto :goto_0

    .line 452
    :cond_1
    instance-of v0, v8, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_2

    .line 453
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 454
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    add-int v3, p3, v3

    move/from16 v4, p4

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    .line 456
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v3, p3, v0

    move/from16 v4, p4

    move-object v9, v1

    move-object v10, v9

    .line 458
    :goto_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v4, v0

    const/4 v11, 0x4

    .line 463
    new-array v12, v11, [I

    if-eqz v9, :cond_4

    .line 465
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    .line 466
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    .line 467
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    .line 468
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v11, :cond_3

    .line 470
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v16

    aget v16, v16, v15

    aput v16, v12, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move v15, v0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 473
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v0, p5, v3

    const/16 p3, 0x0

    sub-int v13, p6, v4

    if-eqz v13, :cond_5

    neg-int v11, v13

    int-to-float v11, v11

    .line 477
    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    move v11, v0

    .line 480
    new-instance v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

    move/from16 v17, v5

    move/from16 v18, v6

    move v14, v11

    const/16 v16, 0x0

    move/from16 v5, p5

    move/from16 v6, p6

    move v11, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    const/4 v3, 0x1

    if-eqz v9, :cond_2e

    .line 483
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v4

    .line 485
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->supportChangeAnimation()Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v14, :cond_6

    if-nez v13, :cond_6

    .line 487
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return v16

    :cond_6
    if-eqz v14, :cond_7

    neg-int v2, v14

    int-to-float v2, v2

    .line 491
    invoke-virtual {v8, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 493
    :cond_7
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    return v3

    .line 498
    :cond_8
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v14, :cond_9

    neg-int v6, v14

    int-to-float v6, v6

    .line 501
    invoke-virtual {v9, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    .line 504
    :cond_9
    instance-of v6, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    if-eqz v6, :cond_1a

    .line 505
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    .line 506
    check-cast v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    .line 507
    iget-boolean v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v10, :cond_a

    iget v10, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    cmpl-float v10, v10, p3

    if-eqz v10, :cond_a

    iget v10, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    cmpl-float v10, v10, p3

    if-eqz v10, :cond_a

    move v10, v3

    goto :goto_4

    :cond_a
    move/from16 v10, v16

    :goto_4
    iput-boolean v10, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    if-eqz v10, :cond_13

    .line 509
    iget-object v10, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v8, v16

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 510
    iget-object v8, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 512
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    .line 513
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 514
    iput v15, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    .line 515
    iput v11, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    move/from16 v8, v17

    .line 516
    iput v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    move/from16 v8, v18

    .line 517
    iput v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    .line 518
    iput-object v12, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    :goto_5
    const/4 v8, 0x0

    goto :goto_6

    .line 520
    :cond_b
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v8

    iput v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    .line 521
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v8

    iput v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    .line 522
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v8

    iput v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    .line 523
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v8

    iput v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    .line 524
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v8

    iput-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    goto :goto_5

    .line 527
    :goto_6
    iput-boolean v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    const/4 v8, 0x0

    :goto_7
    const/4 v10, 0x4

    if-ge v8, v10, :cond_d

    .line 529
    iget-object v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    aget v10, v10, v8

    iget-object v11, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    aget v11, v11, v8

    if-eq v10, v11, :cond_c

    .line 530
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    goto :goto_8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 534
    :cond_d
    :goto_8
    iget v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    iget v10, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageX:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_e

    iget v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    iget v11, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_e

    iget v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    iget v11, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_e

    iget v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    iget v11, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_e

    iget-boolean v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-nez v8, :cond_e

    const/4 v8, 0x0

    .line 536
    iput-boolean v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    .line 537
    iput-boolean v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    goto :goto_b

    .line 539
    :cond_e
    iput v10, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    .line 540
    iget v8, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    iput v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    .line 541
    iget v8, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    iput v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    .line 542
    iget v7, v7, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    iput v7, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    if-eqz v5, :cond_10

    .line 544
    iget-boolean v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eq v7, v10, :cond_10

    if-eqz v10, :cond_f

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_f
    move/from16 v7, p3

    .line 545
    :goto_9
    iput v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 547
    :cond_10
    iget-boolean v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz v7, :cond_12

    .line 548
    iget-object v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v8

    if-ne v7, v8, :cond_11

    const/4 v10, 0x4

    .line 549
    new-array v7, v10, [I

    iput-object v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v10, :cond_11

    .line 551
    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v11

    aget v11, v11, v7

    aput v11, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 554
    :cond_11
    iget-object v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 556
    :cond_12
    iget v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    iget v7, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    iget v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    iget v10, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    invoke-virtual {v9, v6, v7, v8, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    :cond_13
    :goto_b
    if-nez v5, :cond_1a

    .line 560
    iget-boolean v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v6, :cond_1a

    .line 561
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 562
    iget-object v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v8

    if-ne v7, v8, :cond_15

    :cond_14
    if-nez v6, :cond_16

    iget-object v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 563
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v8

    if-eq v7, v8, :cond_16

    :cond_15
    move v7, v3

    goto :goto_c

    :cond_16
    const/4 v7, 0x0

    :goto_c
    if-nez v7, :cond_17

    .line 564
    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 565
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v10

    if-ne v8, v10, :cond_17

    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 566
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v10

    if-eq v8, v10, :cond_1a

    .line 567
    :cond_17
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v8

    iget-object v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v10

    iput v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    .line 568
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v8

    iget-object v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    iput v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    .line 569
    iget-boolean v8, v9, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    iget-boolean v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    if-eq v8, v10, :cond_18

    .line 570
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v6

    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iput v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    .line 571
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v6

    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    iput v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    goto :goto_d

    :cond_18
    if-eqz v6, :cond_19

    .line 573
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v6

    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iput v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    goto :goto_d

    .line 575
    :cond_19
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v6

    iget-object v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    iput v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    .line 577
    :goto_d
    iput-boolean v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    .line 579
    iput-boolean v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    .line 580
    iput-boolean v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundWidth:Z

    .line 581
    iget v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 582
    iget v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 583
    iget v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 584
    iget v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 586
    iget-object v6, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 587
    iget-object v6, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_1a
    if-eqz v5, :cond_29

    .line 593
    iget-object v6, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 594
    iget-object v6, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 595
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/RecyclerListView;

    .line 602
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    move/from16 v19, v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 604
    :goto_e
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v8, v3, :cond_26

    .line 605
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move/from16 v17, v8

    .line 607
    instance-of v8, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_24

    .line 608
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 609
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v8

    if-ne v8, v5, :cond_24

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v8, :cond_24

    .line 611
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v18

    add-int v8, v8, v18

    .line 612
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v18

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v20

    move-object/from16 p2, v3

    add-int v3, v18, v20

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    add-int v18, v18, v20

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v20

    move-object/from16 p6, v5

    add-int v5, v18, v20

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    add-int v18, v18, v20

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v20

    move-object/from16 v21, v9

    add-int v9, v18, v20

    if-eqz v12, :cond_1b

    if-ge v8, v12, :cond_1c

    :cond_1b
    move v12, v8

    :cond_1c
    if-eqz v15, :cond_1d

    if-le v3, v15, :cond_1e

    :cond_1d
    move v15, v3

    .line 624
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-nez v3, :cond_1f

    iget-boolean v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    if-eqz v3, :cond_25

    :cond_1f
    if-eqz v10, :cond_20

    if-ge v5, v10, :cond_21

    :cond_20
    move v10, v5

    :cond_21
    if-eqz v11, :cond_23

    if-le v9, v11, :cond_22

    goto :goto_10

    :cond_22
    :goto_f
    const/16 v19, 0x0

    goto :goto_11

    :cond_23
    :goto_10
    move v11, v9

    goto :goto_f

    :cond_24
    move-object/from16 p6, v5

    move-object/from16 v21, v9

    :cond_25
    :goto_11
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v5, p6

    move-object/from16 v9, v21

    goto/16 :goto_e

    :cond_26
    move-object/from16 v21, v9

    const/4 v8, 0x0

    .line 638
    iput-boolean v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    if-nez v10, :cond_27

    if-nez v11, :cond_27

    if-nez v12, :cond_27

    if-nez v15, :cond_27

    .line 641
    iput-boolean v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    .line 642
    iput-boolean v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    :goto_12
    move/from16 v3, v19

    goto :goto_14

    :cond_27
    neg-int v3, v10

    .line 644
    iget v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetTop:I

    neg-int v5, v11

    .line 645
    iget v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    add-int/2addr v5, v8

    iput v5, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetBottom:I

    neg-int v8, v12

    .line 646
    iget v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    add-int/2addr v8, v9

    iput v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetLeft:I

    neg-int v9, v15

    .line 647
    iget v10, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    add-int/2addr v9, v10

    iput v9, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->groupOffsetRight:I

    const/4 v10, 0x1

    .line 649
    iput-boolean v10, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    .line 650
    iput-boolean v10, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    int-to-float v3, v3

    .line 651
    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    int-to-float v3, v5

    .line 652
    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    int-to-float v3, v8

    .line 653
    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    int-to-float v3, v9

    .line 654
    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    .line 656
    iget-boolean v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v3, :cond_28

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_28
    move/from16 v3, p3

    :goto_13
    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    const/4 v8, 0x0

    .line 658
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 659
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto :goto_12

    .line 662
    :goto_14
    iput-boolean v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    goto :goto_15

    :cond_29
    move-object/from16 v21, v9

    .line 666
    :goto_15
    iget-object v3, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v3, :cond_2b

    .line 668
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    .line 669
    iget-object v5, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v5, :cond_2a

    .line 672
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 673
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 674
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 675
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v10, 0x1

    .line 677
    iput-boolean v10, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateRemoveGroup:Z

    iput-boolean v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    .line 678
    iget v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    sub-int/2addr v5, v9

    iput v5, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    .line 679
    iget v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    sub-int/2addr v6, v9

    iput v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    .line 680
    iget v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    sub-int/2addr v7, v6

    iput v7, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    .line 681
    iget v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    sub-int/2addr v8, v3

    iput v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    const/4 v8, 0x0

    .line 682
    iput-boolean v8, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    neg-int v3, v5

    int-to-float v3, v3

    .line 684
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 685
    iget v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 686
    iget v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 687
    iget v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    const/4 v10, 0x1

    .line 688
    iput-boolean v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    .line 690
    iget-object v3, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 691
    iget-object v3, v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_16

    :cond_2a
    const/4 v10, 0x1

    .line 693
    iput-boolean v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    goto :goto_16

    :cond_2b
    const/4 v10, 0x1

    .line 696
    :goto_16
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawPinnedBottom()Z

    move-result v3

    .line 697
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->drawPinnedBottomBackground:Z

    if-eq v5, v3, :cond_2c

    .line 698
    iput-boolean v10, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animatePinnedBottom:Z

    move/from16 v3, p3

    .line 699
    iput v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    goto :goto_17

    :cond_2c
    move/from16 v3, p3

    .line 702
    :goto_17
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange()Z

    move-result v5

    iput-boolean v5, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-eqz v5, :cond_2d

    .line 704
    iput-boolean v10, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 705
    iput v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    :cond_2d
    if-nez v14, :cond_38

    if-nez v13, :cond_38

    .line 708
    iget-boolean v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    if-nez v3, :cond_38

    iget-boolean v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateRemoveGroup:Z

    if-nez v3, :cond_38

    iget-boolean v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    if-nez v3, :cond_38

    iget-boolean v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animatePinnedBottom:Z

    if-nez v3, :cond_38

    iget-boolean v3, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    if-nez v3, :cond_38

    if-nez v5, :cond_38

    .line 709
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_18
    const/16 v16, 0x0

    return v16

    :cond_2e
    if-eqz v10, :cond_34

    .line 713
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    move-result-object v3

    .line 715
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->supportChangeAnimation()Z

    move-result v4

    if-nez v4, :cond_31

    if-nez v14, :cond_2f

    if-nez v13, :cond_2f

    .line 717
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_18

    :cond_2f
    if-eqz v14, :cond_30

    neg-int v2, v14

    int-to-float v2, v2

    .line 721
    invoke-virtual {v8, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 723
    :cond_30
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    :goto_19
    const/4 v10, 0x1

    return v10

    :cond_31
    const/4 v10, 0x1

    if-eqz v14, :cond_32

    neg-int v4, v14

    int-to-float v4, v4

    .line 729
    invoke-virtual {v8, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 732
    :cond_32
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange()Z

    move-result v4

    iput-boolean v4, v0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-eqz v4, :cond_33

    .line 734
    iput-boolean v10, v3, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange:Z

    const/4 v5, 0x0

    .line 735
    iput v5, v3, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChangeProgress:F

    :cond_33
    if-nez v14, :cond_38

    if-nez v13, :cond_38

    if-nez v4, :cond_38

    .line 739
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_18

    .line 742
    :cond_34
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v4, :cond_35

    .line 743
    check-cast v3, Lorg/telegram/ui/Cells/BotHelpCell;

    const/4 v10, 0x1

    .line 744
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/BotHelpCell;->setAnimating(Z)V

    goto :goto_1a

    :cond_35
    const/4 v10, 0x1

    .line 745
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserInfoCell;

    if-eqz v4, :cond_36

    .line 746
    check-cast v3, Lorg/telegram/ui/Cells/UserInfoCell;

    .line 747
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/UserInfoCell;->setAnimating(Z)V

    goto :goto_1a

    :cond_36
    if-nez v14, :cond_37

    if-nez v13, :cond_37

    .line 750
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_18

    :cond_37
    if-eqz v14, :cond_38

    neg-int v2, v14

    int-to-float v2, v2

    .line 754
    invoke-virtual {v8, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 758
    :cond_38
    :goto_1a
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    goto :goto_19
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 765
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;Z)V

    return-void
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 768
    iget v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 769
    iget v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 771
    iget v3, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 772
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v11, v3, v2

    .line 775
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v11, :cond_0

    .line 778
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v14, [F

    aput v15, v3, v13

    invoke-static {v10, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v14, [Landroid/animation/Animator;

    aput-object v2, v3, v13

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 780
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

    .line 784
    iget-object v1, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->activity:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v5, :cond_1

    .line 785
    check-cast v4, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 786
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 788
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 789
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$4;

    invoke-direct {v3, v0, v4, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$4;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/ui/Cells/BotHelpCell;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 801
    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v2, v1, v13

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    move-object v2, v9

    goto/16 :goto_11

    :cond_1
    if-eqz v1, :cond_2

    .line 802
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v1, Lorg/telegram/ui/Cells/UserInfoCell;

    if-eqz v4, :cond_2

    .line 803
    check-cast v1, Lorg/telegram/ui/Cells/UserInfoCell;

    .line 804
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 806
    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 807
    new-instance v4, Landroidx/recyclerview/widget/ChatListItemAnimator$5;

    invoke-direct {v4, v0, v1, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator$5;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/ui/Cells/UserInfoCell;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 819
    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v3, v1, v13

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 820
    :cond_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_11

    .line 821
    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 822
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    .line 823
    iget-object v4, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->ANIMATION_OFFSET_X:Landroid/util/Property;

    new-array v5, v14, [F

    aput v15, v5, v13

    invoke-static {v7, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 824
    new-array v5, v14, [Landroid/animation/Animator;

    aput-object v4, v5, v13

    invoke-virtual {v12, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 826
    iget-boolean v4, v2, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateImage:Z

    if-eqz v4, :cond_8

    .line 827
    iget v4, v2, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageX:F

    iget v5, v2, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageY:F

    iget v6, v2, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageWidth:F

    iget v8, v2, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->imageHeight:F

    invoke-virtual {v7, v4, v5, v6, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    .line 828
    new-array v4, v3, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 831
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-nez v5, :cond_3

    iget v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 832
    :goto_1
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v6

    :goto_2
    int-to-float v6, v6

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    goto :goto_2

    :goto_3
    cmpl-float v8, v5, v6

    if-eqz v8, :cond_5

    move-object v8, v4

    move v4, v14

    goto :goto_4

    :cond_5
    move-object v8, v4

    move v4, v13

    .line 836
    :goto_4
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    move/from16 v17, v13

    .line 837
    new-array v13, v3, [I

    move/from16 v15, v17

    :goto_5
    if-ge v15, v3, :cond_6

    .line 839
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v19

    aget v19, v19, v15

    aput v19, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    move-object v3, v1

    goto :goto_7

    :cond_7
    move/from16 v17, v13

    const/4 v13, 0x0

    goto :goto_6

    .line 845
    :goto_7
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda1;

    move-object v15, v13

    move-object v13, v8

    move-object v8, v15

    const/4 v15, 0x2

    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;ZFFLorg/telegram/ui/Cells/ChatMessageCell;[ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    move-object v4, v1

    move-object v5, v2

    move-object v1, v7

    move-object v2, v9

    invoke-virtual {v13, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 873
    new-array v4, v14, [Landroid/animation/Animator;

    aput-object v13, v4, v17

    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_8

    :cond_8
    move-object v5, v2

    move v15, v3

    move-object v2, v9

    move/from16 v17, v13

    move-object v3, v1

    move-object v1, v7

    .line 875
    :goto_8
    iget v4, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaBottom:I

    if-nez v4, :cond_9

    iget v4, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    if-nez v4, :cond_9

    iget v4, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaTop:I

    if-nez v4, :cond_9

    iget v4, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    if-eqz v4, :cond_a

    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    .line 905
    iput v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 906
    iput v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    move/from16 v8, v17

    goto :goto_b

    .line 877
    :goto_9
    iget-object v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v7, v17

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 878
    iget-object v6, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 880
    new-array v6, v15, [F

    fill-array-data v6, :array_3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 881
    iget-boolean v7, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateBackgroundOnly:Z

    if-eqz v7, :cond_b

    .line 882
    iget v7, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 883
    iget v7, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    goto :goto_a

    .line 885
    :cond_b
    iget v7, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaLeft:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v8

    sub-float/2addr v7, v8

    iput v7, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 886
    iget v7, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->deltaRight:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v8

    sub-float/2addr v7, v8

    iput v7, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    .line 888
    :goto_a
    new-instance v7, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5, v3, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 903
    new-array v7, v14, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v12, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 909
    :goto_b
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    if-nez v6, :cond_c

    .line 911
    iput-boolean v8, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    .line 914
    :cond_c
    iget-boolean v7, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeGroupBackground:Z

    if-eqz v7, :cond_f

    .line 915
    new-array v7, v15, [F

    fill-array-data v7, :array_4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    move/from16 v18, v4

    .line 916
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    .line 917
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lorg/telegram/ui/Components/RecyclerListView;

    .line 919
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->captionEnterProgress:F

    .line 920
    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    if-eqz v6, :cond_d

    move/from16 v8, v16

    goto :goto_c

    :cond_d
    move/from16 v8, v18

    :goto_c
    cmpl-float v6, v7, v8

    if-eqz v6, :cond_e

    move v6, v14

    :goto_d
    move-object/from16 v18, v3

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    .line 923
    :goto_e
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda3;

    move-object/from16 v20, v18

    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;ZFFLorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v13, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 937
    new-instance v3, Landroidx/recyclerview/widget/ChatListItemAnimator$6;

    invoke-direct {v3, v0, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator$6;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;)V

    invoke-virtual {v13, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 944
    new-array v3, v14, [Landroid/animation/Animator;

    const/16 v17, 0x0

    aput-object v13, v3, v17

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f

    :cond_f
    move-object/from16 v20, v3

    .line 947
    :goto_f
    iget-boolean v3, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animatePinnedBottom:Z

    if-eqz v3, :cond_10

    .line 948
    new-array v3, v15, [F

    fill-array-data v3, :array_5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 949
    new-instance v4, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda4;

    move-object/from16 v6, v20

    invoke-direct {v4, v6, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 954
    new-array v4, v14, [Landroid/animation/Animator;

    const/16 v17, 0x0

    aput-object v3, v4, v17

    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_10

    :cond_10
    move-object/from16 v6, v20

    .line 957
    :goto_10
    iget-boolean v3, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-eqz v3, :cond_12

    .line 958
    new-array v3, v15, [F

    fill-array-data v3, :array_6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 959
    iput-boolean v14, v6, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 960
    new-instance v4, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda5;

    invoke-direct {v4, v6, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 964
    new-array v1, v14, [Landroid/animation/Animator;

    const/16 v17, 0x0

    aput-object v3, v1, v17

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_11

    :cond_11
    move-object v5, v2

    move v15, v3

    move-object v2, v9

    .line 966
    instance-of v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_12

    .line 967
    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 968
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    move-result-object v3

    .line 970
    iget-boolean v4, v5, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->animateChangeInternal:Z

    if-eqz v4, :cond_12

    .line 971
    new-array v4, v15, [F

    fill-array-data v4, :array_7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 972
    iput-boolean v14, v3, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange:Z

    .line 973
    new-instance v5, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda6;

    invoke-direct {v5, v3, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 977
    new-array v1, v14, [Landroid/animation/Animator;

    const/16 v17, 0x0

    aput-object v4, v1, v17

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_12
    :goto_11
    if-eqz p3, :cond_13

    .line 982
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_12

    .line 983
    :cond_13
    iget-object v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_14

    .line 984
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 986
    :cond_14
    :goto_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveDuration()J

    move-result-wide v3

    long-to-float v1, v3

    if-eqz p3, :cond_15

    const v16, 0x3ff33333    # 1.9f

    :cond_15
    mul-float v1, v1, v16

    float-to-long v3, v1

    invoke-virtual {v12, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 987
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$7;

    invoke-direct {v1, v0, v2, v11, v10}, Landroidx/recyclerview/widget/ChatListItemAnimator$7;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1021
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1022
    iget-object v1, v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 5

    .line 403
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "animate remove"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 406
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 409
    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 410
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 412
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 413
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 419
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 422
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_3

    .line 423
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    neg-int v1, v4

    int-to-float v1, v1

    .line 425
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    .line 427
    :cond_2
    instance-of v1, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    if-eqz v1, :cond_4

    .line 428
    check-cast p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    .line 429
    iget v1, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageX:F

    iget v2, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    iget v3, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    iget p2, p2, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    invoke-virtual {p1, v1, v2, v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    return v0

    :cond_3
    if-eqz v4, :cond_4

    neg-int p2, v4

    int-to-float p2, p2

    .line 433
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    return v0
.end method

.method protected animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4

    .line 1547
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animate remove impl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, " with thanos"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1550
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1551
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 1552
    iget-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz p2, :cond_2

    .line 1553
    invoke-interface {p2}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ThanosEffect;

    .line 1554
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1555
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda10;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/ThanosEffect;->animate(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1563
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1565
    :cond_2
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1566
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1567
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1568
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$12;

    invoke-direct {v1, p0, v0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator$12;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1584
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1587
    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1187
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1191
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-interface {v0}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_1

    .line 1194
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect;->cancel(Landroid/view/View;)V

    .line 1197
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1198
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    return-void
.end method

.method public endAnimations()V
    .locals 5

    .line 1236
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "end animations"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1239
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 1240
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-boolean v2, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1243
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->cancelAnimators()V

    .line 1245
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    if-eqz v0, :cond_2

    .line 1246
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/4 v0, 0x0

    .line 1248
    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1249
    iput-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    .line 1251
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1253
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 1254
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1255
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1256
    iget-object v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1257
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1259
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 1261
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1262
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1263
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1264
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1266
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 1268
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1269
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1270
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1271
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1273
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    .line 1275
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1277
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1278
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1282
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_a

    .line 1284
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1285
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_9

    .line 1287
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 1288
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1289
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1290
    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1291
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1292
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1293
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1297
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_d

    .line 1299
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1300
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_8
    if-ltz v2, :cond_c

    .line 1302
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1303
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1304
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1305
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1306
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1307
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1311
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_10

    .line 1313
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1314
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-ltz v2, :cond_f

    .line 1316
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 1317
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1318
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1322
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1323
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1324
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1325
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1327
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method protected endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 1331
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1332
    const-string v0, "end change if necessary"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1334
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->animators:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1336
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1338
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->thanosViews:Ljava/util/ArrayList;

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-interface {v0}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_2

    .line 1341
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect;->cancel(Landroid/view/View;)V

    .line 1346
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_3

    .line 1347
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 1348
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_4

    .line 1349
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 1354
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->restoreTransitionParams(Landroid/view/View;)V

    .line 1355
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_4
    return v3
.end method

.method public getChangeDuration()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method protected getMoveAnimationDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1368
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1369
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-boolean v1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    return-void

    .line 1371
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-nez v2, :cond_3

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-nez v2, :cond_3

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-nez v2, :cond_3

    iget v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-nez v0, :cond_3

    .line 1372
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1374
    iget-object v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1375
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    .line 1376
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1377
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 1378
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1379
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 1380
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 1381
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 1382
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 1383
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    .line 1384
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 1385
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 1386
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->isNewGroup:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1392
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willChangedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public groupWillTransformToSingleMessage(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V
    .locals 3

    .line 1361
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemovedGroup:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 2

    .line 1160
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onAllAnimationsDone()V

    .line 1162
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1163
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->runOnAnimationsEnd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->runOnAnimationsEnd:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1166
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->cancelAnimators()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1646
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAllAnimationsDone()V

    return-void
.end method

.method public onGreetingStickerTransition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/ChatGreetingsView;)V
    .locals 0

    .line 1669
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->greetingsSticker:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1670
    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->chatGreetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    const/4 p1, 0x0

    .line 1671
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    return-void
.end method

.method public prepareThanos(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1720
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->toBeSnapped:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 1722
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1724
    iput-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->deletedByThanos:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0

    .line 1139
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    .line 1140
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p3, :cond_0

    .line 1141
    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1142
    new-instance p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;)V

    .line 1143
    iget p4, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iput p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 1144
    iget p4, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iput p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 1145
    iget p4, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    iput p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 1146
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 1148
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    .line 1149
    iget p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageX:F

    iput p2, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageX:F

    .line 1150
    iget p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageY:F

    iput p2, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageY:F

    .line 1151
    iget p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageW:F

    iput p2, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageWidth:F

    .line 1152
    iget p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageH:F

    iput p1, p3, Landroidx/recyclerview/widget/ChatListItemAnimator$ItemHolderInfoExtended;->imageHeight:F

    return-object p3

    :cond_0
    return-object p1
.end method

.method public runPendingAnimations()V
    .locals 6

    .line 82
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 83
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 84
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 85
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    return-void

    .line 91
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move v0, v1

    move v2, v0

    .line 92
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 93
    iget-boolean v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->reversePositions:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    .line 95
    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    sub-int/2addr v3, v4

    if-ne v5, v3, :cond_3

    goto :goto_2

    .line 99
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    move v2, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 106
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAnimationStart()V

    if-eqz v1, :cond_6

    .line 109
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->runMessageEnterTransition()V

    goto :goto_3

    .line 111
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->runAlphaEnterTransition()V

    :goto_3
    const/4 v0, 0x2

    .line 114
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 115
    new-instance v1, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/ChatListItemAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->getMoveDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 123
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setOnSnapMessage(Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 0

    .line 1735
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->supportsThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    .line 1736
    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->getThanosEffectContainer:Lorg/telegram/messenger/Utilities$Callback0Return;

    return-void
.end method

.method public setReversePositions(Z)V
    .locals 0

    .line 1675
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->reversePositions:Z

    return-void
.end method

.method public setShouldAnimateEnterFromBottom(Z)V
    .locals 0

    .line 1620
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    return-void
.end method

.method public willAddedFromAlpha(Landroid/view/View;)Z
    .locals 2

    .line 1658
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->shouldAnimateEnterFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1661
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1663
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public willRemoved(Landroid/view/View;)Z
    .locals 2

    .line 1650
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1652
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
