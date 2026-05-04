.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final delegate:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x5

    .line 80
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x5

    invoke-direct {p0, v3, v0, v1, v2}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 8

    const-string/jumbo v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v6, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    .line 77
    sget-object v0, Lokhttp3/internal/connection/ConnectionListener;->Companion:Lokhttp3/internal/connection/ConnectionListener$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ConnectionListener$Companion;->getNONE()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 72
    invoke-direct/range {v1 .. v7}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;)V
    .locals 8

    const-string/jumbo v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskRunner"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lokhttp3/internal/connection/RealConnectionPool;

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v2, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;)V

    .line 43
    invoke-direct {p0, v1}, Lokhttp3/ConnectionPool;-><init>(Lokhttp3/internal/connection/RealConnectionPool;)V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x5

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-wide/16 p2, 0x5

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 40
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 41
    sget-object p5, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    .line 42
    sget-object p6, Lokhttp3/internal/connection/ConnectionListener;->Companion:Lokhttp3/internal/connection/ConnectionListener$Companion;

    invoke-virtual {p6}, Lokhttp3/internal/connection/ConnectionListener$Companion;->getNONE()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object p6

    :cond_4
    move-object p7, p5

    move-object p8, p6

    move-object p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    .line 37
    invoke-direct/range {p2 .. p8}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;)V
    .locals 8

    const-string/jumbo v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v6, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v7, p5

    .line 59
    invoke-direct/range {v1 .. v7}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;)V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x5

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const-wide/16 p2, 0x5

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 57
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 58
    sget-object p5, Lokhttp3/internal/connection/ConnectionListener;->Companion:Lokhttp3/internal/connection/ConnectionListener$Companion;

    invoke-virtual {p5}, Lokhttp3/internal/connection/ConnectionListener$Companion;->getNONE()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object p5

    :cond_3
    move-object p6, p4

    move-object p7, p5

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    .line 54
    invoke-direct/range {p2 .. p7}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    return-void
.end method


# virtual methods
.method public final connectionCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->connectionCount()I

    move-result v0

    return v0
.end method

.method public final evictAll()V
    .locals 1

    .line 93
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->evictAll()V

    return-void
.end method

.method public final getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;
    .locals 1

    .line 89
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegate$okhttp()Lokhttp3/internal/connection/RealConnectionPool;
    .locals 1

    .line 35
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    return-object v0
.end method

.method public final idleConnectionCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->idleConnectionCount()I

    move-result v0

    return v0
.end method
