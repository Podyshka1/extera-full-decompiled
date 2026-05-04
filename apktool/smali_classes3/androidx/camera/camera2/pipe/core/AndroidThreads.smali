.class public final Landroidx/camera/camera2/pipe/core/AndroidThreads;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

.field private static final NICE_VALUES:[I

.field private static final factory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static synthetic $r8$lambda$-5dskTImH9PRNFfZUGKLfp0vmrk(ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withAndroidPriority$lambda$0$0(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$faLdKNGt__5T6WxQVV9GLghIoxw(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lkotlinx/atomicfu/AtomicInt;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix$lambda$0(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lkotlinx/atomicfu/AtomicInt;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jRA0i05wL10-EV15Dmt8_svRyC4(ILjava/util/concurrent/ThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withAndroidPriority$lambda$0(ILjava/util/concurrent/ThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/AndroidThreads;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

    const/16 v0, 0xa

    .line 50
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 40
    sput-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->NICE_VALUES:[I

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const-string v1, "defaultThreadFactory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->factory:Ljava/util/concurrent/ThreadFactory;

    return-void

    :array_0
    .array-data 4
        0x13
        0x10
        0xd
        0xa
        0x0
        -0x2
        -0x4
        -0x5
        -0x6
        -0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final androidToJavaPriority(I)I
    .locals 3

    .line 107
    sget-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->NICE_VALUES:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    sget-object v2, Landroidx/camera/camera2/pipe/core/AndroidThreads;->NICE_VALUES:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    return p1
.end method

.method private static final withAndroidPriority$lambda$0(ILjava/util/concurrent/ThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 58
    sget-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->androidToJavaPriority(I)I

    move-result v0

    .line 60
    new-instance v1, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    const-string p1, "newThread(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0
.end method

.method private static final withAndroidPriority$lambda$0$0(ILjava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 63
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static final withPrefix$lambda$0(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lkotlinx/atomicfu/AtomicInt;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 84
    invoke-interface {p0, p3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    const-string p3, "newThread(...)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v0, 0x30

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final asFixedSizeThreadPool(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    .line 93
    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newFixedThreadPool(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Threads ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be > 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final asScheduledThreadPool(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    .line 99
    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string p2, "newScheduledThreadPool(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Threads ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be > 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 53
    sget-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->factory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public final withAndroidPriority(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public final withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namePrefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    .line 83
    new-instance v1, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, v0}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lkotlinx/atomicfu/AtomicInt;)V

    return-object v1
.end method
