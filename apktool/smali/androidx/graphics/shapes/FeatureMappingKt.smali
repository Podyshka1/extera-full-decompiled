.class public abstract Landroidx/graphics/shapes/FeatureMappingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final doMapping(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12

    const-string v0, "f1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 148
    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v3}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v5}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/graphics/shapes/FeatureMappingKt;->featureDistSquared(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    move-result v3

    .line 152
    :cond_1
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .line 111
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v6}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v7}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/graphics/shapes/FeatureMappingKt;->featureDistSquared(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    move-result v6

    .line 154
    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_2

    move v2, v5

    move v3, v6

    .line 2322
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    .line 116
    new-array v5, v3, [Landroidx/graphics/shapes/ProgressableFeature;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move v5, v2

    :goto_1
    if-ge v3, v0, :cond_8

    sub-int v6, v0, v3

    sub-int v6, v2, v6

    if-le v6, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v6, v1

    .line 123
    :goto_2
    new-instance v7, Lkotlin/ranges/IntRange;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v7, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 161
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 162
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 163
    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    .line 164
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_3
    move v5, v7

    goto :goto_4

    .line 123
    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v8}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v8

    rem-int v9, v7, v1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v9}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/graphics/shapes/FeatureMappingKt;->featureDistSquared(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    move-result v8

    .line 167
    :cond_5
    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    .line 123
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v10}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v10

    rem-int v11, v9, v1

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v11}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/graphics/shapes/FeatureMappingKt;->featureDistSquared(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    move-result v10

    .line 169
    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-lez v11, :cond_6

    move v7, v9

    move v8, v10

    .line 2322
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    .line 124
    :goto_4
    rem-int v6, v5, v1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_8
    return-object v4

    .line 147
    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static final featureDistSquared(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F
    .locals 4

    const-string v0, "f1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    instance-of v0, p0, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/graphics/shapes/Feature$Corner;

    invoke-virtual {v0}, Landroidx/graphics/shapes/Feature$Corner;->getConvex()Z

    move-result v0

    move-object v1, p1

    check-cast v1, Landroidx/graphics/shapes/Feature$Corner;

    invoke-virtual {v1}, Landroidx/graphics/shapes/Feature$Corner;->getConvex()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v0

    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v1}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 94
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v2

    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result p0

    add-float/2addr v2, p0

    div-float/2addr v2, v1

    .line 95
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result p0

    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v3

    add-float/2addr p0, v3

    div-float/2addr p0, v1

    .line 96
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v3

    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result p1

    add-float/2addr v3, p1

    div-float/2addr v3, v1

    sub-float/2addr v0, p0

    sub-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    return v0
.end method

.method public static final featureMapper(Ljava/util/List;Ljava/util/List;)Landroidx/graphics/shapes/DoubleMapper;
    .locals 6

    const-string v0, "features1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 34
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v4}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v4

    instance-of v4, v4, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v4, :cond_0

    .line 35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 43
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v4}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v4

    instance-of v4, v4, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v4, :cond_2

    .line 44
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 51
    invoke-static {p1, p0}, Landroidx/graphics/shapes/FeatureMappingKt;->doMapping(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_2

    .line 53
    :cond_4
    invoke-static {p0, p1}, Landroidx/graphics/shapes/FeatureMappingKt;->doMapping(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 50
    :goto_2
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_5

    .line 60
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 61
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v4}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v5}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 58
    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 66
    new-instance p1, Landroidx/graphics/shapes/DoubleMapper;

    check-cast p0, Ljava/util/Collection;

    .line 38
    new-array v0, v2, [Lkotlin/Pair;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 66
    check-cast p0, [Lkotlin/Pair;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;

    invoke-direct {p1, p0}, Landroidx/graphics/shapes/DoubleMapper;-><init>([Lkotlin/Pair;)V

    return-object p1
.end method
