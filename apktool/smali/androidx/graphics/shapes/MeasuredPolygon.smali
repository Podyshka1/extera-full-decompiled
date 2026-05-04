.class public final Landroidx/graphics/shapes/MeasuredPolygon;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/MeasuredPolygon$Companion;,
        Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/shapes/MeasuredPolygon$Companion;


# instance fields
.field private final cubics:Ljava/util/List;

.field private final features:Ljava/util/List;

.field private final measurer:Landroidx/graphics/shapes/Measurer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/MeasuredPolygon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/MeasuredPolygon;->Companion:Landroidx/graphics/shapes/MeasuredPolygon$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;)V
    .locals 8

    .line 34
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    .line 35
    invoke-virtual {p4}, Landroidx/collection/FloatList;->getSize()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    .line 38
    invoke-virtual {p4}, Landroidx/collection/FloatList;->first()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    .line 41
    invoke-virtual {p4}, Landroidx/collection/FloatList;->last()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    .line 44
    iput-object p1, p0, Landroidx/graphics/shapes/MeasuredPolygon;->measurer:Landroidx/graphics/shapes/Measurer;

    .line 45
    iput-object p2, p0, Landroidx/graphics/shapes/MeasuredPolygon;->features:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v4, v1

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 v5, v0, 0x1

    .line 59
    invoke-virtual {p4, v5}, Landroidx/collection/FloatList;->get(I)F

    move-result v6

    invoke-virtual {p4, v0}, Landroidx/collection/FloatList;->get(I)F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x38d1b717    # 1.0E-4f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 61
    new-instance v6, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p4, v5}, Landroidx/collection/FloatList;->get(I)F

    move-result v7

    invoke-direct {v6, p0, v0, v4, v7}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;-><init>(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V

    .line 60
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p4, v5}, Landroidx/collection/FloatList;->get(I)F

    move-result v4

    :cond_0
    move v0, v5

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    const/4 p3, 0x0

    invoke-static {p2, v1, v3, v2, p3}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->updateProgressRange$graphics_shapes_release$default(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;FFILjava/lang/Object;)V

    .line 69
    iput-object p1, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    return-void

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Last outline progress value is expected to be one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "First outline progress value is expected to be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outline progress size is expected to be the cubics size + 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/MeasuredPolygon;-><init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;)V

    return-void
.end method

.method public static final synthetic access$getMeasurer$p(Landroidx/graphics/shapes/MeasuredPolygon;)Landroidx/graphics/shapes/Measurer;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/graphics/shapes/MeasuredPolygon;->measurer:Landroidx/graphics/shapes/Measurer;

    return-object p0
.end method


# virtual methods
.method public bridge contains(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;)Z
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    instance-of v0, p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/MeasuredPolygon;->contains(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;)Z

    move-result p1

    return p1
.end method

.method public final cutAndShift(F)Landroidx/graphics/shapes/MeasuredPolygon;
    .locals 12

    const/4 v0, 0x0

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_8

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    return-object p0

    .line 169
    :cond_0
    iget-object v2, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    .line 351
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 357
    check-cast v5, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 169
    invoke-virtual {v5}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getStartOutlineProgress()F

    move-result v6

    invoke-virtual {v5}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getEndOutlineProgress()F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    cmpg-float v5, v6, p1

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    .line 170
    :goto_1
    iget-object v2, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 181
    invoke-virtual {v2, p1}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cutAtProgress(F)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 182
    invoke-static {}, Landroidx/graphics/shapes/PolygonMeasureKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 189
    invoke-virtual {v2}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Landroidx/graphics/shapes/Cubic;

    aput-object v2, v7, v3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 190
    iget-object v7, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_3

    .line 191
    iget-object v9, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    add-int v10, v8, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {v9}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 193
    :cond_3
    invoke-virtual {v5}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v5, Landroidx/collection/MutableFloatList;

    iget-object v7, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v7}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 205
    iget-object v7, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    move v8, v3

    :goto_3
    if-ge v8, v7, :cond_6

    if-nez v8, :cond_4

    move v9, v0

    goto :goto_4

    .line 209
    :cond_4
    iget-object v9, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v6

    if-ne v8, v9, :cond_5

    move v9, v1

    goto :goto_4

    :cond_5
    add-int v9, v4, v8

    sub-int/2addr v9, v6

    .line 211
    iget-object v10, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr v9, v10

    .line 212
    iget-object v10, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {v9}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getEndOutlineProgress()F

    move-result v9

    sub-float/2addr v9, p1

    invoke-static {v9, v1}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v9

    .line 206
    :goto_4
    invoke-virtual {v5, v9}, Landroidx/collection/MutableFloatList;->add(F)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 219
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 220
    iget-object v4, p0, Landroidx/graphics/shapes/MeasuredPolygon;->features:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_5
    if-ge v3, v4, :cond_7

    .line 222
    new-instance v6, Landroidx/graphics/shapes/ProgressableFeature;

    .line 223
    iget-object v7, p0, Landroidx/graphics/shapes/MeasuredPolygon;->features:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v7}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v7

    sub-float/2addr v7, p1

    invoke-static {v7, v1}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v7

    .line 224
    iget-object v8, p0, Landroidx/graphics/shapes/MeasuredPolygon;->features:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v8}, Landroidx/graphics/shapes/ProgressableFeature;->getFeature()Landroidx/graphics/shapes/Feature;

    move-result-object v8

    .line 222
    invoke-direct {v6, v7, v8}, Landroidx/graphics/shapes/ProgressableFeature;-><init>(FLandroidx/graphics/shapes/Feature;)V

    .line 221
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 219
    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 231
    new-instance v0, Landroidx/graphics/shapes/MeasuredPolygon;

    iget-object v1, p0, Landroidx/graphics/shapes/MeasuredPolygon;->measurer:Landroidx/graphics/shapes/Measurer;

    invoke-direct {v0, v1, p1, v2, v5}, Landroidx/graphics/shapes/MeasuredPolygon;-><init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;)V

    return-object v0

    .line 164
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cutting point is expected to be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/MeasuredPolygon;->get(I)Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    move-result-object p1

    return-object p1
.end method

.method public final getFeatures()Ljava/util/List;
    .locals 1

    .line 27
    iget-object v0, p0, Landroidx/graphics/shapes/MeasuredPolygon;->features:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/graphics/shapes/MeasuredPolygon;->cubics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;)I
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 24
    instance-of v0, p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/MeasuredPolygon;->indexOf(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;)I
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 24
    instance-of v0, p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/MeasuredPolygon;->lastIndexOf(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;)I

    move-result p1

    return p1
.end method
