.class Lorg/telegram/ui/LoginActivity$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/TransformableLoginButtonView;Ljava/lang/Runnable;)V
    .locals 0

    .line 8387
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$11;->val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$11;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8401
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardLinearLayout(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8402
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetstartMessagingButton(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8403
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8404
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetfloatingButton(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 8406
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 8407
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$11;->val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8409
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetanimationFinishCallback(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8410
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetanimationFinishCallback(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 8411
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputanimationFinishCallback(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)V

    .line 8413
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputisAnimatingIntro(Lorg/telegram/ui/LoginActivity;Z)V

    .line 8415
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 8390
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetfloatingButton(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 8391
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardLinearLayout(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8392
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8393
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetstartMessagingButton(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8395
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 8396
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$11;->val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
