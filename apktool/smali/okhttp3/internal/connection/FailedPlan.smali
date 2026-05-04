.class public final Lokhttp3/internal/connection/FailedPlan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;


# instance fields
.field private final isReady:Z

.field private final result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v2, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-void
.end method


# virtual methods
.method public cancel()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    const-string/jumbo v1, "unexpected cancel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic cancel()V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/connection/FailedPlan;->cancel()Ljava/lang/Void;

    return-void
.end method

.method public connectTcp()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 1

    .line 36
    iget-object v0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object v0
.end method

.method public connectTlsEtc()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 1

    .line 38
    iget-object v0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object v0
.end method

.method public final getResult()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 1

    .line 32
    iget-object v0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object v0
.end method

.method public handleSuccess()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    const-string/jumbo v1, "unexpected call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic handleSuccess()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/connection/FailedPlan;->handleSuccess()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lokhttp3/internal/connection/FailedPlan;->isReady:Z

    return v0
.end method

.method public retry()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    const-string/jumbo v1, "unexpected retry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic retry()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/connection/FailedPlan;->retry()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    return-object v0
.end method
