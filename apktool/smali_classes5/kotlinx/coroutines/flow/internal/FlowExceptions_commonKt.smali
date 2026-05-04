.class public abstract Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljava/lang/Object;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    throw p0
.end method
