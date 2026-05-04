.class final Landroidx/datastore/core/FileStorage$createConnection$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/FileStorage;->createConnection()Landroidx/datastore/core/StorageConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/core/FileStorage$createConnection$2;->$file:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/datastore/core/FileStorage$createConnection$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 62
    sget-object v0, Landroidx/datastore/core/FileStorage;->Companion:Landroidx/datastore/core/FileStorage$Companion;

    invoke-virtual {v0}, Landroidx/datastore/core/FileStorage$Companion;->getActiveFilesLock$datastore_core_release()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/datastore/core/FileStorage$createConnection$2;->$file:Ljava/io/File;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-virtual {v0}, Landroidx/datastore/core/FileStorage$Companion;->getActiveFiles$datastore_core_release()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
