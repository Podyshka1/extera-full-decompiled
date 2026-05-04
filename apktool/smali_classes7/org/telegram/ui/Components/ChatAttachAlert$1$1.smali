.class Lorg/telegram/ui/Components/ChatAttachAlert$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$1;->onSetupMainButton(ZZLjava/lang/String;JIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Z)V
    .locals 0

    .line 467
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->val$isVisible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 486
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->val$isVisible:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotMainButtonTextView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->val$isVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 493
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 494
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->-$$Nest$fgetbotButtonAnimator(Lorg/telegram/ui/Components/ChatAttachAlert$1;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->-$$Nest$fputbotButtonAnimator(Lorg/telegram/ui/Components/ChatAttachAlert$1;Landroid/animation/ValueAnimator;)V

    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 470
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->val$isVisible:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotMainButtonTextView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotMainButtonTextView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x42100000    # 36.0f

    .line 474
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 475
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
