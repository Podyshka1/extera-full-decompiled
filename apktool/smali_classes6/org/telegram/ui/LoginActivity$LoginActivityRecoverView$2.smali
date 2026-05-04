.class Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 7098
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 7101
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->-$$Nest$fgetpostedErrorColorTimeout(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7102
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->-$$Nest$fgeterrorColorTimeout(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7103
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->-$$Nest$fgeterrorColorTimeout(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
