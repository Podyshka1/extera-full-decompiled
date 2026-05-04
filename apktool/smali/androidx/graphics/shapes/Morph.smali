.class public final Landroidx/graphics/shapes/Morph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Morph$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/shapes/Morph$Companion;


# instance fields
.field private final _morphMatch:Ljava/util/List;

.field private final end:Landroidx/graphics/shapes/RoundedPolygon;

.field private final start:Landroidx/graphics/shapes/RoundedPolygon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/Morph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/Morph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V
    .locals 1

    const-string/jumbo v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    iput-object p2, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    .line 49
    sget-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/shapes/Morph$Companion;->match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final asCubics(F)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    .line 125
    iget-object v2, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_3

    const/16 v7, 0x8

    .line 128
    new-array v8, v7, [F

    move v9, v4

    :goto_1
    if-ge v9, v7, :cond_0

    .line 130
    iget-object v10, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v10}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v10

    aget v10, v10, v9

    .line 131
    iget-object v11, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v11}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v11

    aget v11, v11, v9

    move/from16 v12, p1

    .line 129
    invoke-static {v10, v11, v12}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move/from16 v12, p1

    .line 127
    new-instance v7, Landroidx/graphics/shapes/Cubic;

    invoke-direct {v7, v8}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    if-nez v5, :cond_1

    move-object v5, v7

    :cond_1
    if-eqz v3, :cond_2

    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move-object v3, v7

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 143
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v8

    .line 144
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v9

    .line 145
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v10

    .line 146
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v11

    .line 147
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v12

    .line 148
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v13

    .line 149
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v14

    .line 150
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v15

    .line 142
    invoke-static/range {v8 .. v15}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
