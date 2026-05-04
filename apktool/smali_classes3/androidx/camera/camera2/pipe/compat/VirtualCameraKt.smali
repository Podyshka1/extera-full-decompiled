.class public abstract Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final androidCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

.field private static final virtualCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->virtualCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 240
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->androidCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method public static final getAndroidCameraDebugIds()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 240
    sget-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->androidCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method

.method public static final getVirtualCameraDebugIds()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 118
    sget-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->virtualCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method
