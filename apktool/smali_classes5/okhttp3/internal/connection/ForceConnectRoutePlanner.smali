.class public final Lokhttp3/internal/connection/ForceConnectRoutePlanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner;


# instance fields
.field private final delegate:Lokhttp3/internal/connection/RealRoutePlanner;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealRoutePlanner;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    return-void
.end method


# virtual methods
.method public getAddress()Lokhttp3/Address;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    move-result-object v0

    return-object v0
.end method

.method public getDeferredPlans()Lkotlin/collections/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public hasNext(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/RealRoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealRoutePlanner;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public plan()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 1

    .line 24
    iget-object v0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnect$okhttp()Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v0

    return-object v0
.end method

.method public sameHostAndPort(Lokhttp3/HttpUrl;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->delegate:Lokhttp3/internal/connection/RealRoutePlanner;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/RealRoutePlanner;->sameHostAndPort(Lokhttp3/HttpUrl;)Z

    move-result p1

    return p1
.end method
