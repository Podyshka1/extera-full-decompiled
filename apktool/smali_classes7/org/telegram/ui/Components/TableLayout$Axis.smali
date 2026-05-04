.class final Lorg/telegram/ui/Components/TableLayout$Axis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# instance fields
.field public arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

.field public forwardLinksValid:Z

.field groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Lorg/telegram/ui/Components/TableLayout$MutableInt;

.field private parentMin:Lorg/telegram/ui/Components/TableLayout$MutableInt;

.field final synthetic this$0:Lorg/telegram/ui/Components/TableLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/TableLayout;Z)V
    .locals 1

    .line 1033
    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 1000
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->definedCount:I

    .line 1001
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->maxIndex:I

    const/4 p1, 0x0

    .line 1004
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBoundsValid:Z

    .line 1007
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinksValid:Z

    .line 1010
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinksValid:Z

    .line 1013
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMarginsValid:Z

    .line 1016
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMarginsValid:Z

    .line 1019
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcsValid:Z

    .line 1022
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locationsValid:Z

    .line 1025
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeightsValid:Z

    const/4 v0, 0x1

    .line 1028
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->orderPreserved:Z

    .line 1030
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$MutableInt;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/TableLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMin:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    .line 1031
    new-instance p1, Lorg/telegram/ui/Components/TableLayout$MutableInt;

    const v0, -0x186a0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/TableLayout$MutableInt;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMax:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    .line 1034
    iput-boolean p2, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/TableLayout;ZLorg/telegram/ui/Components/TableLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout$Axis;-><init>(Lorg/telegram/ui/Components/TableLayout;Z)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$PackedMap;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1240
    :goto_0
    iget-object v2, p2, Lorg/telegram/ui/Components/TableLayout$PackedMap;->keys:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lorg/telegram/ui/Components/TableLayout$Interval;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1241
    check-cast v2, [Lorg/telegram/ui/Components/TableLayout$Interval;

    aget-object v2, v2, v1

    .line 1242
    iget-object v3, p2, Lorg/telegram/ui/Components/TableLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Lorg/telegram/ui/Components/TableLayout$MutableInt;

    aget-object v3, v3, v1

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateMaxIndex()I
    .locals 6

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1040
    iget-object v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v4

    .line 1041
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v4

    .line 1042
    iget-boolean v5, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1043
    :goto_1
    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 1044
    iget v5, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1045
    iget v5, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1046
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Interval;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 v0, -0x80000000

    return v0

    :cond_2
    return v3
.end method

.method private calculateTotalWeight()F
    .locals 5

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1466
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    .line 1467
    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    .line 1468
    iget-boolean v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1469
    :goto_1
    iget v3, v3, Lorg/telegram/ui/Components/TableLayout$Spec;->weight:F

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private computeArcs()V
    .locals 0

    .line 1270
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getForwardLinks()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1271
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getBackwardLinks()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    return-void
.end method

.method private computeGroupBounds()V
    .locals 10

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Lorg/telegram/ui/Components/TableLayout$Bounds;

    const/4 v1, 0x0

    move v2, v1

    .line 1092
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1093
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Bounds;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1096
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v6

    .line 1097
    invoke-virtual {v6}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    .line 1098
    iget-boolean v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_1
    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_2

    .line 1099
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/Components/TableLayout;->getMeasurementIncludingMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v3

    iget v4, v7, Lorg/telegram/ui/Components/TableLayout$Spec;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    aget v4, v4, v2

    :goto_4
    add-int v9, v3, v4

    .line 1100
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/TableLayout$Bounds;

    iget-object v5, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/TableLayout$Bounds;->include(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Spec;Lorg/telegram/ui/Components/TableLayout$Axis;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private computeHasWeights()Z
    .locals 5

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1390
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    .line 1391
    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    .line 1392
    iget-boolean v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1393
    :goto_1
    iget v3, v3, Lorg/telegram/ui/Components/TableLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private computeLinks(Lorg/telegram/ui/Components/TableLayout$PackedMap;Z)V
    .locals 5

    .line 1126
    iget-object v0, p1, Lorg/telegram/ui/Components/TableLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Lorg/telegram/ui/Components/TableLayout$MutableInt;

    const/4 v1, 0x0

    move v2, v1

    .line 1127
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1128
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$MutableInt;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Lorg/telegram/ui/Components/TableLayout$Bounds;

    .line 1132
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1133
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/TableLayout$Bounds;->size(Z)I

    move-result v2

    .line 1134
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/TableLayout$MutableInt;

    .line 1135
    iget v4, v3, Lorg/telegram/ui/Components/TableLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    neg-int v2, v2

    :goto_2
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Components/TableLayout$MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4

    .line 1475
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->solve([I)Z

    goto :goto_0

    .line 1478
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->solveAndDistributeSpace([I)V

    .line 1480
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->orderPreserved:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1481
    aget v1, p1, v0

    .line 1482
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1483
    aget v3, p1, v0

    sub-int/2addr v3, v1

    aput v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private computeMargins(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMargins:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMargins:[I

    .line 1352
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1353
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    .line 1354
    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v4

    .line 1355
    iget-boolean v5, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_2

    :cond_1
    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1356
    :goto_2
    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    if-eqz p1, :cond_2

    .line 1357
    iget v4, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    goto :goto_3

    :cond_2
    iget v4, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    .line 1358
    :goto_3
    aget v6, v0, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v7, v3, v5, p1}, Lorg/telegram/ui/Components/TableLayout;->getMargin1(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private createArcs()[Lorg/telegram/ui/Components/TableLayout$Arc;
    .locals 6

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getForwardLinks()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/TableLayout$Axis;->addComponentSizes(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$PackedMap;)V

    .line 1251
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getBackwardLinks()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/TableLayout$Axis;->addComponentSizes(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$PackedMap;)V

    .line 1253
    iget-boolean v2, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->orderPreserved:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    .line 1254
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1255
    new-instance v4, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    new-instance v2, Lorg/telegram/ui/Components/TableLayout$MutableInt;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/TableLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v0, v4, v2}, Lorg/telegram/ui/Components/TableLayout$Axis;->include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;)V

    move v2, v5

    goto :goto_0

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v2

    .line 1260
    new-instance v4, Lorg/telegram/ui/Components/TableLayout$Interval;

    invoke-direct {v4, v3, v2}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    iget-object v5, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMin:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    invoke-direct {p0, v0, v4, v5, v3}, Lorg/telegram/ui/Components/TableLayout$Axis;->include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;Z)V

    .line 1261
    new-instance v4, Lorg/telegram/ui/Components/TableLayout$Interval;

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMax:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    invoke-direct {p0, v1, v4, v2, v3}, Lorg/telegram/ui/Components/TableLayout$Axis;->include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;Z)V

    .line 1263
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->topologicalSort(Ljava/util/List;)[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object v0

    .line 1264
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->topologicalSort(Ljava/util/List;)[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object v1

    .line 1266
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TableLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/TableLayout$Arc;

    return-object v0
.end method

.method private createGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;
    .locals 5

    .line 1079
    const-class v0, Lorg/telegram/ui/Components/TableLayout$Spec;

    const-class v1, Lorg/telegram/ui/Components/TableLayout$Bounds;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TableLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Lorg/telegram/ui/Components/TableLayout$Assoc;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1081
    iget-object v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    .line 1082
    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    .line 1083
    iget-boolean v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1084
    :goto_1
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/TableLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getBounds()Lorg/telegram/ui/Components/TableLayout$Bounds;

    move-result-object v4

    .line 1085
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/TableLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Assoc;->pack()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v0

    return-object v0
.end method

.method private createLinks(Z)Lorg/telegram/ui/Components/TableLayout$PackedMap;
    .locals 6

    .line 1116
    const-class v0, Lorg/telegram/ui/Components/TableLayout$Interval;

    const-class v1, Lorg/telegram/ui/Components/TableLayout$MutableInt;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TableLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Lorg/telegram/ui/Components/TableLayout$Assoc;

    move-result-object v0

    .line 1117
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/TableLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1118
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-eqz p1, :cond_0

    .line 1119
    aget-object v4, v1, v3

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Interval;->inverse()Lorg/telegram/ui/Components/TableLayout$Interval;

    move-result-object v4

    .line 1120
    :goto_1
    new-instance v5, Lorg/telegram/ui/Components/TableLayout$MutableInt;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TableLayout$MutableInt;-><init>()V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/TableLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Assoc;->pack()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object p1

    return-object p1
.end method

.method private getBackwardLinks()Lorg/telegram/ui/Components/TableLayout$PackedMap;
    .locals 2

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1152
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->createLinks(Z)Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1154
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeLinks(Lorg/telegram/ui/Components/TableLayout$PackedMap;Z)V

    const/4 v0, 0x1

    .line 1156
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinksValid:Z

    .line 1158
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Lorg/telegram/ui/Components/TableLayout$PackedMap;
    .locals 2

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1141
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->createLinks(Z)Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1143
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeLinks(Lorg/telegram/ui/Components/TableLayout$PackedMap;Z)V

    .line 1145
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinksValid:Z

    .line 1147
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    .line 1052
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1053
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->maxIndex:I

    .line 1055
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .locals 0

    .line 1511
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout$Axis;->setParentConstraints(II)V

    .line 1512
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->size([I)I

    move-result p1

    return p1
.end method

.method private hasWeights()Z
    .locals 1

    .line 1401
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeights:Z

    const/4 v0, 0x1

    .line 1403
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeightsValid:Z

    .line 1405
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;)V
    .locals 1

    const/4 v0, 0x1

    .line 1177
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;Z)V

    return-void
.end method

.method private include(Ljava/util/List;Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;Z)V
    .locals 1

    .line 1162
    invoke-virtual {p2}, Lorg/telegram/ui/Components/TableLayout$Interval;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 1166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TableLayout$Arc;

    .line 1167
    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$Arc;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 1168
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/TableLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 1173
    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/TableLayout$Arc;

    invoke-direct {p4, p2, p3}, Lorg/telegram/ui/Components/TableLayout$Arc;-><init>(Lorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$MutableInt;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private init([I)V
    .locals 1

    const/4 v0, 0x0

    .line 1302
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private relax([ILorg/telegram/ui/Components/TableLayout$Arc;)Z
    .locals 3

    .line 1286
    iget-boolean v0, p2, Lorg/telegram/ui/Components/TableLayout$Arc;->valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1289
    :cond_0
    iget-object v0, p2, Lorg/telegram/ui/Components/TableLayout$Arc;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 1290
    iget v2, v0, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    .line 1291
    iget v0, v0, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    .line 1292
    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$Arc;->value:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    iget p2, p2, Lorg/telegram/ui/Components/TableLayout$MutableInt;->value:I

    .line 1293
    aget v2, p1, v2

    add-int/2addr v2, p2

    .line 1294
    aget p2, p1, v0

    if-le v2, p2, :cond_1

    .line 1295
    aput v2, p1, v0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private setParentConstraints(II)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMin:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    iput p1, v0, Lorg/telegram/ui/Components/TableLayout$MutableInt;->value:I

    .line 1506
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMax:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    neg-int p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/TableLayout$MutableInt;->value:I

    const/4 p1, 0x0

    .line 1507
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locationsValid:Z

    return-void
.end method

.method private shareOutDelta(IF)V
    .locals 5

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1418
    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v2

    .line 1419
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v2

    .line 1420
    iget-boolean v3, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 1421
    :goto_1
    iget v2, v2, Lorg/telegram/ui/Components/TableLayout$Spec;->weight:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    int-to-float v3, p1

    mul-float/2addr v3, v2

    div-float/2addr v3, p2

    .line 1423
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1424
    iget-object v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    aput v3, v4, v1

    sub-int/2addr p1, v3

    sub-float/2addr p2, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private size([I)I
    .locals 1

    .line 1501
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method private solve([I)Z
    .locals 1

    .line 1385
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getArcs()[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->solve([Lorg/telegram/ui/Components/TableLayout$Arc;[I)Z

    move-result p1

    return p1
.end method

.method private solve([Lorg/telegram/ui/Components/TableLayout$Arc;[I)Z
    .locals 1

    const/4 v0, 0x1

    .line 1306
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->solve([Lorg/telegram/ui/Components/TableLayout$Arc;[IZ)Z

    move-result p1

    return p1
.end method

.method private solve([Lorg/telegram/ui/Components/TableLayout$Arc;[IZ)Z
    .locals 10

    .line 1310
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    .line 1312
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_9

    .line 1313
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/TableLayout$Axis;->init([I)V

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    .line 1317
    array-length v5, p1

    move v6, v2

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_0

    .line 1318
    aget-object v8, p1, v6

    invoke-direct {p0, p2, v8}, Lorg/telegram/ui/Components/TableLayout$Axis;->relax([ILorg/telegram/ui/Components/TableLayout$Arc;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    return v2

    .line 1329
    :cond_3
    array-length v4, p1

    new-array v4, v4, [Z

    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_5

    .line 1331
    array-length v6, p1

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_4

    .line 1332
    aget-boolean v8, v4, v7

    aget-object v9, p1, v7

    invoke-direct {p0, p2, v9}, Lorg/telegram/ui/Components/TableLayout$Axis;->relax([ILorg/telegram/ui/Components/TableLayout$Arc;)Z

    move-result v9

    or-int/2addr v8, v9

    aput-boolean v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v2

    .line 1336
    :goto_5
    array-length v6, p1

    if-ge v5, v6, :cond_8

    .line 1337
    aget-boolean v6, v4, v5

    if-eqz v6, :cond_7

    .line 1338
    aget-object v6, p1, v5

    .line 1339
    iget-object v7, v6, Lorg/telegram/ui/Components/TableLayout$Arc;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v7, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    iget v7, v7, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    if-ge v8, v7, :cond_6

    goto :goto_6

    .line 1342
    :cond_6
    iput-boolean v2, v6, Lorg/telegram/ui/Components/TableLayout$Arc;->valid:Z

    goto :goto_7

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return v1
.end method

.method private solveAndDistributeSpace([I)V
    .locals 10

    .line 1432
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getDeltas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1433
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->solve([I)Z

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->parentMin:Lorg/telegram/ui/Components/TableLayout$MutableInt;

    iget v0, v0, Lorg/telegram/ui/Components/TableLayout$MutableInt;->value:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v2

    mul-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_2

    .line 1440
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->calculateTotalWeight()F

    move-result v3

    const/4 v4, -0x1

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_2

    int-to-long v6, v5

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    .line 1445
    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 1446
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    .line 1447
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Components/TableLayout$Axis;->shareOutDelta(IF)V

    .line 1448
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getArcs()[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->solve([Lorg/telegram/ui/Components/TableLayout$Arc;[IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    move v4, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    move v2, v6

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    if-nez v2, :cond_3

    .line 1457
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    .line 1458
    invoke-direct {p0, v4, v3}, Lorg/telegram/ui/Components/TableLayout$Axis;->shareOutDelta(IF)V

    .line 1459
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->solve([I)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private topologicalSort(Ljava/util/List;)[Lorg/telegram/ui/Components/TableLayout$Arc;
    .locals 1

    const/4 v0, 0x0

    .line 1236
    new-array v0, v0, [Lorg/telegram/ui/Components/TableLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/TableLayout$Arc;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->topologicalSort([Lorg/telegram/ui/Components/TableLayout$Arc;)[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object p1

    return-object p1
.end method

.method private topologicalSort([Lorg/telegram/ui/Components/TableLayout$Arc;)[Lorg/telegram/ui/Components/TableLayout$Arc;
    .locals 1

    .line 1200
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis$1;-><init>(Lorg/telegram/ui/Components/TableLayout$Axis;[Lorg/telegram/ui/Components/TableLayout$Arc;)V

    .line 1232
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis$1;->sort()[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getArcs()[Lorg/telegram/ui/Components/TableLayout$Arc;
    .locals 1

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

    if-nez v0, :cond_0

    .line 1276
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->createArcs()[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

    .line 1278
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1279
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeArcs()V

    const/4 v0, 0x1

    .line 1280
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcsValid:Z

    .line 1282
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1059
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->definedCount:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDeltas()[I
    .locals 1

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->this$0:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;
    .locals 1

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1106
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->createGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1108
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1109
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeGroupBounds()V

    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBoundsValid:Z

    .line 1112
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMargins:[I

    .line 1366
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1367
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeMargins(Z)V

    .line 1368
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMarginsValid:Z

    .line 1370
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .locals 2

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1491
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locations:[I

    .line 1493
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_1

    .line 1494
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeLocations([I)V

    .line 1495
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locationsValid:Z

    .line 1497
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locations:[I

    return-object v0
.end method

.method public getMeasure(I)I
    .locals 3

    .line 1516
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1517
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return v2

    .line 1523
    :cond_0
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    :cond_1
    const p1, 0x186a0

    .line 1520
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    .line 1526
    :cond_2
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1
.end method

.method public getTrailingMargins()[I
    .locals 2

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1375
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMargins:[I

    .line 1377
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1378
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->computeMargins(Z)V

    .line 1379
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMarginsValid:Z

    .line 1381
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Lorg/telegram/ui/Components/TableLayout$Arc;)[[Lorg/telegram/ui/Components/TableLayout$Arc;
    .locals 9

    .line 1181
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1182
    new-array v1, v0, [[Lorg/telegram/ui/Components/TableLayout$Arc;

    .line 1183
    new-array v2, v0, [I

    .line 1184
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p1, v5

    .line 1185
    iget-object v6, v6, Lorg/telegram/ui/Components/TableLayout$Arc;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v6, v6, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v7, v2, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_1
    if-ge v3, v0, :cond_1

    .line 1188
    aget v5, v2, v3

    new-array v5, v5, [Lorg/telegram/ui/Components/TableLayout$Arc;

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1190
    :cond_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1191
    array-length v0, p1

    :goto_2
    if-ge v4, v0, :cond_2

    aget-object v3, p1, v4

    .line 1192
    iget-object v5, v3, Lorg/telegram/ui/Components/TableLayout$Arc;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v5, v5, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    .line 1193
    aget-object v6, v1, v5

    aget v7, v2, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v2, v5

    aput-object v3, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public invalidateStructure()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1540
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->maxIndex:I

    const/4 v0, 0x0

    .line 1542
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBounds:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1543
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1544
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinks:Lorg/telegram/ui/Components/TableLayout$PackedMap;

    .line 1546
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMargins:[I

    .line 1547
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMargins:[I

    .line 1548
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

    .line 1550
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locations:[I

    .line 1552
    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->deltas:[I

    const/4 v0, 0x0

    .line 1553
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->hasWeightsValid:Z

    .line 1555
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    return-void
.end method

.method public invalidateValues()V
    .locals 1

    const/4 v0, 0x0

    .line 1559
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->groupBoundsValid:Z

    .line 1560
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->forwardLinksValid:Z

    .line 1561
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->backwardLinksValid:Z

    .line 1563
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->leadingMarginsValid:Z

    .line 1564
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->trailingMarginsValid:Z

    .line 1565
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->arcsValid:Z

    .line 1567
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->locationsValid:Z

    return-void
.end method

.method public layout(I)V
    .locals 0

    .line 1535
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setParentConstraints(II)V

    .line 1536
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    return-void
.end method

.method public setCount(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 1063
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_0

    const-string v1, "column"

    goto :goto_0

    :cond_0
    const-string v1, "row"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/TableLayout;->-$$Nest$smhandleInvalidParams(Ljava/lang/String;)V

    .line 1066
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->definedCount:I

    return-void
.end method

.method public setOrderPreserved(Z)V
    .locals 0

    .line 1074
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis;->orderPreserved:Z

    .line 1075
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateStructure()V

    return-void
.end method
