.class public Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CompletableJob;


# instance fields
.field private final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    const/4 v0, 0x1

    .line 1425
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 1426
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/Job;)V

    .line 1438
    invoke-direct {p0}, Lkotlinx/coroutines/JobImpl;->handlesException()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return-void
.end method

.method private final handlesException()Z
    .locals 4

    .line 1445
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1447
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    .line 1448
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public complete()Z
    .locals 1

    .line 1439
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHandlesException$kotlinx_coroutines_core()Z
    .locals 1

    .line 1438
    iget-boolean v0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return v0
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
