.class final Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainCaptureParams"
.end annotation


# instance fields
.field private final configs:Ljava/util/List;

.field private final requestTemplate:I

.field private final sessionConfigOptions:Landroidx/camera/core/impl/Config;


# direct methods
.method private constructor <init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;)V
    .locals 1

    const-string v0, "configs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionConfigOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    .line 148
    iput p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    .line 149
    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;-><init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    iget v3, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    iget-object p1, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConfigs()Ljava/util/List;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    return-object v0
.end method

.method public final getRequestTemplate-fGx8uWA()I
    .locals 1

    .line 148
    iget v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    return v0
.end method

.method public final getSessionConfigOptions()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainCaptureParams(configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->configs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->requestTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionConfigOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->sessionConfigOptions:Landroidx/camera/core/impl/Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
