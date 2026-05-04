.class public final Landroidx/work/impl/model/PreferenceDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/PreferenceDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/PreferenceDao_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/model/PreferenceDao_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfPreference:Landroidx/room/EntityInsertAdapter;


# direct methods
.method public static synthetic $r8$lambda$WOdbRCbcU9bF-o_A_B2dKOhXNig(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/PreferenceDao_Impl;->getLongValue$lambda$1(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pV7ZAv1ABN_GLbYRS_jnXDCXzyk(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/work/impl/model/Preference;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/PreferenceDao_Impl;->insertPreference$lambda$0(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/work/impl/model/Preference;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/PreferenceDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/PreferenceDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/PreferenceDao_Impl;->Companion:Landroidx/work/impl/model/PreferenceDao_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 25
    new-instance p1, Landroidx/work/impl/model/PreferenceDao_Impl$1;

    invoke-direct {p1}, Landroidx/work/impl/model/PreferenceDao_Impl$1;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertAdapterOfPreference:Landroidx/room/EntityInsertAdapter;

    return-void
.end method

.method private static final getLongValue$lambda$1(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p2, 0x1

    .line 52
    :try_start_0
    invoke-interface {p0, p2, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 54
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 55
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final insertPreference$lambda$0(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/work/impl/model/Preference;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertAdapterOfPreference:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/PreferenceDao_Impl$$ExternalSyntheticLambda1;

    const-string v2, "SELECT long_value FROM Preference where `key`=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/PreferenceDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public insertPreference(Landroidx/work/impl/model/Preference;)V
    .locals 3

    const-string/jumbo v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/PreferenceDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/PreferenceDao_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/work/impl/model/Preference;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
