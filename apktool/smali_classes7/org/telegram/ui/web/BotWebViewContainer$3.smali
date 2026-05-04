.class Lorg/telegram/ui/web/BotWebViewContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic bottomOffsetAnimated()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$bottomOffsetAnimated(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic clipWithGradient(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$clipWithGradient(Lorg/telegram/ui/Components/Bulletin$Delegate;I)Z

    move-result p1

    return p1
.end method

.method public getBottomOffset(I)I
    .locals 2

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_0

    .line 1047
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 1048
    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic getTopOffset(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$getTopOffset(Lorg/telegram/ui/Components/Bulletin$Delegate;I)I

    move-result p1

    return p1
.end method

.method public synthetic onBottomOffsetChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onBottomOffsetChange(Lorg/telegram/ui/Components/Bulletin$Delegate;F)V

    return-void
.end method

.method public synthetic onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onHide(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public synthetic onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onShow(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method
