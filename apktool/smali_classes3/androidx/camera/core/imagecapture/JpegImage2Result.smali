.class public Landroidx/camera/core/imagecapture/JpegImage2Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Operation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/camera/core/processing/Packet;)Landroidx/camera/core/ImageProxy;
    .locals 8

    .line 42
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    .line 45
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v2

    .line 46
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v3

    .line 47
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    move-result v5

    .line 48
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v6

    .line 49
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getFlashState()I

    move-result v7

    .line 44
    invoke-static/range {v2 .. v7}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;I)Landroidx/camera/core/ImageInfo;

    move-result-object v1

    .line 51
    new-instance v2, Landroidx/camera/core/SettableImageProxy;

    .line 52
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 53
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v2, p1}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Landroidx/camera/core/processing/Packet;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/JpegImage2Result;->apply(Landroidx/camera/core/processing/Packet;)Landroidx/camera/core/ImageProxy;

    move-result-object p1

    return-object p1
.end method
