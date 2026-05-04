.class public Lorg/telegram/ui/Charts/data/StackBarChartData;
.super Lorg/telegram/ui/Charts/data/ChartData;
.source "SourceFile"


# instance fields
.field public ySum:[J

.field public ySumSegmentTree:Lorg/telegram/messenger/SegmentTree;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/data/StackBarChartData;->init()V

    return-void
.end method


# virtual methods
.method public findMax(II)J
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySumSegmentTree:Lorg/telegram/messenger/SegmentTree;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/SegmentTree;->rMaxQ(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public init()V
    .locals 11

    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    array-length v0, v0

    .line 20
    iget-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 22
    new-array v3, v0, [J

    iput-object v3, p0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 24
    iget-object v4, p0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 26
    iget-object v5, p0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    aget-wide v6, v5, v3

    iget-object v8, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v9, v8, v3

    add-long/2addr v6, v9

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/telegram/messenger/SegmentTree;

    iget-object v1, p0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SegmentTree;-><init>([J)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySumSegmentTree:Lorg/telegram/messenger/SegmentTree;

    return-void
.end method
