.class public final Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/Camera2ExtensionsInfo$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo$Companion;


# instance fields
.field private final cachedCharacteristics:Ljava/util/Map;

.field private final cachedSupportedExtensions:Ljava/util/Map;

.field private final cachedSupportedOutputSizes:Ljava/util/Map;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->Companion:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 1

    const-string v0, "cameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->lock:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cachedCharacteristics:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cachedSupportedOutputSizes:Ljava/util/Map;

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cachedSupportedExtensions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cachedCharacteristics:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraManager;->getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v1

    .line 52
    iget-object v2, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;->cachedCharacteristics:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p1, "also(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1
.end method
