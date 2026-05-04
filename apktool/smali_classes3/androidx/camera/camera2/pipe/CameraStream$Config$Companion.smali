.class public final Landroidx/camera/camera2/pipe/CameraStream$Config$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraStream$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraStream$Config$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Landroidx/camera/camera2/pipe/CameraStream$Config$Companion;Landroidx/camera/camera2/pipe/OutputStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraStream$Config$Companion;->create(Landroidx/camera/camera2/pipe/OutputStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;)Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/OutputStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;)Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/camera/camera2/pipe/CameraStream$Config;-><init>(Ljava/util/List;Landroidx/camera/camera2/pipe/ImageSourceConfig;)V

    return-object v0
.end method
