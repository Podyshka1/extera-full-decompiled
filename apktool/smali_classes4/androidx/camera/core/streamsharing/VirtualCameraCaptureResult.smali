.class public Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraCaptureResult;


# instance fields
.field private final mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

.field private final mTagBundle:Landroidx/camera/core/impl/TagBundle;

.field private final mTimestamp:J


# direct methods
.method private constructor <init>(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/TagBundle;J)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    .line 67
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 68
    iput-wide p3, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/TagBundle;J)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;-><init>(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/TagBundle;J)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 47
    invoke-direct {p0, p2, p1, v0, v1}, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;-><init>(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/TagBundle;J)V

    return-void
.end method


# virtual methods
.method public getAeMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    return-object v0
.end method

.method public getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    return-object v0
.end method

.method public getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    return-object v0
.end method

.method public getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    return-object v0
.end method

.method public getAwbMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAwbMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    return-object v0
.end method

.method public getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    return-object v0
.end method

.method public getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-object v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 4

    .line 121
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    .line 123
    :cond_0
    iget-wide v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No timestamp is available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraCaptureResult$-CC;->$default$populateExifData(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    return-void
.end method
