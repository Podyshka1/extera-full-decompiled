.class public final Landroidx/camera/camera2/pipe/compat/Api30Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api30Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api30Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api30Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api30Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api30Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConcurrentCameraIds(Landroid/hardware/camera2/CameraManager;)Ljava/util/Set;
    .locals 1

    const-string v0, "cameraManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object p0

    const-string v0, "getConcurrentCameraIds(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    const-string v0, "cameraDevice"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V

    return-void
.end method
