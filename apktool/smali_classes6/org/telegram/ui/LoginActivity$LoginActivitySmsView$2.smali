.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;
.super Lorg/telegram/ui/CodeFieldContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 3759
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/CodeFieldContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected processNextPressed()V
    .locals 2

    .line 3762
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method
