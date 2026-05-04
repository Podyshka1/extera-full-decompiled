.class public final Landroidx/camera/camera2/compat/NoOpZoomCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/ZoomCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

.field private static final requiredCharacteristics:Ljava/util/List;


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final maxZoomRatio:F

.field private final minZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->Companion:Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;

    .line 212
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->requiredCharacteristics:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 198
    iput p1, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->minZoomRatio:F

    .line 199
    iput p1, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->maxZoomRatio:F

    return-void
.end method

.method public static final synthetic access$getRequiredCharacteristics$cp()Ljava/util/List;
    .locals 1

    .line 197
    sget-object v0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->requiredCharacteristics:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public applyAsync(FLandroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
    .locals 0

    const-string p1, "requestControl"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1
.end method

.method public getCropSensorRegion()Landroid/graphics/Rect;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt;->getActiveArraySizeSafely(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 199
    iget v0, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->maxZoomRatio:F

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    .line 198
    iget v0, p0, Landroidx/camera/camera2/compat/NoOpZoomCompat;->minZoomRatio:F

    return v0
.end method

.method public resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
    .locals 1

    const-string v0, "requestControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1
.end method
