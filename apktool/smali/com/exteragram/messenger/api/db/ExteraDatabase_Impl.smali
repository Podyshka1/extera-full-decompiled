.class public final Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;
.super Lcom/exteragram/messenger/api/db/ExteraDatabase;
.source "SourceFile"


# instance fields
.field private final _addedRegDateDao:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field

.field private final _boostySubscriberDao:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field

.field private final _profileDao:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JPRoYntD9n_OlGUDgtg2Biw9RoU(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/ProfileDao_Impl;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_profileDao$lambda$0(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SlcSYaiIe7u1BWCtS_TPYlnsVms(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_addedRegDateDao$lambda$0(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cfVh7uxfsfuGBKXdttLxfBFUQEc(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_boostySubscriberDao$lambda$0(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase;-><init>()V

    .line 30
    new-instance v0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_profileDao:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_addedRegDateDao:Lkotlin/Lazy;

    .line 38
    new-instance v0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_boostySubscriberDao:Lkotlin/Lazy;

    return-void
.end method

.method private static final _addedRegDateDao$lambda$0(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;
    .locals 1

    .line 35
    new-instance v0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method private static final _boostySubscriberDao$lambda$0(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;
    .locals 1

    .line 39
    new-instance v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method private static final _profileDao$lambda$0(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)Lcom/exteragram/messenger/api/db/ProfileDao_Impl;
    .locals 1

    .line 31
    new-instance v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method public static final synthetic access$internalInitInvalidationTracker(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method


# virtual methods
.method public addedRegDateDao()Lcom/exteragram/messenger/api/db/AddedRegDateDao;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_addedRegDateDao:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/api/db/AddedRegDateDao;

    return-object v0
.end method

.method public boostySubscriberDao()Lcom/exteragram/messenger/api/db/BoostySubscriberDao;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_boostySubscriberDao:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    return-object v0
.end method

.method public clearAllTables()V
    .locals 3

    .line 140
    const-string v0, "AddedRegDateDTO"

    const-string v1, "BoostySubscriberDTO"

    const-string v2, "ProfileDTO"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Landroidx/room/RoomDatabase;->performClear(Z[Ljava/lang/String;)V

    return-void
.end method

.method public createAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 135
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "AddedRegDateDTO"

    const-string v4, "BoostySubscriberDTO"

    const-string v5, "ProfileDTO"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1

    .line 43
    new-instance v0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$createOpenDelegate$_openDelegate$1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;)V

    return-object v0
.end method

.method public bridge synthetic createOpenDelegate()Landroidx/room/RoomOpenDelegateMarker;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverterClasses()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass;",
            ">;>;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 145
    const-class v1, Lcom/exteragram/messenger/api/db/ProfileDao;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->Companion:Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;

    invoke-virtual {v2}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-class v1, Lcom/exteragram/messenger/api/db/AddedRegDateDao;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->Companion:Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;

    invoke-virtual {v2}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-class v1, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;->Companion:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$Companion;

    invoke-virtual {v2}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public profileDao()Lcom/exteragram/messenger/api/db/ProfileDao;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ExteraDatabase_Impl;->_profileDao:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/api/db/ProfileDao;

    return-object v0
.end method
