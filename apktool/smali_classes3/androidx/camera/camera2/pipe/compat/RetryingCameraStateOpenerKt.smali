.class public abstract Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

.field private static final activeResumeCameraRetryTimeoutNs:J

.field private static final defaultCameraRetryTimeoutNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x2540be400L

    .line 61
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->defaultCameraRetryTimeoutNs:J

    const-wide v0, 0x1a3185c5000L

    .line 63
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryTimeoutNs:J

    const-wide v0, 0x1bf08eb000L

    .line 71
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v0

    const-wide v1, 0x45d964b800L

    .line 72
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/camera/camera2/pipe/core/DurationNs;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 70
    sput-object v2, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

    return-void
.end method

.method public static final synthetic access$getActiveResumeCameraRetryThresholds$p()[Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object v0
.end method

.method public static final synthetic access$getActiveResumeCameraRetryTimeoutNs$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryTimeoutNs:J

    return-wide v0
.end method

.method public static final synthetic access$getDefaultCameraRetryTimeoutNs$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->defaultCameraRetryTimeoutNs:J

    return-wide v0
.end method
