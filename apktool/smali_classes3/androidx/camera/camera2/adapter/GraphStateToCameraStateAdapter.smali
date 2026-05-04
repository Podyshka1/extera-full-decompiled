.class public final Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/GraphStateListener;


# instance fields
.field public cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/CameraStateAdapter;)V
    .locals 1

    const-string v0, "cameraStateAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    return-void
.end method


# virtual methods
.method public final getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "cameraGraph"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V
    .locals 2

    const-string v0, "graphStateError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStarted()V
    .locals 3

    .line 36
    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStarting()V
    .locals 3

    .line 32
    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStopped()V
    .locals 3

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStopping()V
    .locals 3

    .line 40
    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public final setCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    return-void
.end method
