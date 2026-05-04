.class public final Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/api/db/AddedRegDateDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfAddedRegDateDTO:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Io97oZNfeFEOzi2ZwPsP1ngH8Do(Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->insert$lambda$0(Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j4Ijwm3SdR5LlAnhMeRPagGh3gg(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->isAdded$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->Companion:Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 28
    new-instance p1, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$1;

    invoke-direct {p1}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$1;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->__insertAdapterOfAddedRegDateDTO:Landroidx/room/EntityInsertAdapter;

    return-void
.end method

.method private static final insert$lambda$0(Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->__insertAdapterOfAddedRegDateDTO:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final isAdded$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Z
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 47
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 49
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    move p2, p3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p2

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method


# virtual methods
.method public insert(Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public isAdded(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$$ExternalSyntheticLambda0;

    const-string v2, "SELECT EXISTS(SELECT 1 FROM AddedRegDateDTO WHERE userId = ?)"

    invoke-direct {v1, v2, p1, p2}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
