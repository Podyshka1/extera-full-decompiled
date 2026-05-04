.class public final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$extractCamera2ImplConfigBuilder(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .locals 0

    .line 692
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->extractCamera2ImplConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toInfoBundle(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;Landroidx/camera/core/impl/SessionConfig;Ljava/util/concurrent/Executor;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 0

    .line 692
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->toInfoBundle(Landroidx/camera/core/impl/SessionConfig;Ljava/util/concurrent/Executor;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p0

    return-object p0
.end method

.method private final extractCamera2ImplConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .locals 1

    .line 731
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 732
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-object v0
.end method

.method private final toInfoBundle(Landroidx/camera/core/impl/SessionConfig;Ljava/util/concurrent/Executor;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 6

    .line 722
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 723
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->extractCamera2ImplConfigBuilder(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object v1

    .line 724
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->extractTags(Landroidx/camera/core/impl/SessionConfig;)Ljava/util/Map;

    move-result-object v2

    .line 725
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->extractListeners(Landroidx/camera/core/impl/SessionConfig;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v3

    .line 726
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->extractTemplate-ARED-Gk(Landroidx/camera/core/impl/SessionConfig;)I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v4

    const/4 v5, 0x0

    .line 722
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final extractCamera2ImplConfigBuilder(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 699
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "CONTROL_AE_TARGET_FPS_RANGE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v2

    .line 700
    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 705
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object p1

    const-string v1, "getImplementationOptions(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-object v0
.end method

.method public final extractListeners(Landroidx/camera/core/impl/SessionConfig;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    sget-object v0, Landroidx/camera/camera2/impl/CameraCallbackMap;->Companion:Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCameraCaptureCallbacks()Ljava/util/List;

    move-result-object p1

    const-string v1, "getRepeatingCameraCaptureCallbacks(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;->createFor(Ljava/util/Collection;Ljava/util/concurrent/Executor;)Landroidx/camera/camera2/impl/CameraCallbackMap;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroidx/camera/camera2/pipe/Request$Listener;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 715
    invoke-static {p2}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final extractTags(Landroidx/camera/core/impl/SessionConfig;)Ljava/util/Map;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    const-string v0, "getTagBundle(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlKt;->toMap(Landroidx/camera/core/impl/TagBundle;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final extractTemplate-ARED-Gk(Landroidx/camera/core/impl/SessionConfig;)I
    .locals 1

    const-string v0, "$this$extractTemplate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p1

    return p1
.end method
