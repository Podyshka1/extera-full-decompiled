.class public interface abstract Landroidx/datastore/core/InterProcessCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getUpdateNotifications()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract incrementAndGetVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract tryLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
