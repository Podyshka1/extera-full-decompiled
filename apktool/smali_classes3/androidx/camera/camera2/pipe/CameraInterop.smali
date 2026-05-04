.class public final Landroidx/camera/camera2/pipe/CameraInterop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;,
        Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraInterop;

.field private static final captureSessionIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraInterop;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraInterop;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraInterop;->INSTANCE:Landroidx/camera/camera2/pipe/CameraInterop;

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraInterop;->captureSessionIds:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final nextCameraCaptureSessionId-159jkk4$camera_camera2_pipe()I
    .locals 1

    .line 85
    sget-object v0, Landroidx/camera/camera2/pipe/CameraInterop;->captureSessionIds:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;->constructor-impl(I)I

    move-result v0

    return v0
.end method
