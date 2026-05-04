.class public final Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    const-class v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->unwrapAs(Landroidx/camera/core/CameraInfo;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/CameraMetadata;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final unwrapAs(Landroidx/camera/core/CameraInfo;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    instance-of v0, p1, Landroidx/camera/camera2/pipe/UnsafeWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/camera/camera2/pipe/UnsafeWrapper;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 393
    :cond_0
    instance-of v0, p1, Landroidx/camera/core/impl/CameraInfoInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 394
    move-object v0, p1

    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 395
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p1

    const-string v0, "getImplementation(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->unwrapAs(Landroidx/camera/core/CameraInfo;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
