.class final Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$3$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$3$8;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/camera/camera2/pipe/FrameInfo;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$3$8;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$toCameraCaptureResult(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object p1

    const/4 v0, 0x1

    .line 441
    invoke-static {p1, v0}, Landroidx/camera/core/impl/ConvergenceUtils;->is3AConverged(Landroidx/camera/core/impl/CameraCaptureResult;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$3$8;->invoke(Landroidx/camera/camera2/pipe/FrameInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
