.class public final Landroidx/camera/camera2/config/UseCaseCameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;


# instance fields
.field private final cameraGraphFactory:Lkotlin/jvm/functions/Function1;

.field private final graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

.field private final lazyCreationResult:Lkotlin/Lazy;

.field private final sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;


# direct methods
.method public static synthetic $r8$lambda$cN9bs2FiqZ_7BAECL0YWz7rNXsA(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->provideUseCaseGraphContext$lambda$1(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wBKLl4Khp_wXx4IT-qUufaPdjA4(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->provideUseCaseGraphContext$lambda$2(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->Companion:Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)V
    .locals 0

    const-string p4, "cameraGraphFactory"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "graphStateToCameraStateAdapter"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "sessionConfigAdapter"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "lazyCreationResult"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lkotlin/jvm/functions/Function1;

    .line 74
    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 75
    iput-object p3, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 77
    iput-object p5, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/config/UseCaseCameraConfig;Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;ILjava/lang/Object;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->copy(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object p0

    return-object p0
.end method

.method private static final provideUseCaseGraphContext$lambda$1(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method private static final provideUseCaseGraphContext$lambda$2(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Ljava/util/Map;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getStreamConfigMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 7

    const-string v0, "cameraGraphFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphStateToCameraStateAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionConfigAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyCreationResult"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/config/UseCaseCameraConfig;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-class v3, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 123
    :cond_2
    const-string v2, "null cannot be cast to non-null type androidx.camera.camera2.config.UseCaseCameraConfig"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 125
    iget-object v2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object v4, p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 126
    :cond_3
    iget-object v2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    iget-object v4, p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    .line 127
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public final getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final provideSessionConfigAdapter()Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    return-object v0
.end method

.method public final provideSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final provideUseCaseGraphContext(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 10

    const-string v0, "cameraStateAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "Prepared UseCaseGraphContext (Deferred)"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    new-instance v3, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    .line 107
    new-instance v6, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    .line 108
    iget-object v5, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 104
    new-instance v2, Landroidx/camera/camera2/config/UseCaseGraphContext;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Landroidx/camera/camera2/config/UseCaseGraphContext;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljavax/inject/Provider;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UseCaseCameraConfig(cameraGraphFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphStateToCameraStateAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionConfigAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionProcessor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lazyCreationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
