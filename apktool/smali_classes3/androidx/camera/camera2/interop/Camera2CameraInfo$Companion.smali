.class public final Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/interop/Camera2CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 3

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 2

    const-string v0, "cameraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    const-class v1, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->unwrapAs(Landroidx/camera/core/CameraInfo;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    if-eqz v0, :cond_1

    .line 97
    instance-of v1, p1, Landroidx/camera/core/impl/AdapterCameraInfo;

    if-eqz v1, :cond_0

    .line 98
    check-cast p1, Landroidx/camera/core/impl/AdapterCameraInfo;

    invoke-virtual {p1}, Landroidx/camera/core/impl/AdapterCameraInfo;->getSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;

    :cond_0
    return-object v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not unwrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as Camera2CameraInfo!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
