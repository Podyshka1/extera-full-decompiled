.class public final Lokhttp3/internal/connection/RealConnection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/RealConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newTestConnection(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;J)Lokhttp3/internal/connection/RealConnection;
    .locals 12

    const-string/jumbo v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "route"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "socket"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    new-instance v9, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;

    invoke-direct {v9}, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;-><init>()V

    .line 446
    new-instance v1, Lokhttp3/internal/connection/RealConnection;

    .line 450
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    .line 453
    sget-object v8, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 456
    sget-object v0, Lokhttp3/internal/connection/ConnectionListener;->Companion:Lokhttp3/internal/connection/ConnectionListener$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ConnectionListener$Companion;->getNONE()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 446
    invoke-direct/range {v1 .. v11}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocket;ILokhttp3/internal/connection/ConnectionListener;)V

    move-wide/from16 p1, p5

    .line 458
    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNs(J)V

    return-object v1
.end method
