.class public final Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraUseCaseAdapterProvider;


# instance fields
.field private final cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

.field private final cameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private final streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

.field private final useCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 1

    const-string v0, "cameraRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseConfigFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamSpecsCalculator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 72
    iput-object p2, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 73
    iput-object p3, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->useCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 74
    iput-object p4, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    return-void
.end method

.method private final provideInternal(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .locals 10

    .line 113
    new-instance v0, Landroidx/camera/core/internal/CameraUseCaseAdapter;

    .line 120
    iget-object v7, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 121
    iget-object v8, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    .line 122
    iget-object v9, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->useCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 113
    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/internal/CameraUseCaseAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/internal/StreamSpecsCalculator;Landroidx/camera/core/impl/UseCaseConfigFactory;)V

    return-object v0
.end method

.method static synthetic provideInternal$default(Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;ILjava/lang/Object;)Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .locals 1

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p8, p7, 0x10

    .line 105
    const-string v0, "DEFAULT"

    if-eqz p8, :cond_2

    .line 110
    sget-object p5, Landroidx/camera/core/CompositionSettings;->DEFAULT:Landroidx/camera/core/CompositionSettings;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    .line 111
    sget-object p6, Landroidx/camera/core/CompositionSettings;->DEFAULT:Landroidx/camera/core/CompositionSettings;

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-direct/range {p0 .. p6}, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->provideInternal(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public provide(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .locals 1

    const-string v0, "camera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterCameraInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositionSettings"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "secondaryCompositionSettings"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct/range {p0 .. p6}, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->provideInternal(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object p1

    return-object p1
.end method

.method public provide(Ljava/lang/String;)Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .locals 10

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    const-string p1, "getCamera(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v4, Landroidx/camera/core/impl/AdapterCameraInfo;

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p1

    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Landroidx/camera/core/impl/AdapterCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V

    const/16 v8, 0x3a

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 79
    invoke-static/range {v1 .. v9}, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->provideInternal$default(Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;ILjava/lang/Object;)Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object p1

    return-object p1
.end method
