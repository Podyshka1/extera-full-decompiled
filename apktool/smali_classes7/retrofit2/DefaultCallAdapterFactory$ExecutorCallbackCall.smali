.class final Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/DefaultCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallbackCall"
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field final delegate:Lretrofit2/Call;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 71
    iput-object p2, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 113
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->clone()Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/Call;
    .locals 3

    .line 124
    new-instance v0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .locals 2

    .line 76
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    new-instance v1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    invoke-direct {v1, p0, p1}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;-><init>(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .line 129
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
