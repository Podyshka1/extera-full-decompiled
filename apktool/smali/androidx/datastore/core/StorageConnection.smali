.class public interface abstract Landroidx/datastore/core/StorageConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Closeable;


# virtual methods
.method public abstract getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;
.end method

.method public abstract readScope(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract writeScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
