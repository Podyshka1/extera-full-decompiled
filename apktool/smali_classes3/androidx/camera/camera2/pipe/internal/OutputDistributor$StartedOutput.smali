.class final Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/OutputDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartedOutput"
.end annotation


# instance fields
.field private final cameraFrameNumber:J

.field private final cameraOutputNumber:J

.field private final cameraOutputSequence:J

.field private final cameraTimestamp:J

.field private final complete:Lkotlinx/atomicfu/AtomicBoolean;

.field private final isOutOfOrder:Z

.field private final outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;


# direct methods
.method private constructor <init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V
    .locals 1

    const-string v0, "outputListener"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    .line 372
    iput-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    .line 373
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    .line 374
    iput-wide p6, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    .line 375
    iput-wide p8, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    .line 376
    iput-object p10, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    const/4 p1, 0x0

    .line 378
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->complete:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;-><init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V

    return-void
.end method


# virtual methods
.method public final completeWith-DvZWqE8(JLjava/lang/Object;)V
    .locals 11

    .line 384
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->complete:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    .line 389
    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    .line 390
    iget-wide v4, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    .line 391
    iget-wide v6, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    move-wide v8, p1

    move-object v10, p3

    .line 388
    invoke-interface/range {v1 .. v10}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;->onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V

    return-void

    :cond_0
    move-wide v8, p1

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Output "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " was completed multiple times!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 384
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final completeWithFailure-tXNfJfc(I)V
    .locals 2

    .line 381
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    .line 68
    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 381
    invoke-virtual {p0, v0, v1, p1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/FrameNumber;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/CameraTimestamp;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCameraFrameNumber-Ugla2oM()J
    .locals 2

    .line 372
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    return-wide v0
.end method

.method public final getCameraOutputNumber()J
    .locals 2

    .line 375
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    return-wide v0
.end method

.method public final getCameraOutputSequence()J
    .locals 2

    .line 374
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameNumber;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isOutOfOrder()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartedOutput(isOutOfOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraOutputSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cameraOutputNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outputListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
