.class public final Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/RetryPolicyInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;
    }
.end annotation


# instance fields
.field private final mDelegatePolicy:Landroidx/camera/core/RetryPolicy;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    new-instance v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$1;-><init>(Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;J)V

    invoke-direct {v0, p1, p2, v1}, Landroidx/camera/core/impl/TimeoutRetryPolicy;-><init>(JLandroidx/camera/core/RetryPolicy;)V

    iput-object v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    return-void
.end method


# virtual methods
.method public copy(J)Landroidx/camera/core/RetryPolicy;
    .locals 1

    .line 70
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(J)V

    return-object v0
.end method

.method public getTimeoutInMillis()J
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    invoke-interface {v0}, Landroidx/camera/core/RetryPolicy;->getTimeoutInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    invoke-interface {v0, p1}, Landroidx/camera/core/RetryPolicy;->onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    move-result-object p1

    return-object p1
.end method
