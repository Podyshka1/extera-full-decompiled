.class public final synthetic Landroidx/camera/core/RetryPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/RetryPolicy;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getTimeoutInMillis()J
    .locals 2

    .line 0
    invoke-static {p0}, Landroidx/camera/core/RetryPolicy$-CC;->$default$getTimeoutInMillis(Landroidx/camera/core/RetryPolicy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
    .locals 0

    .line 0
    invoke-static {p1}, Landroidx/camera/core/RetryPolicy$-CC;->lambda$static$0(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    move-result-object p1

    return-object p1
.end method
