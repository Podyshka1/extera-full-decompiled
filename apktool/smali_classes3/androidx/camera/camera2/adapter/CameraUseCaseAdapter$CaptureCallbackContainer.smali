.class public final Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureCallbackContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;


# instance fields
.field private final captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 279
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method


# virtual methods
.method public final getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method
