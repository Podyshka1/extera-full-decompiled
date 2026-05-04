.class public final Landroidx/camera/camera2/pipe/MetadataTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;
    }
.end annotation


# instance fields
.field private final future:I

.field private final past:I

.field private final transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;


# direct methods
.method public constructor <init>(IILandroidx/camera/camera2/pipe/MetadataTransform$TransformFn;)V
    .locals 1

    const-string/jumbo v0, "transformFn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->past:I

    .line 88
    iput p2, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->future:I

    .line 97
    iput-object p3, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;

    .line 100
    const-string p3, "Check failed."

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILandroidx/camera/camera2/pipe/MetadataTransform$TransformFn;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 97
    new-instance p3, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    invoke-direct {p3}, Landroidx/camera/camera2/pipe/MetadataTransform$1;-><init>()V

    .line 75
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/MetadataTransform;-><init>(IILandroidx/camera/camera2/pipe/MetadataTransform$TransformFn;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/MetadataTransform;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/MetadataTransform;

    iget v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->past:I

    iget v3, p1, Landroidx/camera/camera2/pipe/MetadataTransform;->past:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->future:I

    iget v3, p1, Landroidx/camera/camera2/pipe/MetadataTransform;->future:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/MetadataTransform;->transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->past:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->future:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetadataTransform(past="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->past:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", future="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->future:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformFn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/MetadataTransform;->transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
