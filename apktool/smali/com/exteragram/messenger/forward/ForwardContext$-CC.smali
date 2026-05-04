.class public abstract synthetic Lcom/exteragram/messenger/forward/ForwardContext$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$isForwardNoQuote(Lcom/exteragram/messenger/forward/ForwardContext;)Z
    .locals 0

    .line 21
    invoke-interface {p0}, Lcom/exteragram/messenger/forward/ForwardContext;->getForwardParams()Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;

    move-result-object p0

    iget-boolean p0, p0, Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;->noQuote:Z

    return p0
.end method

.method public static $default$readForwardParams(Lcom/exteragram/messenger/forward/ForwardContext;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    const-string v0, "forward_noquote"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/exteragram/messenger/forward/ForwardContext;->setForwardParams(Z)V

    return-void
.end method

.method public static $default$setForwardParams(Lcom/exteragram/messenger/forward/ForwardContext;Z)V
    .locals 0

    .line 17
    invoke-interface {p0}, Lcom/exteragram/messenger/forward/ForwardContext;->getForwardParams()Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;

    move-result-object p0

    iput-boolean p1, p0, Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;->noQuote:Z

    return-void
.end method

.method public static $default$writeForwardParams(Lcom/exteragram/messenger/forward/ForwardContext;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    const-string v0, "forward_noquote"

    invoke-interface {p0}, Lcom/exteragram/messenger/forward/ForwardContext;->isForwardNoQuote()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
