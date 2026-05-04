.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputConfig"
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

.field private final dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

.field private final externalOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private final format:I

.field private final groupNumber:Ljava/lang/Integer;

.field private final id:I

.field private final mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

.field private final sensorPixelModes:Ljava/util/List;

.field private final size:Landroid/util/Size;

.field private final streamBuilder:Ljava/util/List;

.field private final streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

.field private final streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;


# direct methods
.method private constructor <init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 0

    const-string/jumbo p9, "size"

    invoke-static {p2, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "camera"

    invoke-static {p4, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p9, "sensorPixelModes"

    invoke-static {p13, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    .line 228
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    .line 229
    iput p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->format:I

    .line 230
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    .line 231
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->groupNumber:Ljava/lang/Integer;

    .line 232
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->externalOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 233
    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    .line 234
    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 236
    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 237
    iput-object p11, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 238
    iput-object p12, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    .line 239
    iput-object p13, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->sensorPixelModes:Ljava/util/List;

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;-><init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeferrable()Z
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDeferredOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;
    .locals 1

    .line 233
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    return-object v0
.end method

.method public final getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    return-object v0
.end method

.method public final getExternalOutputConfig()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->externalOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public final getFormat-8FPWQzE()I
    .locals 1

    .line 229
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->format:I

    return v0
.end method

.method public final getGroupNumber()Ljava/lang/Integer;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->groupNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    return-object v0
.end method

.method public final getSensorPixelModes()Ljava/util/List;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->sensorPixelModes:Ljava/util/List;

    return-object v0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    return-object v0
.end method

.method public final getStreamBuilder$camera_camera2_pipe()Ljava/util/List;
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    return-object v0
.end method

.method public final getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
    .locals 1

    .line 237
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    return-object v0
.end method

.method public final getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-object v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1

    .line 243
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    return-object v0
.end method

.method public final getSurfaceSharing()Z
    .locals 2

    .line 249
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 251
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->id:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/graph/OutputConfigId;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
