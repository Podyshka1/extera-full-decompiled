.class public final Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;-><init>()V

    return-void
.end method

.method private final estimateRealtimeNsToMonotonicNs()J
    .locals 14

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v11, v9, v5

    cmp-long v13, v11, v0

    if-gez v13, :cond_0

    add-long/2addr v5, v9

    const/4 v0, 0x2

    int-to-long v0, v0

    .line 132
    div-long/2addr v5, v0

    sub-long/2addr v7, v5

    move-wide v2, v7

    move-wide v0, v11

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private final estimateRealtimeNsToUtcMs()J
    .locals 14

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    sub-long v11, v9, v5

    cmp-long v13, v11, v0

    if-gez v13, :cond_0

    add-long/2addr v5, v9

    const-wide/32 v0, 0x1e8480

    .line 93
    div-long/2addr v5, v0

    sub-long/2addr v5, v7

    move-wide v2, v5

    move-wide v0, v11

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method


# virtual methods
.method public final estimate()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 6

    .line 49
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimateRealtimeNsToUtcMs()J

    move-result-wide v1

    .line 50
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimateRealtimeNsToMonotonicNs()J

    move-result-wide v3

    .line 51
    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
