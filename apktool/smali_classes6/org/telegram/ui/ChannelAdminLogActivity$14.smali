.class Lorg/telegram/ui/ChannelAdminLogActivity$14;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 1585
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1588
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1593
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 1594
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
