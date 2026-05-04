.class final Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->asListenableFuture(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic $this_asListenableFuture:Lkotlinx/coroutines/Deferred;


# direct methods
.method constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlinx/coroutines/Deferred;)V
    .locals 0

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->$this_asListenableFuture:Lkotlinx/coroutines/Deferred;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 33
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 34
    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;->$this_asListenableFuture:Lkotlinx/coroutines/Deferred;

    invoke-interface {v0}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method
