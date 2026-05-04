.class public final Landroidx/camera/camera2/adapter/CaptureResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraCaptureResult;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# instance fields
.field private final frameNumber:J

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final result:Landroidx/camera/camera2/pipe/FrameInfo;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 1

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 83
    iput-wide p2, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->frameNumber:J

    .line 84
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method


# virtual methods
.method public getAeMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAeMode(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    move-result-object v0

    return-object v0
.end method

.method public getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAeState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v0

    return-object v0
.end method

.method public getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAfMode(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v0

    return-object v0
.end method

.method public getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAfState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v0

    return-object v0
.end method

.method public getAwbMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAwbMode(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    move-result-object v0

    return-object v0
.end method

.method public getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getAwbState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object v0

    return-object v0
.end method

.method public getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getFlashState(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    return-object v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 3

    .line 103
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    invoke-static {}, Landroidx/camera/core/impl/TagBundle;->emptyBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/camera/camera2/pipe/Metadata;->getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/TagBundle;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 100
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$getTimestamp(Landroidx/camera/camera2/pipe/FrameMetadata;)J

    move-result-wide v0

    return-wide v0
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1

    const-string v0, "exifBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraCaptureResult$-CC;->$default$populateExifData(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    .line 108
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/camera2/adapter/CaptureResultAdapterKt;->access$populateExifData(Landroidx/camera/camera2/pipe/FrameMetadata;Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    return-void
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-class v0, Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.CaptureResultAdapter.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->result:Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
