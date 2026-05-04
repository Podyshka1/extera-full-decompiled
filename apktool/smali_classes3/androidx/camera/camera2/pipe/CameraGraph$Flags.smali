.class public final Landroidx/camera/camera2/pipe/CameraGraph$Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;
    }
.end annotation


# instance fields
.field private final abortCapturesOnStop:Z

.field private final awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

.field private final awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

.field private final closeCameraDeviceOnClose:Z

.field private final closeCaptureSessionOnDisconnect:Z

.field private final configureBlankSessionOnStop:Z

.field private final enableRestartDelays:Z

.field private final finalizeSessionOnCloseBehavior:I


# direct methods
.method private constructor <init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZ)V
    .locals 1

    const-string v0, "awaitRepeatingRequestBeforeCapture"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    .line 186
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    .line 204
    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    .line 218
    iput-object p4, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    .line 230
    iput p5, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    .line 241
    iput-boolean p6, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    .line 252
    iput-boolean p7, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    .line 262
    iput-boolean p8, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 v1, p9, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p1, v2

    :cond_0
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_2

    .line 186
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v2

    :cond_2
    :goto_0
    and-int/lit8 v1, p9, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 205
    new-instance p3, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    const/4 v1, 0x3

    invoke-direct {p3, v2, v3, v1, v3}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;-><init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_4

    move-object p4, v3

    :cond_4
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_5

    .line 230
    sget-object p5, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getOFF-Bm6Tfm4()I

    move-result p5

    :cond_5
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_6

    .line 242
    sget-object p6, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

    invoke-virtual {p6}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;->shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe()Z

    move-result p6

    :cond_6
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, p7

    :goto_1
    and-int/lit16 v0, p9, 0x80

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v2, p8

    :goto_2
    const/4 v0, 0x0

    move p7, p6

    move-object p10, v0

    move p8, v1

    move p9, v2

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 163
    invoke-direct/range {p1 .. p10}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    iget v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    iget-boolean p1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAbortCapturesOnStop()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    return v0
.end method

.method public final getAwaitRepeatingRequestBeforeCapture()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    return-object v0
.end method

.method public final getAwaitRepeatingRequestOnDisconnect()Ljava/lang/Boolean;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCloseCameraDeviceOnClose()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    return v0
.end method

.method public final getCloseCaptureSessionOnDisconnect()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    return v0
.end method

.method public final getEnableRestartDelays()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    return v0
.end method

.method public final getFinalizeSessionOnCloseBehavior-Bm6Tfm4()I
    .locals 1

    .line 230
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flags(configureBlankSessionOnStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->configureBlankSessionOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", abortCapturesOnStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", awaitRepeatingRequestBeforeCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", awaitRepeatingRequestOnDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestOnDisconnect:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finalizeSessionOnCloseBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closeCaptureSessionOnDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", closeCameraDeviceOnClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCameraDeviceOnClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableRestartDelays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
