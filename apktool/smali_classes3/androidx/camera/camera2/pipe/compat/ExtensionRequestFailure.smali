.class public final Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestFailure;


# instance fields
.field private final frameNumber:J

.field private final reason:I

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final wasImageCaptured:Z


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJI)V
    .locals 1

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 31
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    .line 32
    iput-wide p3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    .line 33
    iput p5, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/FrameNumber;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    iget p1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getReason()I
    .locals 1

    .line 33
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    return v0
.end method

.method public getWasImageCaptured()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameNumber;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionRequestFailure(requestMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasImageCaptured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
