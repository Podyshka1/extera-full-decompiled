.class public abstract Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final asContextElement(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0, p1}, Lkotlinx/coroutines/ThreadContextElementKt;->asContextElement(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlinx/coroutines/ThreadContextElement;

    move-result-object p0

    return-object p0
.end method

.method public static final currentThreadId()J
    .locals 2

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method
