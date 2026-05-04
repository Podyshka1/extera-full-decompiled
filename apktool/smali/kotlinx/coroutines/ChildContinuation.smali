.class final Lkotlinx/coroutines/ChildContinuation;
.super Lkotlinx/coroutines/JobNode;
.source "SourceFile"


# instance fields
.field public final child:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 694
    invoke-direct {p0}, Lkotlinx/coroutines/JobNode;-><init>()V

    .line 693
    iput-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->child:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public getOnCancelling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 698
    iget-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->child:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    return-void
.end method
