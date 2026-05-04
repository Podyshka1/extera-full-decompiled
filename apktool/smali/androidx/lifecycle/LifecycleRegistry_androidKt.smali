.class public abstract Landroidx/lifecycle/LifecycleRegistry_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isMainThread()Z
    .locals 1

    .line 23
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method
