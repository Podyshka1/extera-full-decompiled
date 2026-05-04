.class public final Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final extensionMode:Ljava/lang/Integer;

.field private final extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

.field private final outputConfigurations:Ljava/util/List;

.field private final postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

.field private final sessionParameters:Ljava/util/Map;

.field private final sessionTemplateId:I

.field private final sessionType:I

.field private final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;)V
    .locals 1

    const-string v0, "outputConfigurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionParameters"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionType:I

    .line 69
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/List;

    .line 70
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Ljava/util/concurrent/Executor;

    .line 71
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 72
    iput p5, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    .line 73
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 74
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 75
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    .line 76
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionType:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getExtensionMode()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExtensionStateCallback()Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    return-object v0
.end method

.method public final getOutputConfigurations()Ljava/util/List;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public final getPostviewOutputConfiguration()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionSessionConfigData(sessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outputConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTemplateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionStateCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postviewOutputConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
