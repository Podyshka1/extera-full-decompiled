.class public Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;
    }
.end annotation


# instance fields
.field private account:I

.field animatingEnterChild:Ljava/util/HashSet;

.field animators:Ljava/util/ArrayList;

.field attachToParent:Z

.field baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private cascadeAnimation:Z

.field public containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

.field private dismissProgress:F

.field private dismissed:Z

.field public drawingRect:Landroid/graphics/RectF;

.field enterTransitionFinished:Z

.field enterTransitionProgress:F

.field private frameDrawCount:I

.field fromRadius:F

.field fromRect:Landroid/graphics/RectF;

.field fromRectTranslateX:F

.field fromRectTranslateY:F

.field private invalidatePath:Z

.field isShowing:Z

.field keyboardHeight:F

.field location:[I

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onDismiss:Ljava/lang/Runnable;

.field private final pathToClipApi20:Landroid/graphics/Path;

.field reactions:Ljava/util/List;

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field public transition:Z

.field private final type:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private wasFocused:Z

.field windowManager:Landroid/view/WindowManager;

.field public windowView:Landroid/widget/FrameLayout;

.field yTranslation:F


# direct methods
.method public static synthetic $r8$lambda$-idh_mpLi2WXdNJjKnOqymGDjas(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$6oMFllDYRe1NLUqDBk0f-UeLqbA(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B-GxiiMrb-GZxc2yKUnlSQE_h6Y(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateCascadeEnter$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dzaru1lCZfay1u9LAgl0VmPOSec(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$dismiss$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J9Zz_cH5ZcsiZ6uw-vhDLiUj4Js(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$PWoK7r7T2B_9I0B5sD_mKtlbM0Q(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$3(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWqSDLsktggDYlqF1DD61Q5zOtc(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$createTransition$5(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ebjh2s034UtsfS1qxYvcXxlibXc(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateWindowPosition$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uaxEErRR8c2DWJosStVu4DFBuCY(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$removeView$7()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetframeDrawCount(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvalueAnimator(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwasFocused(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputframeDrawCount(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwasFocused(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAnimationEnd(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->checkAnimationEnd(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateLayoutParams(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBlurOffset(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)F
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getBlurOffset()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowUnlockPremiumAlert(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->showUnlockPremiumAlert()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateContainersAlpha(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateContentPosition(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContentPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWindowPosition(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateWindowPosition()V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v12, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .line 108
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    .line 90
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClipApi20:Landroid/graphics/Path;

    const/4 v14, 0x2

    .line 364
    new-array v0, v14, [I

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    .line 365
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 539
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    const/4 v15, 0x0

    .line 729
    iput v15, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    .line 109
    iput v12, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    .line 110
    iput-object v13, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactions:Ljava/util/List;

    .line 111
    iput-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v8, p6

    .line 112
    iput-object v8, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 114
    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    .line 164
    new-instance v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x5

    const/4 v4, 0x1

    if-eq v12, v14, :cond_2

    const/4 v5, 0x4

    if-eq v12, v5, :cond_2

    if-eq v12, v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_2

    :cond_1
    move v5, v15

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v4

    .line 169
    :goto_3
    iput-boolean v5, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    .line 173
    new-instance v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-direct {v5, v1, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    .line 174
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getWindowType()I

    move-result v6

    move v5, v0

    .line 175
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;

    if-eq v12, v4, :cond_3

    move v7, v4

    goto :goto_4

    :cond_3
    move v7, v15

    :goto_4
    const/16 v9, 0x10

    move v10, v4

    const/4 v4, 0x0

    move v11, v5

    const/4 v5, 0x0

    move/from16 v16, v11

    move-object/from16 v11, p2

    move v14, v10

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 235
    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 249
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v14}, Landroid/view/View;->setClipToOutline(Z)V

    .line 252
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v2, v10, Lorg/telegram/ui/Components/ReactionsContainerLayout;->paused:Z

    iget-boolean v4, v10, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pausedExceptSelected:Z

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setPaused(ZZ)V

    .line 255
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;

    invoke-direct {v2, v1, v10}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V

    .line 265
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;

    invoke-direct {v2, v1, v10}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V

    .line 271
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    .line 272
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReactions(Ljava/util/HashSet;)V

    .line 273
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDrawBackground(Z)V

    .line 274
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x5

    if-ne v12, v11, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/16 v0, 0x10

    :goto_5
    if-ne v12, v11, :cond_5

    .line 278
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 279
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 280
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 281
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 283
    :cond_5
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/4 v11, 0x5

    if-ne v12, v11, :cond_6

    const/16 v5, 0x55

    :goto_6
    move/from16 v19, v5

    goto :goto_7

    :cond_6
    const/16 v5, 0x30

    goto :goto_6

    :goto_7
    int-to-float v0, v0

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    move/from16 v21, v0

    move/from16 v22, v0

    move/from16 v20, v0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eq v12, v14, :cond_7

    .line 285
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 286
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v10}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;)V

    .line 291
    :cond_8
    iget-boolean v0, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-eqz v0, :cond_9

    .line 292
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 293
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 295
    :cond_9
    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 296
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    .line 297
    iget-object v3, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 298
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :goto_8
    iput-object v10, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 302
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setOnSwitchedToLoopView(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v10, v14}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    .line 304
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v10}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v11, 0x5

    if-eq v12, v11, :cond_a

    .line 311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v3, v4, v15

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private checkAnimationEnd(Z)V
    .locals 2

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->switchLayerType(Z)V

    .line 627
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->disableHw()V

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    if-eqz p1, :cond_1

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    .line 632
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidateViews()V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->checkInitialization()V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 636
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 637
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowOpened()V

    goto :goto_0

    .line 639
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 640
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowOpened()V

    .line 642
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resetBackgroundBitmaps()V

    .line 643
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames()V

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_1
    return-void
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 340
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    .line 341
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 342
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x3e8

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x10

    .line 343
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz p1, :cond_2

    const p1, 0x10100

    .line 345
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_2
    const p1, 0x10108

    .line 347
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2
    const/4 p1, -0x3

    .line 349
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-object v0
.end method

.method private createTransition(Z)V
    .locals 12

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRadius:F

    const/4 v1, 0x2

    .line 372
    new-array v2, v1, [I

    if-eqz p1, :cond_0

    .line 374
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    aget v4, v2, v3

    sub-int/2addr v0, v4

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v4

    add-float/2addr v0, v4

    .line 379
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v0, v0, v3

    aget v4, v2, v3

    sub-int/2addr v0, v4

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 383
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    :cond_3
    const/high16 v4, 0x41800000    # 16.0f

    .line 387
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_4

    .line 388
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 391
    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5

    .line 392
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 395
    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x4

    if-ne v6, v3, :cond_6

    .line 396
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v10, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v10, v4

    invoke-virtual {v6, v10}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_6
    if-eq v6, v1, :cond_8

    if-ne v6, v9, :cond_7

    goto :goto_1

    .line 400
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v5

    aget v10, v2, v5

    sub-int/2addr v6, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 398
    :cond_8
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v5

    aget v7, v2, v5

    sub-int/2addr v6, v7

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    if-nez p1, :cond_9

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    goto :goto_3

    .line 406
    :cond_9
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    .line 407
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 410
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v4, v4, v5

    aget v6, v2, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    .line 411
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    iput v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRectTranslateX:F

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v3

    aget v2, v2, v3

    sub-int/2addr v6, v2

    int-to-float v2, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    .line 412
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    iput v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRectTranslateY:F

    .line 410
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    if-eqz p1, :cond_b

    .line 418
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-lt v0, v1, :cond_a

    const/16 v0, 0x2008

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_4

    :cond_a
    move v0, v5

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    .line 419
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    goto :goto_5

    .line 421
    :cond_b
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    .line 423
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v0, :cond_c

    .line 424
    invoke-direct {p0, v8, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(FZ)V

    .line 426
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz p1, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_6

    :cond_d
    move v2, v5

    :goto_6
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    .line 429
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->account:I

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 432
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 434
    :cond_e
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->transition:Z

    .line 435
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v9, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    if-eqz p1, :cond_f

    move v8, v2

    :cond_f
    new-array v1, v1, [F

    aput v0, v1, v5

    aput v8, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_7

    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    if-eqz p1, :cond_11

    move v8, v2

    :cond_11
    new-array v1, v1, [F

    aput v0, v1, v5

    aput v8, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/StableAnimator;->ofFloat([F)Lorg/telegram/ui/Components/StableAnimator;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 436
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_12

    .line 452
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames()V

    .line 454
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    if-ne v0, v9, :cond_13

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_8

    .line 483
    :cond_13
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v0, :cond_14

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_8

    .line 487
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 491
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->switchLayerType(Z)V

    if-nez p1, :cond_15

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-boolean v3, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 495
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9

    .line 498
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiReactionsBackground(Z)V

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 500
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda6;-><init>(Landroid/animation/ValueAnimator;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    .line 502
    :goto_9
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    return-void
.end method

.method private getBlurOffset()F
    .locals 2

    .line 1092
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0

    .line 1095
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$createTransition$5(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 438
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 439
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    .line 440
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContentPosition()V

    .line 441
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    const/4 p2, 0x1

    .line 442
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    .line 443
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 445
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/view/View;->invalidateOutline()V

    .line 447
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz p2, :cond_0

    .line 448
    iget p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(FZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 714
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissProgress:F

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V
    .locals 1

    move v0, p3

    .line 287
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float p4, p4

    int-to-float p5, p5

    int-to-float p6, p6

    invoke-virtual {p3, v0, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object p1

    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p4

    add-float p5, p4, p7

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getBlurOffset()F

    move-result p4

    add-float p6, p4, p8

    const/16 p7, 0xff

    const/4 p8, 0x1

    const/4 p4, 0x0

    invoke-interface/range {p1 .. p8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 2

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    .line 306
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    .line 308
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    return-void
.end method

.method private synthetic lambda$removeView$7()V
    .locals 2

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 669
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 673
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 679
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$updateCascadeEnter$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 597
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 598
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 599
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 600
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateWindowPosition$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 335
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method private setScaleForChild(Landroid/view/View;F)V
    .locals 1

    .line 543
    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 544
    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setAnimatedScale(F)V

    return-void

    .line 545
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 547
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method private showUnlockPremiumAlert()V
    .locals 5

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 357
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private switchLayerType(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 526
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 527
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 528
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v1, :cond_2

    .line 529
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 530
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 531
    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 534
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private syncReactionFrames()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 650
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 651
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 653
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_0

    .line 654
    iput-boolean v0, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 655
    invoke-virtual {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCascadeEnter(FZ)V
    .locals 11

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 555
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v3, v5, :cond_3

    .line 556
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 557
    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 560
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v0

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    .line 561
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v9, v6

    if-lez v6, :cond_2

    cmpl-float v6, p1, v8

    if-eqz v6, :cond_2

    if-nez v1, :cond_1

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 568
    :cond_2
    invoke-direct {p0, v5, v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 572
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 573
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 574
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 575
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 578
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v5, v9

    .line 579
    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v5, v10

    if-gez v10, :cond_6

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_6

    cmpl-float v5, p1, v8

    if-eqz v5, :cond_6

    if-nez v1, :cond_5

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 583
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 586
    :cond_6
    invoke-direct {p0, v3, v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    move v4, v7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_8
    if-eqz v1, :cond_a

    const/4 p1, 0x2

    .line 594
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 596
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    iget p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    const-wide/16 v0, 0x1a4

    .line 614
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 615
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_9
    const-wide/16 v0, 0x15e

    .line 617
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 618
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 620
    :goto_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateContainersAlpha()V
    .locals 2

    .line 506
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateContentPosition()V
    .locals 2

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private updateWindowPosition()V
    .locals 5

    .line 320
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    const/high16 v1, 0x42000000    # 32.0f

    .line 324
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 325
    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    const/high16 v1, 0x41c00000    # 24.0f

    .line 326
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 328
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    move v0, v1

    .line 334
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 685
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowClosing()V

    .line 691
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 694
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    .line 695
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_2

    .line 696
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 2

    .line 705
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 708
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-nez p1, :cond_1

    .line 710
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 712
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 713
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 718
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 724
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 725
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissWithAlpha()V
    .locals 4

    .line 736
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    .line 740
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    .line 741
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 742
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$9;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 753
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 754
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;
    .locals 1

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method public removeView()V
    .locals 5

    .line 662
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 663
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 665
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setLongPressEnabled(Z)V

    return-void
.end method

.method public setRecentReactions(Ljava/util/List;)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    return-void
.end method
