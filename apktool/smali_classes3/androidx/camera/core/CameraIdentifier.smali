.class public final Landroidx/camera/core/CameraIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraIdentifier$Factory;
    }
.end annotation


# instance fields
.field private final cameraIds:Ljava/util/List;

.field private final compatibilityId:Landroidx/camera/core/impl/Identifier;


# direct methods
.method private constructor <init>(Ljava/util/List;Landroidx/camera/core/impl/Identifier;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    .line 104
    iput-object p2, p0, Landroidx/camera/core/CameraIdentifier;->compatibilityId:Landroidx/camera/core/impl/Identifier;

    .line 107
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "Camera ID set cannot be empty."

    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/camera/core/impl/Identifier;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/CameraIdentifier;-><init>(Ljava/util/List;Landroidx/camera/core/impl/Identifier;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/CameraIdentifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 163
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    check-cast p1, Landroidx/camera/core/CameraIdentifier;

    iget-object v3, p1, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 164
    :cond_2
    iget-object v1, p0, Landroidx/camera/core/CameraIdentifier;->compatibilityId:Landroidx/camera/core/impl/Identifier;

    iget-object p1, p1, Landroidx/camera/core/CameraIdentifier;->compatibilityId:Landroidx/camera/core/impl/Identifier;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCameraIds()Ljava/util/List;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    return-object v0
.end method

.method public final getInternalId()Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    const-string v0, "getInternalId() is only available for single-camera identifiers."

    .line 120
    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 170
    iget-object v0, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v1, p0, Landroidx/camera/core/CameraIdentifier;->compatibilityId:Landroidx/camera/core/impl/Identifier;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraIdentifier{cameraIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Landroidx/camera/core/CameraIdentifier;->compatibilityId:Landroidx/camera/core/impl/Identifier;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", compatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 176
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
