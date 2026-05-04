.class public final Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    .line 49
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 50
    const-string v1, "selector"

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    const-string p1, "activeScan"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureSelector()V
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_0
    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 95
    instance-of v0, p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 97
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 64
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isActiveScan()Z
    .locals 2

    .line 82
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string v1, "activeScan"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 89
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 90
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isValid()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryRequest{ selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
