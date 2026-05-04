.class public interface abstract Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
    }
.end annotation


# virtual methods
.method public abstract getCameraAvailability()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getCameraPriorities()Lkotlinx/coroutines/flow/SharedFlow;
.end method
