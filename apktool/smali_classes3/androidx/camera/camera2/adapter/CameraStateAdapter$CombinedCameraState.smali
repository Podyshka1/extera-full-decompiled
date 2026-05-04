.class public final Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CombinedCameraState"
.end annotation


# instance fields
.field private final error:Landroidx/camera/core/CameraState$StateError;

.field private final state:Landroidx/camera/core/impl/CameraInternal$State;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    .line 249
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/CameraState$StateError;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 247
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/CameraState$StateError;

    iget-object p1, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/CameraState$StateError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getError()Landroidx/camera/core/CameraState$StateError;
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/CameraState$StateError;

    return-object v0
.end method

.method public final getState()Landroidx/camera/core/impl/CameraInternal$State;
    .locals 1

    .line 248
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/CameraState$StateError;

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

    const-string v1, "CombinedCameraState(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/CameraState$StateError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
