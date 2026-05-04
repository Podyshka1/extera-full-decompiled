.class final Landroidx/camera/core/RotationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/RotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listener:Landroidx/camera/core/RotationProvider$Listener;


# direct methods
.method public static synthetic $r8$lambda$540uX7lYQInAUuBr1aMPK2LyrOU(Landroidx/camera/core/RotationProvider$ListenerWrapper;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/RotationProvider$ListenerWrapper;->onRotationChanged$lambda$0(Landroidx/camera/core/RotationProvider$ListenerWrapper;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/RotationProvider$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->listener:Landroidx/camera/core/RotationProvider$Listener;

    iput-object p2, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 186
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static final onRotationChanged$lambda$0(Landroidx/camera/core/RotationProvider$ListenerWrapper;I)V
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->listener:Landroidx/camera/core/RotationProvider$Listener;

    invoke-interface {p0, p1}, Landroidx/camera/core/RotationProvider$Listener;->onRotationChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 2

    .line 210
    iget-object v0, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onRotationChanged(I)V
    .locals 2

    .line 189
    iget-object v0, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/RotationProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/RotationProvider$ListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/RotationProvider$ListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/RotationProvider$ListenerWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 198
    :catch_0
    const-string p1, "RotationProvider"

    .line 199
    const-string v0, "Failed to execute the command. Maybe the executor has been shutdown."

    .line 197
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
