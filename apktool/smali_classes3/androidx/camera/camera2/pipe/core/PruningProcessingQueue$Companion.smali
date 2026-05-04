.class public final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final processIn(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlinx/coroutines/CoroutineScope;)Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getStarted$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v4, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion$processIn$job$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion$processIn$job$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p2

    .line 206
    invoke-interface {p2}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$closeAndReleaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1

    .line 197
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PruningProcessingQueue cannot be re-started!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
