.class final Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/core/Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLockToken"
.end annotation


# instance fields
.field private final _released:Lkotlinx/atomicfu/AtomicBoolean;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/WakeLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/WakeLock;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 57
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->_released:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getReleased()Z
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->_released:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 3

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->_released:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->releaseToken$camera_camera2_pipe()V

    return v2

    :cond_0
    return v1
.end method
