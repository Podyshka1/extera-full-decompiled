.class public final Landroidx/datastore/core/MultiProcessDataStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/datastore/core/MultiProcessDataStoreFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/core/MultiProcessDataStoreFactory;

    invoke-direct {v0}, Landroidx/datastore/core/MultiProcessDataStoreFactory;-><init>()V

    sput-object v0, Landroidx/datastore/core/MultiProcessDataStoreFactory;->INSTANCE:Landroidx/datastore/core/MultiProcessDataStoreFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;
    .locals 3

    const-string/jumbo v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "migrations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "produceFile"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroidx/datastore/core/DataStoreImpl;

    .line 103
    new-instance v1, Landroidx/datastore/core/FileStorage;

    .line 105
    new-instance v2, Landroidx/datastore/core/MultiProcessDataStoreFactory$create$1;

    invoke-direct {v2, p4}, Landroidx/datastore/core/MultiProcessDataStoreFactory$create$1;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 103
    invoke-direct {v1, p1, v2, p5}, Landroidx/datastore/core/FileStorage;-><init>(Landroidx/datastore/core/Serializer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 108
    sget-object p1, Landroidx/datastore/core/DataMigrationInitializer;->Companion:Landroidx/datastore/core/DataMigrationInitializer$Companion;

    invoke-virtual {p1, p3}, Landroidx/datastore/core/DataMigrationInitializer$Companion;->getInitializer(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p2, Landroidx/datastore/core/handlers/NoOpCorruptionHandler;

    invoke-direct {p2}, Landroidx/datastore/core/handlers/NoOpCorruptionHandler;-><init>()V

    .line 102
    :goto_0
    invoke-direct {v0, v1, p1, p2, p4}, Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
