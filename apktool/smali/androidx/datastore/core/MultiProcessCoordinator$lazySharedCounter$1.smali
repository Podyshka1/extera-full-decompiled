.class final Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/MultiProcessCoordinator;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/datastore/core/MultiProcessCoordinator;


# direct methods
.method constructor <init>(Landroidx/datastore/core/MultiProcessCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/datastore/core/SharedCounter;
    .locals 3

    .line 121
    sget-object v0, Landroidx/datastore/core/SharedCounter;->Factory:Landroidx/datastore/core/SharedCounter$Factory;

    invoke-virtual {v0}, Landroidx/datastore/core/SharedCounter$Factory;->loadLib()V

    .line 122
    new-instance v1, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1$1;

    iget-object v2, p0, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    invoke-direct {v1, v2}, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;)V

    invoke-virtual {v0, v1}, Landroidx/datastore/core/SharedCounter$Factory;->create$datastore_core_release(Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/SharedCounter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1;->invoke()Landroidx/datastore/core/SharedCounter;

    move-result-object v0

    return-object v0
.end method
