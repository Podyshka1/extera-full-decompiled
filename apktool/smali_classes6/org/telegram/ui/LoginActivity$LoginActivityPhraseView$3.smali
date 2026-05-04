.class Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;
.super Lorg/telegram/ui/LoginActivity$LoadingTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 9401
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;->val$this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoadingTextView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isResendingCode()Z
    .locals 1

    .line 9404
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->-$$Nest$fgetisResendingCode(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Z

    move-result v0

    return v0
.end method

.method protected isRippleEnabled()Z
    .locals 1

    .line 9408
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->-$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->-$$Nest$fgettimeTimer(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
