.class public final Landroidx/camera/camera2/pipe/GraphState$GraphStateError;
.super Landroidx/camera/camera2/pipe/GraphState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/GraphState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GraphStateError"
.end annotation


# instance fields
.field private final cameraError:I

.field private final willAttemptRetry:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 1

    .line 817
    const-string v0, "GRAPH_ERROR"

    .line 814
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/GraphState;-><init>(Ljava/lang/String;)V

    .line 815
    iput p1, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    .line 816
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getCameraError-v7Vf74A()I
    .locals 1

    .line 815
    iget v0, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    return v0
.end method

.method public final getWillAttemptRetry()Z
    .locals 1

    .line 816
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/camera/camera2/pipe/GraphState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(cameraError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", willAttemptRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
