.class public abstract Landroidx/camera/camera2/impl/CapturePipelineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_3A_TIMEOUT_IN_NS:J

.field private static final CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS:J

.field private static final CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS:J

.field private static final CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS:J

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sput-wide v1, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_3A_TIMEOUT_IN_NS:J

    const-wide/16 v1, 0x5

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sput-wide v1, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS:J

    const-wide/16 v1, 0x2

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS:J

    return-void
.end method

.method public static final synthetic access$getCHECK_3A_TIMEOUT_IN_NS$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_3A_TIMEOUT_IN_NS:J

    return-wide v0
.end method

.method public static final synthetic access$getCHECK_3A_WITH_FLASH_TIMEOUT_IN_NS$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS:J

    return-wide v0
.end method

.method public static final synthetic access$getCHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS:J

    return-wide v0
.end method

.method public static final synthetic access$getCHECK_FLASH_REQUIRED_TIMEOUT_IN_NS$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/camera/camera2/impl/CapturePipelineKt;->CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS:J

    return-wide v0
.end method
