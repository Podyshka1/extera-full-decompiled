.class public final Lokhttp3/internal/connection/ReusePlan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;


# instance fields
.field private final connection:Lokhttp3/internal/connection/RealConnection;

.field private final isReady:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnection;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lokhttp3/internal/connection/ReusePlan;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lokhttp3/internal/connection/ReusePlan;->isReady:Z

    return-void
.end method


# virtual methods
.method public cancel()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    const-string/jumbo v1, "unexpected cancel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic cancel()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->cancel()Ljava/lang/Void;

    return-void
.end method

.method public connectTcp()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic connectTcp()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->connectTcp()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object v0
.end method

.method public connectTlsEtc()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic connectTlsEtc()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->connectTlsEtc()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object v0
.end method

.method public final getConnection()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 20
    iget-object v0, p0, Lokhttp3/internal/connection/ReusePlan;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public handleSuccess()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 28
    iget-object v0, p0, Lokhttp3/internal/connection/ReusePlan;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lokhttp3/internal/connection/ReusePlan;->isReady:Z

    return v0
.end method

.method public retry()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    const-string/jumbo v1, "unexpected retry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic retry()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->retry()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    return-object v0
.end method
