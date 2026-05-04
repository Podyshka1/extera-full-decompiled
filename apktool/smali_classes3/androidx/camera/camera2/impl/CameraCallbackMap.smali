.class public final Landroidx/camera/camera2/impl/CameraCallbackMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;


# instance fields
.field private final callbackMap:Ljava/util/Map;

.field private volatile callbacks:Ljava/util/Map;

.field private final rejectOperationCameraCaptureSession$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2TNcBedz6WxtH3TknruzYJ-HzYM(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onStarted_uGKBvU4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8qSmfZCHZ8mRvFr4xV1KvDj03c0(Landroidx/camera/core/impl/CameraCaptureCallback;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIAQlY489x3WLkAeaNePlac-wYs(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onCaptureProgress$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iw0pZtqtAFlD20zeLvBxONw4I5k(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onComplete_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J52EctizhL40aRynqNGgThn8LMo(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onFailed_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQI8f9OIaJOzCCL54Z1iNtGDsFg(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onFailed_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M670Wl8LnPSOrY9T-6VP-TV-WEY(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onRequestSequenceAborted$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PMVjMzWyrx1ZzXBkbMyYMV5Eld4(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onReadoutStarted_mP9r_9w$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QRXFgL4pZ1oKUmL181-seJInXCA(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onCaptureProgress$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wqwind4PXz1dS9HICx1XpdO2JjQ()Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/camera/camera2/impl/CameraCallbackMap;->rejectOperationCameraCaptureSession_delegate$lambda$0()Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XTdOnnnHsk89bx5uDW3KaDeuITs(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onRequestSequenceCompleted_RuT0dZU$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$fOIs-Catyf0iIb5E-P61FtWeu-s(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onComplete_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hNQmOr210V_9UdLd15fDwjTXneg(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onPartialCaptureResult_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rG3mWWpycq50ysOQ-rBg-rpSISs(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onRequestSequenceAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sePtB5vsRnRT3T8jI-K71hutC_E(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onBufferLost_iiEMlm4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$t_nGHsesMsNeWZiLJugjYcMoTyA(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->onStarted_uGKBvU4$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/impl/CameraCallbackMap;->Companion:Landroidx/camera/camera2/impl/CameraCallbackMap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    .line 53
    new-instance v0, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->rejectOperationCameraCaptureSession$delegate:Lkotlin/Lazy;

    .line 57
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    return-void
.end method

.method private final getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 3

    .line 323
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 326
    invoke-static {}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    invoke-direct {p0}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getRejectOperationCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    return-object v0
.end method

.method private final getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I
    .locals 2

    .line 135
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/TagBundle;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 136
    const-string v1, "CAPTURE_CONFIG_ID_KEY"

    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final getRejectOperationCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->rejectOperationCameraCaptureSession$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method private static final onAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;I)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCancelled(I)V

    return-void
.end method

.method private static final onBufferLost_iiEMlm4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 6

    .line 93
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 92
    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/compat/Api24Compat;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method private static final onCaptureProgress$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 276
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private static final onCaptureProgress$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 286
    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    .line 285
    invoke-virtual {p0, p1, p3}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureProcessProgressed(II)V

    return-void
.end method

.method private static final onComplete_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 118
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private static final onComplete_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V
    .locals 0

    .line 128
    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method

.method private static final onFailed_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 152
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private static final onFailed_CcXjc1I$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    .line 158
    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureFailed(ILandroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method

.method private static final onPartialCaptureResult_CcXjc1I$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 188
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private static final onReadoutStarted_mP9r_9w$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    .line 310
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 309
    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/compat/Api34Compat;->onReadoutStarted(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method private static final onRequestSequenceAborted$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 207
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method private static final onRequestSequenceAborted$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 215
    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCancelled(I)V

    return-void
.end method

.method private static final onRequestSequenceCompleted_RuT0dZU$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;J)V
    .locals 1

    .line 231
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method private static final onStarted_uGKBvU4$lambda$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    .line 253
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method private static final onStarted_uGKBvU4$lambda$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 262
    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureStarted(I)V

    return-void
.end method

.method private static final rejectOperationCameraCaptureSession_delegate$lambda$0()Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;
    .locals 1

    .line 54
    new-instance v0, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbackMap:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 60
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was already registered!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 167
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/camera/core/impl/TagBundle;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/camera/core/impl/TagBundle;

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_1

    .line 169
    const-string v4, "CAPTURE_CONFIG_ID_KEY"

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v5

    :goto_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    .line 171
    :goto_3
    new-instance v4, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, v3}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public synthetic onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 9

    const-string p5, "requestMetadata"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p5, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 84
    instance-of v1, v3, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v1, :cond_0

    .line 87
    const-class v1, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession;

    .line 88
    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    .line 89
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getStreams()Ljava/util/Map;

    move-result-object v1

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/Surface;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 91
    new-instance v2, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda10;

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 7

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 269
    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v3, :cond_1

    .line 271
    const-class v3, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    .line 272
    const-class v4, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    .line 273
    const-class v5, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {p1, v5}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureResult;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 275
    new-instance v6, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2, v3, v4, v5}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 284
    :cond_1
    new-instance v3, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, p0, p1, p2}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 9

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    .line 111
    instance-of v0, v7, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v0, :cond_1

    .line 112
    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 113
    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 115
    const-class v3, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {p4, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 117
    new-instance v5, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda14;

    invoke-direct {v5, v7, v0, v2, v3}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda14;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v8, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    new-instance v2, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda15;

    invoke-direct {v2, v7, p0, p1, v0}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda15;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V

    invoke-interface {v8, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 5

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "requestFailure"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    .line 146
    instance-of v1, v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    .line 148
    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 149
    const-class v3, Landroid/hardware/camera2/CaptureFailure;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {p4, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureFailure;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 151
    new-instance v4, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance v1, Landroidx/camera/core/impl/CameraCaptureFailure;

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V

    .line 157
    new-instance v2, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p0, p1, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 5

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "captureResult"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    .line 181
    instance-of v1, v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v1, :cond_0

    .line 183
    const-class v1, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession;

    .line 184
    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 185
    const-class v3, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {p4, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureResult;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 187
    new-instance v4, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 11

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 303
    instance-of v2, v4, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v2, :cond_1

    .line 305
    const-class v2, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CameraCaptureSession;

    .line 306
    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 308
    new-instance v3, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda9;

    move-wide v9, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v10}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 5

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 201
    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v3, :cond_1

    .line 203
    const-class v3, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    .line 204
    const-class v4, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 206
    new-instance v4, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda16;

    invoke-direct {v4, v2, v3}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda16;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 214
    :cond_1
    new-instance v3, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda17;

    invoke-direct {v3, v2, p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda17;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 5

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 226
    instance-of v3, v2, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v3, :cond_0

    .line 227
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    .line 228
    const-class v4, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 230
    new-instance v4, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2, v3, p2, p3}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda11;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;J)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCreated(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 11

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraCallbackMap;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 248
    instance-of v2, v4, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    if-eqz v2, :cond_1

    .line 249
    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCameraCaptureSession(Landroidx/camera/camera2/pipe/RequestMetadata;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v5

    .line 250
    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 252
    new-instance v3, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda12;

    move-wide v9, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v10}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda12;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 262
    :cond_1
    new-instance v2, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda13;

    invoke-direct {v2, v4, p0, p1}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticLambda13;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method
