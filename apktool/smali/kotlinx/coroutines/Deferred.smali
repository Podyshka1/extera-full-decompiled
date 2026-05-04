.class public interface abstract Lkotlinx/coroutines/Deferred;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Job;


# virtual methods
.method public abstract await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract getCompleted()Ljava/lang/Object;
.end method

.method public abstract getCompletionExceptionOrNull()Ljava/lang/Throwable;
.end method

.method public abstract getOnAwait()Lkotlinx/coroutines/selects/SelectClause1;
.end method
