.class public final Landroidx/camera/camera2/pipe/core/MutexToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/core/Token;


# instance fields
.field private final _released:Lkotlinx/atomicfu/AtomicBoolean;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/Mutex;)V
    .locals 1

    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 p1, 0x0

    .line 123
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->_released:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getReleased()Z
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->_released:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 3

    .line 128
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->_released:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/MutexToken;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method
