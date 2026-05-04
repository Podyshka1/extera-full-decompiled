.class public final Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/BufferedSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnection$Companion;->newTestConnection(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;J)Lokhttp3/internal/connection/RealConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final sink:Lokio/Buffer;

.field private final source:Lokio/Buffer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->sink:Lokio/Buffer;

    .line 439
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->source:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public getSink()Lokio/Buffer;
    .locals 1

    .line 438
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->sink:Lokio/Buffer;

    return-object v0
.end method

.method public bridge synthetic getSink()Lokio/BufferedSink;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->getSink()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSink()Lokio/Sink;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->getSink()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lokio/Buffer;
    .locals 1

    .line 439
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->source:Lokio/Buffer;

    return-object v0
.end method

.method public bridge synthetic getSource()Lokio/BufferedSource;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->getSource()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSource()Lokio/Source;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection$Companion$newTestConnection$bufferedSocket$1;->getSource()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
