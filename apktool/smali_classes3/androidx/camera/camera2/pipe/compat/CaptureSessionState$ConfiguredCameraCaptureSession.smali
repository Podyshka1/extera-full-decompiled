.class final Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfiguredCameraCaptureSession"
.end annotation


# instance fields
.field private final captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

.field private final processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

.field private final session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 647
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    .line 648
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCaptureSequenceProcessor()Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;
    .locals 1

    .line 648
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    return-object v0
.end method

.method public final getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;
    .locals 1

    .line 647
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    return-object v0
.end method

.method public final getSession()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
    .locals 1

    .line 646
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfiguredCameraCaptureSession(session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureSequenceProcessor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
