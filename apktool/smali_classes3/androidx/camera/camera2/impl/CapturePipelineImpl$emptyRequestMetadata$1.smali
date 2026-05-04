.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;-><init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final repeating:Z

.field private final request:Landroidx/camera/camera2/pipe/Request;

.field private final requestNumber:J

.field private final streams:Ljava/util/Map;

.field private final template:I


# direct methods
.method constructor <init>()V
    .locals 10

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 632
    invoke-static {v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->template:I

    .line 633
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->streams:Ljava/util/Map;

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->repeating:Z

    .line 635
    new-instance v1, Landroidx/camera/camera2/pipe/Request;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->request:Landroidx/camera/camera2/pipe/Request;

    const-wide/16 v0, 0x0

    .line 636
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/RequestNumber;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->requestNumber:J

    return-void
.end method


# virtual methods
.method public get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public getRepeating()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->repeating:Z

    return v0
.end method

.method public getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 1

    .line 635
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->request:Landroidx/camera/camera2/pipe/Request;

    return-object v0
.end method

.method public getRequestNumber-my6kx4g()J
    .locals 2

    .line 636
    iget-wide v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->requestNumber:J

    return-wide v0
.end method

.method public getStreams()Ljava/util/Map;
    .locals 1

    .line 633
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->streams:Ljava/util/Map;

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
