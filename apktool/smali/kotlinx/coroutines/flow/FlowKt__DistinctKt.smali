.class abstract synthetic Lkotlinx/coroutines/flow/FlowKt__DistinctKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultAreEquivalent:Lkotlin/jvm/functions/Function2;

.field private static final defaultKeySelector:Lkotlin/jvm/functions/Function1;


# direct methods
.method public static synthetic $r8$lambda$gx6nPCTeN-XIdcjeew_gbEL_7B8(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultAreEquivalent$lambda$1$FlowKt__DistinctKt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mgidQTCZEwPL4AoZywC2sds_69k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultKeySelector$lambda$0$FlowKt__DistinctKt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultKeySelector:Lkotlin/jvm/functions/Function1;

    .line 44
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultAreEquivalent:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private static final defaultAreEquivalent$lambda$1$FlowKt__DistinctKt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final defaultKeySelector$lambda$0$FlowKt__DistinctKt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 19
    instance-of v0, p0, Lkotlinx/coroutines/flow/StateFlow;

    if-eqz v0, :cond_0

    return-object p0

    .line 20
    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultKeySelector:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultAreEquivalent:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method private static final distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 57
    instance-of v0, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->keySelector:Lkotlin/jvm/functions/Function1;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->areEquivalent:Lkotlin/jvm/functions/Function2;

    if-ne v0, p2, :cond_0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
