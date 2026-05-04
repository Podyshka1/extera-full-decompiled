.class final Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClosingInfo"
.end annotation


# instance fields
.field private final closingTimestamp:J

.field private final errorCode:Landroidx/camera/camera2/pipe/CameraError;

.field private final exception:Ljava/lang/Throwable;

.field private final reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 550
    iput-wide p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    .line 551
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 552
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 550
    sget-object p2, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    new-instance p2, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    invoke-direct {p2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;-><init>()V

    .line 70
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide p2

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move-object v4, p3

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 548
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/core/TimestampNs;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getClosingTimestamp-vQl9yQU()J
    .locals 2

    .line 550
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    return-wide v0
.end method

.method public final getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 1

    .line 551
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 552
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;
    .locals 1

    .line 549
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/TimestampNs;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->hashCode-impl(I)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClosingInfo(reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closingTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/TimestampNs;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
