.class Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/AbstractCameraPresenceSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mObserver:Landroidx/camera/core/impl/Observable$Observer;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 78
    iput-object p2, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    return-void
.end method
