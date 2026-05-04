.class public abstract Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 163
    const-string v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$awaitConstraintsNotMet(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->awaitConstraintsNotMet(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final awaitConstraintsNotMet(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;

    iget v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;

    invoke-direct {v0, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 156
    iget v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->track(Landroidx/work/impl/model/WorkSpec;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 158
    new-instance p2, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2;-><init>(Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 105
    new-instance p1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1;

    invoke-direct {p1, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 160
    iput v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 156
    :cond_3
    :goto_1
    check-cast p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 161
    invoke-virtual {p2}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->getReason()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
