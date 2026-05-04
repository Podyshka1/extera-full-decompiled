.class public Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkSpan"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    .line 7737
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$LinkSpan;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 7746
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$LinkSpan;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$mshowTermsOfService(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 7740
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 7741
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
