.class Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    .line 6319
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x0

    .line 6322
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    .line 6323
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    .line 6324
    aget-object p2, p3, p2

    check-cast p2, Landroid/content/Intent;

    .line 6325
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_0

    .line 6329
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-static {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    const-class p3, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->-$$Nest$fputgoogleAccount(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 6330
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->onNextPressed(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6332
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
