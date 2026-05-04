.class public final Landroidx/camera/camera2/pipe/InputStream$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final maxImages:I

.field private final stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

.field private streamFormat:I


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/CameraStream$Config;II)V
    .locals 1

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 528
    iput p2, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->maxImages:I

    .line 529
    iput p3, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->streamFormat:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraStream$Config;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/InputStream$Config;-><init>(Landroidx/camera/camera2/pipe/CameraStream$Config;II)V

    return-void
.end method


# virtual methods
.method public final getMaxImages()I
    .locals 1

    .line 528
    iget v0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->maxImages:I

    return v0
.end method

.method public final getStream()Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 1

    .line 527
    iget-object v0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    return-object v0
.end method

.method public final getStreamFormat-8FPWQzE()I
    .locals 1

    .line 529
    iget v0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->streamFormat:I

    return v0
.end method
