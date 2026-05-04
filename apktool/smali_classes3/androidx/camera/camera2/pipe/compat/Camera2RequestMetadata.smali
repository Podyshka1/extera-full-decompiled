.class public final Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestMetadata;


# instance fields
.field private final cameraCaptureSessionWrapper:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

.field private final captureRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final defaultParameters:Ljava/util/Map;

.field private final graphParameters:Ljava/util/Map;

.field private final repeating:Z

.field private final request:Landroidx/camera/camera2/pipe/Request;

.field private final requestNumber:J

.field private final requiredParameters:Ljava/util/Map;

.field private final streams:Ljava/util/Map;

.field private final template:I


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;J)V
    .locals 1

    const-string v0, "cameraCaptureSessionWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredParameters"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streams"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->cameraCaptureSessionWrapper:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 621
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 622
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->defaultParameters:Ljava/util/Map;

    .line 623
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->graphParameters:Ljava/util/Map;

    .line 624
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->requiredParameters:Ljava/util/Map;

    .line 625
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->streams:Ljava/util/Map;

    .line 626
    iput p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->template:I

    .line 627
    iput-boolean p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->repeating:Z

    .line 628
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->request:Landroidx/camera/camera2/pipe/Request;

    .line 629
    iput-wide p10, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->requestNumber:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;J)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->requiredParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->requiredParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 641
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 644
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->graphParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->graphParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 648
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->defaultParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getRepeating()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->repeating:Z

    return v0
.end method

.method public getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 1

    .line 628
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->request:Landroidx/camera/camera2/pipe/Request;

    return-object v0
.end method

.method public getRequestNumber-my6kx4g()J
    .locals 2

    .line 629
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->requestNumber:J

    return-wide v0
.end method

.method public getStreams()Ljava/util/Map;
    .locals 1

    .line 625
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->streams:Ljava/util/Map;

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    const-class v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.Camera2RequestMetadata.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 658
    :cond_0
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 659
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->cameraCaptureSessionWrapper:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    return-object p1

    .line 660
    :cond_2
    invoke-static {}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 661
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_4

    .line 662
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;->cameraCaptureSessionWrapper:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-static {}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    return-object p1

    .line 661
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v2
.end method
