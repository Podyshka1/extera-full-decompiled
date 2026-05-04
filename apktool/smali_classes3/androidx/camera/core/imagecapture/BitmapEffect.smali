.class public Landroidx/camera/core/imagecapture/BitmapEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Operation;


# instance fields
.field private final mProcessor:Landroidx/camera/core/processing/InternalImageProcessor;


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/InternalImageProcessor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/camera/core/imagecapture/BitmapEffect;->mProcessor:Landroidx/camera/core/processing/InternalImageProcessor;

    return-void
.end method


# virtual methods
.method public apply(Landroidx/camera/core/processing/Packet;)Landroidx/camera/core/processing/Packet;
    .locals 3

    .line 54
    iget-object v0, p0, Landroidx/camera/core/imagecapture/BitmapEffect;->mProcessor:Landroidx/camera/core/processing/InternalImageProcessor;

    new-instance v1, Landroidx/camera/core/processing/ImageProcessorRequest;

    new-instance v2, Landroidx/camera/core/imagecapture/RgbaImageProxy;

    invoke-direct {v2, p1}, Landroidx/camera/core/imagecapture/RgbaImageProxy;-><init>(Landroidx/camera/core/processing/Packet;)V

    const/4 p1, 0x1

    invoke-direct {v1, v2, p1}, Landroidx/camera/core/processing/ImageProcessorRequest;-><init>(Landroidx/camera/core/ImageProxy;I)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/InternalImageProcessor;->safeProcess(Landroidx/camera/core/ImageProcessor$Request;)Landroidx/camera/core/ImageProcessor$Response;

    const/4 p1, 0x0

    .line 59
    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroidx/camera/core/processing/Packet;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/BitmapEffect;->apply(Landroidx/camera/core/processing/Packet;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method
