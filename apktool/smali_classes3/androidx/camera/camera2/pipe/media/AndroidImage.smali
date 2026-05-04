.class public final Landroidx/camera/camera2/pipe/media/AndroidImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageWrapper;


# instance fields
.field private final format:I

.field private final height:I

.field private final image:Landroid/media/Image;

.field private final lock:Ljava/lang/Object;

.field private final timestamp:J

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 2

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->image:Landroid/media/Image;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->lock:Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->format:I

    .line 62
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->width:I

    .line 63
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->height:I

    .line 64
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->timestamp:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void
.end method

.method public getFormat()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->format:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 63
    iget v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->height:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 64
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 62
    iget v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidImage;->getFormat()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->constructor-impl(I)I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidImage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-class v0, Landroid/media/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->image:Landroid/media/Image;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.media.AndroidImage.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 84
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage;->image:Landroid/media/Image;

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->unwrapAsHardwareBuffer(Landroid/media/Image;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
