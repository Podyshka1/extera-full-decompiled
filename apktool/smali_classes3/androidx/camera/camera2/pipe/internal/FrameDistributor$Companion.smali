.class public final Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$selectTimestampMatcher-5y4XNsE(Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 0

    .line 324
    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;->selectTimestampMatcher-5y4XNsE(ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0
.end method

.method private final selectTimestampMatcher-5y4XNsE(ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 0

    const/16 p1, 0x21

    if-eqz p4, :cond_4

    .line 392
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p1, :cond_1

    .line 393
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1740
    instance-of p3, p2, Ljava/util/Collection;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 1741
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 394
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    goto :goto_0

    .line 399
    :cond_1
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-ge p2, p3, :cond_3

    if-ge p2, p1, :cond_2

    .line 351
    sget-object p1, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p1

    return-object p1

    .line 405
    :cond_2
    throw p4

    .line 400
    :cond_3
    throw p4

    .line 380
    :cond_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p1, :cond_6

    .line 381
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1761
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 1762
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 382
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    sget-object p2, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_REALTIME-6HVI0MA()I

    goto :goto_2

    .line 376
    :cond_6
    :goto_3
    sget-object p1, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p1

    return-object p1
.end method
