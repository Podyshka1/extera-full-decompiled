.class public Landroidx/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private lastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

.field private final registry:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 35
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->lastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    .line 36
    :cond_0
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    iget-object v1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 37
    iput-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->lastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 38
    iget-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public onServicePreSuperOnBind()V
    .locals 1

    .line 49
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnCreate()V
    .locals 1

    .line 44
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnDestroy()V
    .locals 1

    .line 62
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 63
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnStart()V
    .locals 1

    .line 57
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
