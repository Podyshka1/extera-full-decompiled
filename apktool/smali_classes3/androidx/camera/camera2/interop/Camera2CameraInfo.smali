.class public final Landroidx/camera/camera2/interop/Camera2CameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;


# instance fields
.field public final synthetic cameraId:Ljava/lang/String;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final extensionsSpecificChars:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 33
    iput-object p2, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->extensionsSpecificChars:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/interop/Camera2CameraInfo;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;)V

    return-void
.end method

.method public static final from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->extensionsSpecificChars:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 49
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p1

    .line 54
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt;->getSafely(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
