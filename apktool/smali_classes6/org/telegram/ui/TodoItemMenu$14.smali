.class Lorg/telegram/ui/TodoItemMenu$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;->animateOpenTo(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;ZLjava/lang/Runnable;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$14;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iput-boolean p2, p0, Lorg/telegram/ui/TodoItemMenu$14;->val$open:Z

    iput-object p3, p0, Lorg/telegram/ui/TodoItemMenu$14;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 985
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu$14;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/TodoItemMenu$14;->val$open:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fputopenProgress(Lorg/telegram/ui/TodoItemMenu;F)V

    .line 986
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu$14;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {p1}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetwindowView(Lorg/telegram/ui/TodoItemMenu;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 987
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu$14;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {p1}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/TodoItemMenu;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 988
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu$14;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {p1}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$mupdateTranslation(Lorg/telegram/ui/TodoItemMenu;)V

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu$14;->val$after:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 990
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
