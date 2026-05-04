.class public final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

.field private final token:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V
    .locals 1

    const-string v0, "activeCamera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/Token;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/Token;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;
    .locals 1

    .line 644
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-object v0
.end method

.method public final getToken()Landroidx/camera/camera2/pipe/core/Token;
    .locals 1

    .line 644
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/Token;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(activeCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
