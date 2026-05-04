.class final Landroidx/datastore/core/DataStoreImpl$coordinator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/datastore/core/DataStoreImpl;


# direct methods
.method constructor <init>(Landroidx/datastore/core/DataStoreImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$coordinator$2;->this$0:Landroidx/datastore/core/DataStoreImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl$coordinator$2;->this$0:Landroidx/datastore/core/DataStoreImpl;

    invoke-virtual {v0}, Landroidx/datastore/core/DataStoreImpl;->getStorageConnection$datastore_core_release()Landroidx/datastore/core/StorageConnection;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/StorageConnection;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl$coordinator$2;->invoke()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v0

    return-object v0
.end method
