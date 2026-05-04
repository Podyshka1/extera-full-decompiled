.class public final Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
.super Landroidx/camera/camera2/pipe/compat/CameraState;
.source "SourceFile"


# instance fields
.field private final cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

.field private final cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

.field private final cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

.field private final cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

.field private final cameraException:Ljava/lang/Throwable;

.field private final cameraId:Ljava/lang/String;

.field private final cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

.field private final cameraRetryCount:Ljava/lang/Integer;

.field private final cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraClosedReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 67
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    .line 70
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 73
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    .line 76
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 80
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 83
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 86
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    const/4 v13, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    .line 60
    invoke-direct/range {v3 .. v13}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraId;->hashCode-impl(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->hashCode-impl(J)I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->hashCode-impl(I)I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraStateClosed(cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraId:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraClosedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosedReason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRetryDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraRetryDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraException:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraOpenDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraOpenDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraActiveDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraActiveDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraClosingDurationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraClosingDurationNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
