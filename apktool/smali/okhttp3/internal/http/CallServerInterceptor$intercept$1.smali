.class public final Lokhttp3/internal/http/CallServerInterceptor$intercept$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/TrailersSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http/CallServerInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $exchange:Lokhttp3/internal/connection/Exchange;

.field final synthetic $responseBody:Lokhttp3/ResponseBody;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/Exchange;Lokhttp3/ResponseBody;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    iput-object p2, p0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->$responseBody:Lokhttp3/ResponseBody;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lokhttp3/Headers;
    .locals 2

    .line 168
    iget-object v0, p0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->$responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->skipAll(Lokio/BufferedSource;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->peek()Lokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null trailers after exhausting response body?!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lokhttp3/Headers;
    .locals 1

    .line 161
    iget-object v0, p0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->peekTrailers()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method
