.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraExtensionMetadata;


# instance fields
.field private final _isCaptureProgressSupported:Lkotlin/Lazy;

.field private final _isPostviewSupported:Lkotlin/Lazy;

.field private final _requestKeys:Lkotlin/Lazy;

.field private final _resultKeys:Lkotlin/Lazy;

.field private final camera:Ljava/lang/String;

.field private final cameraExtension:I

.field private final extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

.field private final isRedacted:Z

.field private final metadata:Ljava/util/Map;

.field private final supportedExtensionSizesByClass:Ljava/util/Map;

.field private final supportedExtensionSizesByFormat:Ljava/util/Map;

.field private final supportedPostviewSizes:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;)V
    .locals 1

    const-string v0, "camera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionCharacteristics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->camera:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->isRedacted:Z

    .line 43
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->cameraExtension:I

    .line 44
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    .line 45
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->metadata:Ljava/util/Map;

    .line 48
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByFormat:Ljava/util/Map;

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedExtensionSizesByClass:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->supportedPostviewSizes:Ljava/util/Map;

    .line 50
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 149
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_requestKeys:Lkotlin/Lazy;

    .line 50
    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 162
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_resultKeys:Lkotlin/Lazy;

    .line 27
    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 172
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isPostviewSupported:Lkotlin/Lazy;

    .line 27
    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;

    invoke-direct {p2, p0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 181
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isCaptureProgressSupported:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;-><init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$getExtensionCharacteristics$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    return-object p0
.end method


# virtual methods
.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraExtension()I
    .locals 1

    .line 43
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->cameraExtension:I

    return v0
.end method

.method public isPostviewSupported()Z
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isPostviewSupported:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->extensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
