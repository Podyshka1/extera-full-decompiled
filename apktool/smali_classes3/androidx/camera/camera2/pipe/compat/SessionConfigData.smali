.class public final Landroidx/camera/camera2/pipe/compat/SessionConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final inputConfiguration:Ljava/util/List;

.field private final outputConfigurations:Ljava/util/List;

.field private final sessionColorSpace:Ljava/lang/String;

.field private final sessionParameters:Ljava/util/Map;

.field private final sessionTemplateId:I

.field private final sessionType:I

.field private final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# direct methods
.method private constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;)V
    .locals 1

    const-string v0, "outputConfigurations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionParameters"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    .line 52
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    .line 53
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    .line 54
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 56
    iput p6, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    .line 57
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 58
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    if-nez v1, :cond_a

    if-nez p1, :cond_9

    move p1, v0

    goto :goto_1

    :cond_9
    :goto_0
    move p1, v2

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_1
    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getInputConfiguration()Ljava/util/List;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    return-object v0
.end method

.method public final getOutputConfigurations()Ljava/util/List;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public final getSessionColorSpace-dxVZaPA()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionParameters()Ljava/util/Map;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getSessionTemplateId()I
    .locals 1

    .line 56
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    return v0
.end method

.method public final getSessionType()I
    .locals 1

    .line 51
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    return v0
.end method

.method public final getStateCallback()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

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

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->hashCode-impl(Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionConfigData(sessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTemplateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionColorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionColorSpace:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
