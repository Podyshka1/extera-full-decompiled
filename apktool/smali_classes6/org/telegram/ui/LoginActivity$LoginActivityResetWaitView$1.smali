.class Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->setParams(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V
    .locals 0

    .line 5833
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5836
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->-$$Nest$fgettimeRunnable(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 5839
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->-$$Nest$mupdateTimeText(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V

    .line 5840
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->-$$Nest$fgettimeRunnable(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
