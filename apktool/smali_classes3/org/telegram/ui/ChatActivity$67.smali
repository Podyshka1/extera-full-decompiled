.class Lorg/telegram/ui/ChatActivity$67;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createPinnedMessageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastY:F

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$TeNUD9cjLM75H_BYjJfVC8QBWA4(Lorg/telegram/ui/ChatActivity$67;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$67;->lambda$new$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 11465
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11471
    new-instance p1, Lorg/telegram/ui/ChatActivity$67$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$67$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$67;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)Z
    .locals 1

    .line 11472
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11475
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ChatActivity$67;->lastY:F

    iput p1, p0, Lorg/telegram/ui/ChatActivity$67;->startY:F

    .line 11476
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenPinnedMessagesList(Lorg/telegram/ui/ChatActivity;Z)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 11511
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedLineView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/PinnedLineView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 11512
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11513
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 11516
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageTextView(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v1

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageTextView(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 11522
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 11523
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedLineView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/PinnedLineView;

    move-result-object p4

    if-ne p2, p4, :cond_2

    .line 11524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p3

    .line 11517
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11518
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 11519
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 11520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 11498
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 11499
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsetPinnedTextTranslationX(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    move p2, p1

    .line 11500
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedNextAnimation(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 11501
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedNextAnimation(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 11502
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedNextAnimation(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11505
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsetPinnedTextTranslationX(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 11483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$67;->lastY:F

    .line 11484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11485
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    goto :goto_0

    .line 11486
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11487
    iget v0, p0, Lorg/telegram/ui/ChatActivity$67;->startY:F

    iget v1, p0, Lorg/telegram/ui/ChatActivity$67;->lastY:F

    sub-float/2addr v0, v1

    .line 11488
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 11490
    iget v0, p0, Lorg/telegram/ui/ChatActivity$67;->lastY:F

    iput v0, p0, Lorg/telegram/ui/ChatActivity$67;->startY:F

    .line 11493
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
