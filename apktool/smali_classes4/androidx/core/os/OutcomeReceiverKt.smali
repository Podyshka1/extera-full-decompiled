.class public abstract Landroidx/core/os/OutcomeReceiverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final asOutcomeReceiver(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;
    .locals 1

    .line 58
    new-instance v0, Landroidx/core/os/ContinuationOutcomeReceiver;

    invoke-direct {v0, p0}, Landroidx/core/os/ContinuationOutcomeReceiver;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method
