.class public Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCameraUseInconsistentTimebaseQuirk:Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

.field private final mInputTimebase:Landroidx/camera/core/impl/Timebase;

.field private mResolvedInputTimebase:Landroidx/camera/core/impl/Timebase;

.field private final mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

.field private mUptimeToRealtimeOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/TimeProvider;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mUptimeToRealtimeOffsetUs:J

    .line 69
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    .line 70
    iput-object p2, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 71
    iput-object p3, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mCameraUseInconsistentTimebaseQuirk:Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    return-void
.end method

.method private calculateUptimeToRealtimeOffsetUs()J
    .locals 17

    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    const/4 v8, 0x3

    if-ge v5, v8, :cond_2

    .line 153
    iget-object v8, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v8}, Landroidx/camera/video/internal/encoder/TimeProvider;->uptimeUs()J

    move-result-wide v8

    .line 154
    iget-object v10, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v10}, Landroidx/camera/video/internal/encoder/TimeProvider;->realtimeUs()J

    move-result-wide v10

    .line 155
    iget-object v12, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v12}, Landroidx/camera/video/internal/encoder/TimeProvider;->uptimeUs()J

    move-result-wide v12

    sub-long v14, v12, v8

    if-eqz v5, :cond_0

    cmp-long v16, v14, v1

    if-gez v16, :cond_1

    :cond_0
    add-long/2addr v8, v12

    const/4 v1, 0x1

    shr-long v1, v8, v1

    sub-long v6, v10, v1

    move-wide v1, v14

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private exceedUptimeRealtimeDiffThreshold()Z
    .locals 4

    .line 135
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/TimeProvider;->uptimeUs()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/TimeProvider;->realtimeUs()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x2dc6c0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCloseToRealtime(J)Z
    .locals 4

    .line 141
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/TimeProvider;->uptimeUs()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/TimeProvider;->realtimeUs()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private resolveInputTimebase(J)Landroidx/camera/core/impl/Timebase;
    .locals 7

    .line 100
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mCameraUseInconsistentTimebaseQuirk:Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    const/4 v1, 0x1

    const-string v2, "VideoTimebaseConverter"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "CameraUseInconsistentTimebaseQuirk is enabled"

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->exceedUptimeRealtimeDiffThreshold()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 111
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->isCloseToRealtime(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    sget-object p1, Landroidx/camera/core/impl/Timebase;->REALTIME:Landroidx/camera/core/impl/Timebase;

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    :goto_1
    if-eqz v0, :cond_3

    .line 113
    iget-object p2, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    if-eq p1, p2, :cond_3

    .line 115
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", SOC: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 115
    :cond_2
    const-string v0, ""

    .line 126
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v4, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v5, v1

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v5, v3

    const/4 v1, 0x3

    aput-object p2, v5, v1

    const/4 p2, 0x4

    aput-object v0, v5, p2

    const/4 p2, 0x5

    aput-object v4, v5, p2

    const/4 p2, 0x6

    aput-object p1, v5, p2

    .line 118
    const-string p2, "Detected camera timebase inconsistent. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: %s, Model: %s, Hardware: %s, API Level: %d%s].\nCamera timebase is inconsistent. The timebase reported by the camera is %s, but the actual timebase contained in the frame is detected as %s."

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 129
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect input timebase = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 108
    :cond_4
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    return-object p1
.end method


# virtual methods
.method public convertToUptimeUs(J)J
    .locals 4

    .line 81
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mResolvedInputTimebase:Landroidx/camera/core/impl/Timebase;

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->resolveInputTimebase(J)Landroidx/camera/core/impl/Timebase;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mResolvedInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 84
    :cond_0
    sget-object v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter$1;->$SwitchMap$androidx$camera$core$impl$Timebase:[I

    iget-object v1, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mResolvedInputTimebase:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-wide p1

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown timebase: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mResolvedInputTimebase:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 86
    :cond_2
    iget-wide v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mUptimeToRealtimeOffsetUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 87
    invoke-direct {p0}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->calculateUptimeToRealtimeOffsetUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mUptimeToRealtimeOffsetUs:J

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUptimeToRealtimeOffsetUs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mUptimeToRealtimeOffsetUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTimebaseConverter"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_3
    iget-wide v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->mUptimeToRealtimeOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
