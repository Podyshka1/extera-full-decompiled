.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->toCameraCaptureResult(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final frameNumber:J

.field private final metadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/FrameMetadata;Landroidx/camera/camera2/impl/CapturePipelineImpl;)V
    .locals 2

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    .line 606
    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->metadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    .line 610
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->camera:Ljava/lang/String;

    .line 611
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->frameNumber:J

    .line 612
    invoke-static {p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getEmptyRequestMetadata$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-void
.end method


# virtual methods
.method public getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;->metadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
