.class public final Landroidx/collection/MutableScatterMap;
.super Landroidx/collection/ScatterMap;
.source "SourceFile"


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, v0}, Landroidx/collection/ScatterMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 639
    const-string v0, "Capacity must be a positive value."

    .line 61
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 640
    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterMap;->initializeStorage(I)V

    return-void
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 674
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/ScatterMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableScatterMap;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 661
    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 665
    new-array v1, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 666
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    .line 1258
    aget-wide v2, v1, v0

    const-wide/16 v4, 0xff

    shl-long/2addr v4, p1

    not-long v6, v4

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    move-object p1, v1

    .line 659
    :goto_0
    iput-object p1, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 670
    invoke-direct {p0}, Landroidx/collection/MutableScatterMap;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 648
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 652
    :goto_0
    iput p1, p0, Landroidx/collection/ScatterMap;->_capacity:I

    .line 653
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterMap;->initializeMetadata(I)V

    if-nez p1, :cond_1

    .line 654
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array v0, p1, [Ljava/lang/Object;

    :goto_1
    iput-object v0, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 655
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-array p1, p1, [Ljava/lang/Object;

    :goto_2
    iput-object p1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    return-void
.end method
