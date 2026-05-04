.class final Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraValidatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValidationCriteria"
.end annotation


# instance fields
.field private final checkBack:Z

.field private final checkFront:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    iput-boolean p2, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    iget-boolean v3, p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    iget-boolean p1, p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCheckBack()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    return v0
.end method

.method public final getCheckFront()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidationCriteria(checkBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", checkFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
