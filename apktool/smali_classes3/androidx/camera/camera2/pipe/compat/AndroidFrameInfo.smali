.class public final Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameInfo;


# instance fields
.field private final camera:Ljava/lang/String;

.field private final physicalResults:Ljava/util/Map;

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

.field private final totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 4

    const-string/jumbo v0, "totalCaptureResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMetadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 93
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->camera:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 97
    new-instance p2, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    .line 99
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "physicalCaptureResults"

    .line 72
    :try_start_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_0

    .line 105
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->access$getTotalCaptureResult$p(Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->getPhysicalCameraTotalResults(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, android.hardware.camera2.CaptureResult>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/16 p2, 0x1c

    if-lt p1, p2, :cond_1

    .line 109
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->access$getTotalCaptureResult$p(Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->getPhysicalCaptureResults(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    new-instance p2, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 117
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v2

    new-instance v3, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v3, p3, v1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 123
    :cond_3
    :goto_2
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 99
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->physicalResults:Ljava/util/Map;

    return-void

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static final synthetic access$getTotalCaptureResult$p(Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 91
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method


# virtual methods
.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameInfo(camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frameNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-class v0, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidFrameInfo.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 138
    :cond_0
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method
