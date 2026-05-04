.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 37386
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    .line 37390
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 37392
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    .line 37395
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 37396
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    .line 37397
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    .line 37398
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraRect()Lorg/telegram/ui/Components/Rect;

    move-result-object v4

    .line 37399
    iget v5, v4, Lorg/telegram/ui/Components/Rect;->width:F

    div-float/2addr v3, v5

    const/4 v5, 0x2

    .line 37400
    new-array v6, v5, [I

    .line 37401
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v7

    iput-boolean v2, v7, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->ignoreAlpha:Z

    .line 37402
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAlpha(F)V

    .line 37403
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    .line 37404
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x0

    .line 37405
    aget v9, v6, v7

    int-to-float v9, v9

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v6, v7

    .line 37406
    aget v9, v6, v2

    int-to-float v9, v9

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v6, v2

    .line 37407
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraContainer()Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    move-result-object v9

    .line 37408
    invoke-virtual {v9, v8}, Landroid/view/View;->setPivotX(F)V

    .line 37409
    invoke-virtual {v9, v8}, Landroid/view/View;->setPivotY(F)V

    .line 37410
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37412
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 37414
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37415
    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v2, [F

    aput v3, v12, v7

    .line 37416
    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v2, [F

    aput v3, v13, v7

    .line 37417
    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    aget v13, v6, v2

    int-to-float v13, v13

    iget v14, v4, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v13, v14

    new-array v14, v2, [F

    aput v13, v14, v7

    .line 37418
    invoke-static {v9, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    .line 37419
    invoke-virtual {v13}, Lorg/telegram/ui/Components/InstantCameraView;->getButtonsLayout()Landroid/view/View;

    move-result-object v13

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v2, [F

    aput v8, v15, v7

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    .line 37420
    invoke-virtual {v15}, Lorg/telegram/ui/Components/InstantCameraView;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    move/from16 v16, v7

    sget-object v7, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    move/from16 v17, v8

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v8

    invoke-static {v15, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    .line 37421
    invoke-virtual {v8}, Lorg/telegram/ui/Components/InstantCameraView;->getMuteImageView()Landroid/view/View;

    move-result-object v8

    new-array v15, v2, [F

    aput v17, v15, v16

    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v14, 0x6

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v11, v14, v16

    aput-object v3, v14, v2

    aput-object v12, v14, v5

    const/4 v3, 0x3

    aput-object v13, v14, v3

    const/4 v3, 0x4

    aput-object v7, v14, v3

    const/4 v3, 0x5

    aput-object v8, v14, v3

    .line 37415
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 37423
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37424
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    aget v6, v6, v16

    int-to-float v6, v6

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v6, v4

    new-array v4, v2, [F

    aput v6, v4, v16

    invoke-static {v9, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 37425
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37427
    new-array v4, v5, [Landroid/animation/Animator;

    aput-object v3, v4, v16

    aput-object v10, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v3, 0x12c

    .line 37429
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 37431
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v3, :cond_1

    .line 37432
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/InstantCameraView;->setIsMessageTransition(Z)V

    .line 37434
    :cond_1
    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;

    invoke-direct {v3, v0, v9}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37471
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return v2
.end method
