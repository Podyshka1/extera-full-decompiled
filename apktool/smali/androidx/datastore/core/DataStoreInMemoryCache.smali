.class public final Landroidx/datastore/core/DataStoreInMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cachedValue:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final getCurrentState()Landroidx/datastore/core/State;
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/State;

    return-object v0
.end method

.method public final getFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final tryUpdate(Landroidx/datastore/core/State;)Landroidx/datastore/core/State;
    .locals 5

    const-string/jumbo v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 199
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 200
    move-object v2, v1

    check-cast v2, Landroidx/datastore/core/State;

    .line 47
    instance-of v3, v2, Landroidx/datastore/core/ReadException;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    instance-of v3, v2, Landroidx/datastore/core/Data;

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {p1}, Landroidx/datastore/core/State;->getVersion()I

    move-result v3

    invoke-virtual {v2}, Landroidx/datastore/core/State;->getVersion()I

    move-result v4

    if-le v3, v4, :cond_4

    :goto_1
    move-object v2, p1

    goto :goto_2

    .line 70
    :cond_3
    instance-of v3, v2, Landroidx/datastore/core/Final;

    if-eqz v3, :cond_5

    .line 201
    :cond_4
    :goto_2
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 72
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
