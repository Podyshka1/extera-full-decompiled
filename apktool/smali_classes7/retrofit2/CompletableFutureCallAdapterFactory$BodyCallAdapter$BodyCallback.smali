.class Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BodyCallback"
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;

.field final synthetic this$0:Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;


# direct methods
.method public constructor <init>(Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;->this$0:Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;->future:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1

    .line 86
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
