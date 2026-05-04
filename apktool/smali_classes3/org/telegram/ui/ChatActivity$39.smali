.class Lorg/telegram/ui/ChatActivity$39;
.super Lorg/telegram/ui/Components/ChatActivityEnterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastContentViewHeight:I

.field messageEditTextPredrawHeigth:I

.field messageEditTextPredrawScrollY:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$Oqi0ose_P-ifttNOw7xNmtyuniI(Lorg/telegram/ui/ChatActivity$39;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$39;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lMACY4Sl7WalZ9XkLQFClubYwSo(Lorg/telegram/ui/ChatActivity$39;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$39;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7920
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 8004
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 8005
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAnimatedTop(I)V

    .line 8009
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 8010
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8012
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8013
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 8040
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    return-void
.end method


# virtual methods
.method public checkAnimation()V
    .locals 9

    .line 7976
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 7987
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v0

    .line 7988
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0xfa

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/ChatActivity$39;->lastContentViewHeight:I

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-ne v2, v8, :cond_3

    .line 7989
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    add-int/2addr v2, v8

    sub-int/2addr v2, v0

    .line 7990
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAnimatedTop(I)V

    .line 7991
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7992
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7993
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 7994
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8002
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float v2, v2

    new-array v8, v4, [F

    aput v2, v8, v1

    aput v7, v8, v3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)V

    .line 8003
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$39$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$39$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$39;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8015
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$39$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$39$1;-><init>(Lorg/telegram/ui/ChatActivity$39;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8025
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8026
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8027
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwaitingForSendingMessageLoad(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8028
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 8030
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 8031
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8032
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_0

    .line 8033
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$39;->lastContentViewHeight:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 8034
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;I)V

    .line 8036
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_6

    .line 8037
    iget v0, p0, Lorg/telegram/ui/ChatActivity$39;->messageEditTextPredrawHeigth:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/ChatActivity$39;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v2, v8

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 8038
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    .line 8039
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v0

    new-array v2, v4, [F

    aput v0, v2, v1

    aput v7, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8040
    new-instance v2, Lorg/telegram/ui/ChatActivity$39$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$39$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$39;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8041
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageEditTextAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8042
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageEditTextAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 8044
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputmessageEditTextAnimator(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)V

    .line 8045
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8047
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8048
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 8049
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 8051
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$39;->lastContentViewHeight:I

    .line 8053
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatActivityEnterViewAnimateBeforeSending(Lorg/telegram/ui/ChatActivity;Z)V

    return-void

    .line 7977
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageEditTextAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7978
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageEditTextAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 7980
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 7981
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7984
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;I)V

    .line 7985
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 7949
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7952
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public hideTopView(Z)V
    .locals 1

    .line 8073
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideTopView(Z)V

    .line 8074
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetonHideFieldPanelRunnable(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8075
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetonHideFieldPanelRunnable(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 8076
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputonHideFieldPanelRunnable(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onChangedIslandTotalHeight(F)V
    .locals 0

    .line 7928
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckUi_inputIslandHeight(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 7933
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7936
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 8059
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_1

    .line 8060
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchExpandProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8063
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 8064
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$39;->messageEditTextPredrawHeigth:I

    .line 8065
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$39;->messageEditTextPredrawScrollY:I

    .line 8066
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8067
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/ChatActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 7941
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7944
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openKeyboard()V
    .locals 1

    .line 7962
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v0, :cond_0

    return-void

    .line 7965
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return-void
.end method

.method protected pannelAnimationEnabled()Z
    .locals 1

    .line 7957
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->openAnimationEnded:Z

    return v0
.end method

.method public setVisibility(I)V
    .locals 4

    .line 7970
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 7971
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomViewsVisibilityController(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatActivityBottomViewsVisibilityController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/ui/Components/chat/ChatActivityBottomViewsVisibilityController;->setViewVisible(IZZ)V

    return-void
.end method
