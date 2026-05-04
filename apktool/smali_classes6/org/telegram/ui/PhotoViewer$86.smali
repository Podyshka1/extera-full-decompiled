.class Lorg/telegram/ui/PhotoViewer$86;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0

    .line 21739
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$86;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 21782
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .line 21742
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 21745
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    .line 21746
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$86;->val$show:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 21747
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21748
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityPicker(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21749
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v1, [F

    aput v3, v6, v2

    .line 21750
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityPicker(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v6

    new-array v7, v1, [F

    aput v3, v7, v2

    .line 21751
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    .line 21749
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_1

    .line 21754
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfancyShadows(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21755
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21756
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 21757
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    const/high16 v4, -0x1000000

    goto :goto_0

    :cond_2
    const/high16 v4, 0x7f000000

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21759
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object p1

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21760
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityPicker(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21761
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v1, [F

    aput v3, v6, v2

    .line 21762
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v2

    .line 21763
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerViewSendButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v7

    new-array v8, v1, [F

    aput v3, v8, v2

    .line 21764
    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v4, v5, v2

    aput-object v6, v5, v1

    aput-object v3, v5, v0

    .line 21761
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 21767
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/PhotoViewer$86$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$86$1;-><init>(Lorg/telegram/ui/PhotoViewer$86;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21775
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 21776
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21777
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$86;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseViewAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
