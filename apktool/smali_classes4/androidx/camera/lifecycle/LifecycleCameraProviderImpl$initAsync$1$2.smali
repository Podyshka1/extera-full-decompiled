.class public final Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$camera_lifecycle(Landroid/content/Context;Landroidx/camera/core/CameraXConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;


# direct methods
.method constructor <init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->this$0:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->this$0:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->shutdownAsync$camera_lifecycle(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
