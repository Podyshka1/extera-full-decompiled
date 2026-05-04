.class Lorg/telegram/ui/TodoItemMenu$15;
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

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Z)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$15;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iput-boolean p2, p0, Lorg/telegram/ui/TodoItemMenu$15;->val$open:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1006
    iget-object p1, p0, Lorg/telegram/ui/TodoItemMenu$15;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/TodoItemMenu$15;->val$open:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fputopenProgress2(Lorg/telegram/ui/TodoItemMenu;F)V

    return-void
.end method
