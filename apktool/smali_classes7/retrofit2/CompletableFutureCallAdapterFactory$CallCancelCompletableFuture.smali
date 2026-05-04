.class final Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/CompletableFutureCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallCancelCompletableFuture"
.end annotation


# instance fields
.field private final call:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 146
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;->call:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method
