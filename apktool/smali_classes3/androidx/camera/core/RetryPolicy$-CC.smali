.class public abstract synthetic Landroidx/camera/core/RetryPolicy$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getTimeoutInMillis(Landroidx/camera/core/RetryPolicy;)J
    .locals 2

    .line 171
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/camera/core/RetryPolicy;->NEVER:Landroidx/camera/core/RetryPolicy;

    return-void
.end method

.method public static getDefaultRetryTimeoutInMillis()J
    .locals 2

    .line 149
    const-wide/16 v0, 0x1770

    return-wide v0
.end method

.method public static synthetic lambda$static$0(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
    .locals 0

    .line 104
    sget-object p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->NOT_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    return-object p0
.end method
