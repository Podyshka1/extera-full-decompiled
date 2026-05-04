.class public final Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sharedMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->sharedMutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final getSharedMutex()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->sharedMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method
