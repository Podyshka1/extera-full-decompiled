.class public final Landroidx/camera/core/impl/ConstantObservable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable;


# static fields
.field private static final NULL_OBSERVABLE:Landroidx/camera/core/impl/ConstantObservable;


# instance fields
.field private final mValueFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public static synthetic $r8$lambda$CU8tzk54coO4YN1XdH27mWLPp-U(Landroidx/camera/core/impl/ConstantObservable;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    :try_start_0
    iget-object p0, p0, Landroidx/camera/core/impl/ConstantObservable;->mValueFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 75
    :goto_0
    invoke-interface {p1, p0}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroidx/camera/core/impl/ConstantObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/ConstantObservable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/camera/core/impl/ConstantObservable;->NULL_OBSERVABLE:Landroidx/camera/core/impl/ConstantObservable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/ConstantObservable;->mValueFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static withValue(Ljava/lang/Object;)Landroidx/camera/core/impl/Observable;
    .locals 1

    if-nez p0, :cond_0

    .line 48
    sget-object p0, Landroidx/camera/core/impl/ConstantObservable;->NULL_OBSERVABLE:Landroidx/camera/core/impl/ConstantObservable;

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/ConstantObservable;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/ConstantObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 2

    .line 69
    iget-object v0, p0, Landroidx/camera/core/impl/ConstantObservable;->mValueFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/camera/core/impl/ConstantObservable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroidx/camera/core/impl/ConstantObservable$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/impl/ConstantObservable;Landroidx/camera/core/impl/Observable$Observer;)V

    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/core/impl/ConstantObservable;->mValueFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0

    return-void
.end method
