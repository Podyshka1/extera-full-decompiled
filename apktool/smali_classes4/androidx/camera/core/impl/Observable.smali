.class public interface abstract Landroidx/camera/core/impl/Observable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/Observable$Observer;
    }
.end annotation


# virtual methods
.method public abstract addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
.end method

.method public abstract fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V
.end method
