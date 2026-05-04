.class public final Landroidx/room/ObserverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final observer:Landroidx/room/InvalidationTracker$Observer;

.field private final singleTableSet:Ljava/util/Set;

.field private final tableIds:[I

.field private final tableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableNames"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Landroidx/room/ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 515
    iput-object p2, p0, Landroidx/room/ObserverWrapper;->tableIds:[I

    .line 516
    iput-object p3, p0, Landroidx/room/ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 519
    array-length p1, p2

    array-length p2, p3

    if-ne p1, p2, :cond_2

    .line 523
    array-length p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    aget-object p1, p3, p2

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroidx/room/ObserverWrapper;->singleTableSet:Ljava/util/Set;

    return-void

    .line 519
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getObserver$room_runtime()Landroidx/room/InvalidationTracker$Observer;
    .locals 1

    .line 514
    iget-object v0, p0, Landroidx/room/ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    return-object v0
.end method

.method public final getTableIds$room_runtime()[I
    .locals 1

    .line 515
    iget-object v0, p0, Landroidx/room/ObserverWrapper;->tableIds:[I

    return-object v0
.end method

.method public final notifyByTableIds$room_runtime(Ljava/util/Set;)V
    .locals 7

    const-string v0, "invalidatedTablesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Landroidx/room/ObserverWrapper;->tableIds:[I

    array-length v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 531
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 532
    iget-object v1, p0, Landroidx/room/ObserverWrapper;->tableIds:[I

    .line 594
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_1

    aget v5, v1, v2

    add-int/lit8 v6, v4, 0x1

    .line 533
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    iget-object v5, p0, Landroidx/room/ObserverWrapper;->tableNames:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 529
    :cond_2
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/room/ObserverWrapper;->singleTableSet:Ljava/util/Set;

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 528
    :cond_4
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 539
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 540
    iget-object v0, p0, Landroidx/room/ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :cond_5
    return-void
.end method

.method public final notifyByTableNames$room_runtime(Ljava/util/Set;)V
    .locals 9

    const-string v0, "invalidatedTablesNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Landroidx/room/ObserverWrapper;->tableNames:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 557
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 559
    iget-object v4, p0, Landroidx/room/ObserverWrapper;->tableNames:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 560
    invoke-static {v7, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 561
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 557
    :cond_2
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_3

    .line 1761
    :cond_3
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1762
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    iget-object v3, p0, Landroidx/room/ObserverWrapper;->tableNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    iget-object p1, p0, Landroidx/room/ObserverWrapper;->singleTableSet:Ljava/util/Set;

    goto :goto_3

    .line 554
    :cond_6
    :goto_2
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_3

    .line 547
    :cond_7
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 568
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 569
    iget-object v0, p0, Landroidx/room/ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :cond_8
    return-void
.end method
