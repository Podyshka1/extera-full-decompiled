.class public final Landroidx/camera/core/impl/QuirkSettingsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/camera/core/impl/QuirkSettings;

.field private static final sInstance:Landroidx/camera/core/impl/QuirkSettingsHolder;


# instance fields
.field private final mObservable:Landroidx/camera/core/impl/MutableStateObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Landroidx/camera/core/impl/QuirkSettings;->withDefaultBehavior()Landroidx/camera/core/impl/QuirkSettings;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->DEFAULT:Landroidx/camera/core/impl/QuirkSettings;

    .line 44
    new-instance v0, Landroidx/camera/core/impl/QuirkSettingsHolder;

    invoke-direct {v0}, Landroidx/camera/core/impl/QuirkSettingsHolder;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->sInstance:Landroidx/camera/core/impl/QuirkSettingsHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->DEFAULT:Landroidx/camera/core/impl/QuirkSettings;

    .line 47
    invoke-static {v0}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/camera/core/impl/MutableStateObservable;

    return-void
.end method

.method public static instance()Landroidx/camera/core/impl/QuirkSettingsHolder;
    .locals 1

    .line 53
    sget-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->sInstance:Landroidx/camera/core/impl/QuirkSettingsHolder;

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/core/impl/QuirkSettings;
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {v0}, Landroidx/camera/core/impl/StateObservable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/QuirkSettings;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unexpected error in QuirkSettings StateObservable"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public observe(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/camera/core/impl/MutableStateObservable;

    new-instance v1, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;

    invoke-direct {v1, p2}, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;-><init>(Landroidx/core/util/Consumer;)V

    invoke-virtual {v0, p1, v1}, Landroidx/camera/core/impl/StateObservable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    return-void
.end method

.method public set(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    return-void
.end method
