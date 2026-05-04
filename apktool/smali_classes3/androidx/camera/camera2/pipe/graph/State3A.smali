.class public final Landroidx/camera/camera2/pipe/graph/State3A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aeLock:Ljava/lang/Boolean;

.field private final aeMode:Landroidx/camera/camera2/pipe/AeMode;

.field private final aeRegions:Ljava/util/List;

.field private final afLock:Ljava/lang/Boolean;

.field private final afMode:Landroidx/camera/camera2/pipe/AfMode;

.field private final afRegions:Ljava/util/List;

.field private final awbLock:Ljava/lang/Boolean;

.field private final awbMode:Landroidx/camera/camera2/pipe/AwbMode;

.field private final awbRegions:Ljava/util/List;

.field private final flashMode:Landroidx/camera/camera2/pipe/FlashMode;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    .line 33
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afMode:Landroidx/camera/camera2/pipe/AfMode;

    .line 34
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    .line 35
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/State3A;->flashMode:Landroidx/camera/camera2/pipe/FlashMode;

    .line 36
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeRegions:Ljava/util/List;

    .line 37
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afRegions:Ljava/util/List;

    .line 38
    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbRegions:Ljava/util/List;

    .line 39
    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeLock:Ljava/lang/Boolean;

    .line 40
    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afLock:Ljava/lang/Boolean;

    .line 41
    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbLock:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object p2, v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object p3, v2

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object p4, v2

    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v1, p5

    :goto_0
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_5

    move-object v3, v2

    goto :goto_1

    :cond_5
    move-object v3, p6

    :goto_1
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_6

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, p7

    :goto_2
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_7

    move-object v5, v2

    goto :goto_3

    :cond_7
    move-object v5, p8

    :goto_3
    and-int/lit16 v6, v0, 0x100

    if-eqz v6, :cond_8

    move-object v6, v2

    goto :goto_4

    :cond_8
    move-object/from16 v6, p9

    :goto_4
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v2, p10

    :goto_5
    const/4 v0, 0x0

    move-object p5, p4

    move-object/from16 p12, v0

    move-object p6, v1

    move-object/from16 p11, v2

    move-object p7, v3

    move-object p8, v4

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p12}, Landroidx/camera/camera2/pipe/graph/State3A;-><init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/graph/State3A;-><init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final copy-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroidx/camera/camera2/pipe/graph/State3A;
    .locals 12

    new-instance v0, Landroidx/camera/camera2/pipe/graph/State3A;

    const/4 v11, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/pipe/graph/State3A;-><init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/graph/State3A;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/graph/State3A;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afMode:Landroidx/camera/camera2/pipe/AfMode;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->afMode:Landroidx/camera/camera2/pipe/AfMode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->flashMode:Landroidx/camera/camera2/pipe/FlashMode;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->flashMode:Landroidx/camera/camera2/pipe/FlashMode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeRegions:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->aeRegions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afRegions:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->afRegions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbRegions:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->awbRegions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeLock:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->aeLock:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afLock:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/graph/State3A;->afLock:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbLock:Ljava/lang/Boolean;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/graph/State3A;->awbLock:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAeLock()Ljava/lang/Boolean;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeLock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAeMode-O_cDUUs()Landroidx/camera/camera2/pipe/AeMode;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    return-object v0
.end method

.method public final getAeRegions()Ljava/util/List;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeRegions:Ljava/util/List;

    return-object v0
.end method

.method public final getAfLock()Ljava/lang/Boolean;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afLock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAfMode-32_E3BI()Landroidx/camera/camera2/pipe/AfMode;
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afMode:Landroidx/camera/camera2/pipe/AfMode;

    return-object v0
.end method

.method public final getAfRegions()Ljava/util/List;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afRegions:Ljava/util/List;

    return-object v0
.end method

.method public final getAwbLock()Ljava/lang/Boolean;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbLock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAwbMode-aLFtWSU()Landroidx/camera/camera2/pipe/AwbMode;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    return-object v0
.end method

.method public final getAwbRegions()Ljava/util/List;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbRegions:Ljava/util/List;

    return-object v0
.end method

.method public final getFlashMode-cL-19HE()Landroidx/camera/camera2/pipe/FlashMode;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->flashMode:Landroidx/camera/camera2/pipe/FlashMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->hashCode-impl(I)I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afMode:Landroidx/camera/camera2/pipe/AfMode;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/AfMode;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AfMode;->hashCode-impl(I)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/AwbMode;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AwbMode;->hashCode-impl(I)I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->flashMode:Landroidx/camera/camera2/pipe/FlashMode;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/FlashMode;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/FlashMode;->hashCode-impl(I)I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeRegions:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afRegions:Ljava/util/List;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbRegions:Ljava/util/List;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeLock:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afLock:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbLock:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State3A(aeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", afMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afMode:Landroidx/camera/camera2/pipe/AfMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", awbMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flashMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->flashMode:Landroidx/camera/camera2/pipe/FlashMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aeRegions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeRegions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", afRegions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afRegions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", awbRegions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbRegions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeLock:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", afLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->afLock:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", awbLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/State3A;->awbLock:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
