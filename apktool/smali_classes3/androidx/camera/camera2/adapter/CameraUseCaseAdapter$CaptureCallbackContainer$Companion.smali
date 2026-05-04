.class public final Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;
    .locals 2

    const-string v0, "captureCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
