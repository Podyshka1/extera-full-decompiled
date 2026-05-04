.class public final Landroidx/camera/camera2/pipe/media/AndroidImageWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;


# instance fields
.field private final format:I

.field private final imageWriter:Landroid/media/ImageWriter;

.field private final inputStreamId:I

.field private final maxImages:I

.field private final onImageReleasedListener:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->Companion:Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/media/ImageWriter;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    .line 36
    iput p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->inputStreamId:I

    const/4 p2, 0x0

    .line 38
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->onImageReleasedListener:Lkotlinx/atomicfu/AtomicRef;

    .line 39
    invoke-virtual {p1}, Landroid/media/ImageWriter;->getMaxImages()I

    move-result p2

    iput p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->maxImages:I

    .line 41
    invoke-virtual {p1}, Landroid/media/ImageWriter;->getFormat()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->format:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/ImageWriter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;-><init>(Landroid/media/ImageWriter;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    return-void
.end method

.method public onImageReleased(Landroid/media/ImageWriter;)V
    .locals 0

    .line 74
    iget-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->onImageReleasedListener:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public queueInputImage(Landroidx/camera/camera2/pipe/media/ImageWrapper;)Z
    .locals 5

    const-string v0, "CXCP"

    const-string v1, "image"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 45
    :try_start_0
    const-class v2, Landroid/media/Image;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    if-nez v2, :cond_1

    .line 47
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unwrap image wrapper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    iget-object v3, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3, v2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    .line 53
    :goto_1
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to queue image to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " due to error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Ignoring failure and closing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    invoke-static {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageWriter-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->constructor-impl(I)I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->inputStreamId:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/InputStreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-class v0, Landroid/media/ImageWriter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
