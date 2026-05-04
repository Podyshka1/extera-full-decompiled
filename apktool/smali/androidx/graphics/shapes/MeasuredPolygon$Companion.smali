.class public final Landroidx/graphics/shapes/MeasuredPolygon$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/MeasuredPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final measurePolygon$graphics_shapes_release(Landroidx/graphics/shapes/Measurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;
    .locals 10

    const-string/jumbo v0, "measurer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "polygon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {p2}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures$graphics_shapes_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v1, :cond_2

    .line 248
    invoke-virtual {p2}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures$graphics_shapes_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Feature;

    .line 249
    invoke-virtual {v6}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    .line 250
    instance-of v9, v6, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v9, v5

    if-ne v8, v9, :cond_0

    .line 251
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    invoke-virtual {v6}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 259
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v3, 0x9

    .line 355
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 356
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_3

    .line 357
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2851
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 2852
    check-cast v8, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 261
    invoke-interface {p1, v8}, Landroidx/graphics/shapes/Measurer;->measureCubic(Landroidx/graphics/shapes/Cubic;)F

    move-result v8

    cmpl-float v9, v8, p2

    if-ltz v9, :cond_4

    .line 265
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-float/2addr v1, v8

    .line 260
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2853
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Measured cubic is expected to be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move-object p2, v6

    .line 267
    :goto_3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move v3, v5

    .line 270
    new-instance v5, Landroidx/collection/MutableFloatList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 271
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_6

    .line 272
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    div-float/2addr v8, v1

    invoke-virtual {v5, v8}, Landroidx/collection/MutableFloatList;->add(F)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 275
    :cond_6
    invoke-static {}, Landroidx/graphics/shapes/PolygonMeasureKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 277
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p2

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_7

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 281
    new-instance v7, Landroidx/graphics/shapes/ProgressableFeature;

    .line 282
    invoke-virtual {v5, v6}, Landroidx/collection/FloatList;->get(I)F

    move-result v8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/collection/FloatList;->get(I)F

    move-result v6

    add-float/2addr v8, v6

    int-to-float v6, v3

    div-float/2addr v8, v6

    .line 283
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Feature;

    .line 281
    invoke-direct {v7, v8, v6}, Landroidx/graphics/shapes/ProgressableFeature;-><init>(FLandroidx/graphics/shapes/Feature;)V

    .line 280
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 277
    :cond_7
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 289
    new-instance v1, Landroidx/graphics/shapes/MeasuredPolygon;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/graphics/shapes/MeasuredPolygon;-><init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
