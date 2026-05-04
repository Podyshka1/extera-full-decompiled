.class public final Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRecoverableError-90vkdD0$camera_camera2(I)Z
    .locals 2

    .line 287
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DEVICE-v7Vf74A()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setOrPostValue$camera_camera2(Landroidx/lifecycle/MutableLiveData;Landroidx/camera/core/CameraState;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 296
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final toCameraState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/CameraState$Type;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 282
    sget-object p1, Landroidx/camera/core/CameraState$Type;->PENDING_OPEN:Landroidx/camera/core/CameraState$Type;

    return-object p1

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CameraInternal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    sget-object p1, Landroidx/camera/core/CameraState$Type;->CLOSING:Landroidx/camera/core/CameraState$Type;

    return-object p1

    .line 280
    :cond_2
    sget-object p1, Landroidx/camera/core/CameraState$Type;->OPEN:Landroidx/camera/core/CameraState$Type;

    return-object p1

    .line 279
    :cond_3
    sget-object p1, Landroidx/camera/core/CameraState$Type;->OPENING:Landroidx/camera/core/CameraState$Type;

    return-object p1

    .line 278
    :cond_4
    sget-object p1, Landroidx/camera/core/CameraState$Type;->CLOSED:Landroidx/camera/core/CameraState$Type;

    return-object p1
.end method

.method public final toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;
    .locals 4

    .line 256
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNDETERMINED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    :goto_0
    move v2, v3

    goto/16 :goto_1

    .line 258
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    goto/16 :goto_1

    .line 260
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DEVICE-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto/16 :goto_1

    .line 261
    :cond_4
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_SERVICE-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 262
    :cond_5
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 263
    :cond_6
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 265
    :cond_7
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_SECURITY_EXCEPTION-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 266
    :cond_8
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 267
    :cond_9
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x7

    goto :goto_1

    .line 269
    :cond_a
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNKNOWN_EXCEPTION-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_1

    .line 270
    :cond_b
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPENER-v7Vf74A()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    .line 271
    :cond_c
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    :goto_1
    invoke-static {v2}, Landroidx/camera/core/CameraState$StateError;->create(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 272
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CameraError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
