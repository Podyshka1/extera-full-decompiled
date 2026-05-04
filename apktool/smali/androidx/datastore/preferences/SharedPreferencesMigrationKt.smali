.class public abstract Landroidx/datastore/preferences/SharedPreferencesMigrationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIGRATE_ALL_KEYS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    return-void
.end method

.method public static final SharedPreferencesMigration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Landroidx/datastore/migrations/SharedPreferencesMigration;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferencesName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "keysToMigrate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    if-ne p2, v0, :cond_0

    .line 88
    new-instance v1, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 91
    invoke-static {p2}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->getShouldRunMigration(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 92
    invoke-static {}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->getMigrationFunction()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 88
    invoke-direct/range {v1 .. v8}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    .line 95
    new-instance p0, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 99
    invoke-static {p2}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->getShouldRunMigration(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .line 100
    invoke-static {}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->getMigrationFunction()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v5, p2

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    .line 95
    invoke-direct/range {v2 .. v7}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    return-object v2
.end method

.method public static synthetic SharedPreferencesMigration$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Landroidx/datastore/migrations/SharedPreferencesMigration;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 85
    sget-object p2, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    .line 82
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->SharedPreferencesMigration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Landroidx/datastore/migrations/SharedPreferencesMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final getMIGRATE_ALL_KEYS()Ljava/util/Set;
    .locals 1

    .line 156
    sget-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    return-object v0
.end method

.method private static final getMigrationFunction()Lkotlin/jvm/functions/Function3;
    .locals 2

    .line 105
    new-instance v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method private static final getShouldRunMigration(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;
    .locals 2

    .line 144
    new-instance v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getShouldRunMigration$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getShouldRunMigration$1;-><init>(Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method
