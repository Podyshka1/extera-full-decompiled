.class final Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraPresenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final listener:Landroidx/camera/core/CameraPresenceListener;


# direct methods
.method public constructor <init>(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Landroidx/camera/core/CameraPresenceListener;

    iput-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Landroidx/camera/core/CameraPresenceListener;

    iget-object v3, p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Landroidx/camera/core/CameraPresenceListener;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getListener()Landroidx/camera/core/CameraPresenceListener;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Landroidx/camera/core/CameraPresenceListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Landroidx/camera/core/CameraPresenceListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerWrapper(listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Landroidx/camera/core/CameraPresenceListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
