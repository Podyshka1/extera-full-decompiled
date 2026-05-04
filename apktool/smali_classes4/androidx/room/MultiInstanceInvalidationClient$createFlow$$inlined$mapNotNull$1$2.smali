.class public final Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $resolvedTableNames$inlined:[Ljava/lang/String;

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$resolvedTableNames$inlined:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 132
    iget v2, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 219
    check-cast p1, Ljava/util/Set;

    .line 220
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v2

    .line 221
    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$resolvedTableNames$inlined:[Ljava/lang/String;

    .line 13472
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 225
    invoke-static {v7, v9, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 226
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 220
    :cond_5
    invoke-static {v2}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 233
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p1, 0x0

    :cond_6
    if-eqz p1, :cond_7

    .line 235
    iput v3, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 49
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
