.class public final Landroidx/work/impl/model/WorkProgressDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkProgressDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfWorkProgress:Landroidx/room/EntityInsertAdapter;


# direct methods
.method public static synthetic $r8$lambda$EO0gVZoCNSdI-rokJ-pZCcUBsgk(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/WorkProgressDao_Impl;->delete$lambda$2(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HxEzdbtI1meBd-aXYgHdDeKTIRA(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl;->deleteAll$lambda$3(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PINVEeB__LLptu-NxhS4Ei1b1_s(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/work/impl/model/WorkProgress;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/WorkProgressDao_Impl;->insert$lambda$0(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/work/impl/model/WorkProgress;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/WorkProgressDao_Impl;->Companion:Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 25
    new-instance p1, Landroidx/work/impl/model/WorkProgressDao_Impl$1;

    invoke-direct {p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$1;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertAdapterOfWorkProgress:Landroidx/room/EntityInsertAdapter;

    return-void
.end method

.method private static final delete$lambda$2(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p2, 0x1

    .line 78
    :try_start_0
    invoke-interface {p0, p2, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 79
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 81
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final deleteAll$lambda$3(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 91
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 95
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 93
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final insert$lambda$0(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/work/impl/model/WorkProgress;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertAdapterOfWorkProgress:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/WorkProgressDao_Impl$$ExternalSyntheticLambda1;

    const-string v2, "DELETE from WorkProgress where work_spec_id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public deleteAll()V
    .locals 4

    .line 88
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/WorkProgressDao_Impl$$ExternalSyntheticLambda0;

    const-string v2, "DELETE FROM WorkProgress"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/WorkProgressDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public insert(Landroidx/work/impl/model/WorkProgress;)V
    .locals 3

    const-string/jumbo v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/WorkProgressDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$$ExternalSyntheticLambda2;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/work/impl/model/WorkProgress;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
