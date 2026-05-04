.class public abstract Lkotlinx/coroutines/CompletableDeferredKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 2

    .line 70
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->complete(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final CompletableDeferred(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 64
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-object v0
.end method

.method public static synthetic CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 63
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    return-object p0
.end method

.method public static final completeWith(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)Z
    .locals 1

    .line 57
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
