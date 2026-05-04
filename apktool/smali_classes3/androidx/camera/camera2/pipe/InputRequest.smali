.class public final Landroidx/camera/camera2/pipe/InputRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

.field private final image:Landroidx/camera/camera2/pipe/media/ImageWrapper;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/media/ImageWrapper;Landroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 1

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Landroidx/camera/camera2/pipe/InputRequest;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/InputRequest;->frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/InputRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/InputRequest;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/InputRequest;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/InputRequest;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/InputRequest;->frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/InputRequest;->frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/camera/camera2/pipe/InputRequest;->frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

    return-object v0
.end method

.method public final getImage()Landroidx/camera/camera2/pipe/media/ImageWrapper;
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/camera/camera2/pipe/InputRequest;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/InputRequest;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/InputRequest;->frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputRequest(image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/InputRequest;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frameInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/InputRequest;->frameInfo:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
