.class public final Lkotlinx/coroutines/internal/MainDispatcherLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/MainDispatcherLoader;

.field public static final dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->INSTANCE:Lkotlinx/coroutines/internal/MainDispatcherLoader;

    .line 15
    const-string/jumbo v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    .line 18
    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;->loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 7

    .line 21
    const-class v0, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    .line 34
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 1971
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1972
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 1973
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1975
    :cond_1
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 34
    invoke-interface {v4}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v4

    .line 1977
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1978
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 34
    invoke-interface {v6}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_3

    move-object v3, v5

    move v4, v6

    .line 143
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 34
    :goto_0
    check-cast v3, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v3, :cond_5

    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->tryCreateDispatcher(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x3

    .line 35
    invoke-static {v1, v1, v0, v1}, Lkotlinx/coroutines/internal/MainDispatchersKt;->createMissingDispatcher$default(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_2
    const/4 v2, 0x2

    .line 38
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/internal/MainDispatchersKt;->createMissingDispatcher$default(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    return-object v1
.end method
