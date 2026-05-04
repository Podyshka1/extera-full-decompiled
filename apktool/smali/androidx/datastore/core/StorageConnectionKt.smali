.class public abstract Landroidx/datastore/core/StorageConnectionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final readData(Landroidx/datastore/core/StorageConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 74
    new-instance v0, Landroidx/datastore/core/StorageConnectionKt$readData$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/StorageConnectionKt$readData$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-interface {p0, v0, p1}, Landroidx/datastore/core/StorageConnection;->readScope(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
