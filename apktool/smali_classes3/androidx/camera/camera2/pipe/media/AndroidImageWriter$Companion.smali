.class public final Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/AndroidImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create-U86x6Zg(Landroid/view/Surface;IILandroidx/camera/camera2/pipe/StreamFormat;Landroid/os/Handler;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;
    .locals 3

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_3

    const/16 v0, 0x36

    if-gt p3, v0, :cond_2

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    if-eqz p4, :cond_0

    .line 112
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/StreamFormat;->unbox-impl()I

    move-result p4

    invoke-static {p1, p3, p4}, Landroidx/camera/camera2/pipe/compat/Api29Compat;->imageWriterNewInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 115
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/StreamFormat;->unbox-impl()I

    move-result p4

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamFormat;->toString-impl(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ") for "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/InputStreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ". Android "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string p4, " does not support creating ImageWriters with formats. This may lead to unexpected behaviors."

    .line 116
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 71
    const-string v0, "CXCP"

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    invoke-static {p1, p3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p1

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    :goto_0
    new-instance p3, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;-><init>(Landroid/media/ImageWriter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    invoke-virtual {p1, p3, p5}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    return-object p3

    .line 104
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max images for ImageWriters is restricted to 54 to prevent overloading downstream consumer components."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max images ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be > 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
