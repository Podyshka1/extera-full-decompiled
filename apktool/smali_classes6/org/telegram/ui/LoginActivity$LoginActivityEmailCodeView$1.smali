.class Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;
.super Lorg/telegram/ui/CodeFieldContainer;
.source "SourceFile"


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

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 6286
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/CodeFieldContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected processNextPressed()V
    .locals 2

    .line 6289
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method
