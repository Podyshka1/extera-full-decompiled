.class public final Lcom/exteragram/messenger/api/db/ProfileDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/api/db/ProfileDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;,
        Lcom/exteragram/messenger/api/db/ProfileDao_Impl$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;


# instance fields
.field private final __converters:Lcom/exteragram/messenger/api/db/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfProfileDTO:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$A8efz94LwPYiJJcoLEH2USpkacE(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->deleteProfiles$lambda$0(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fo5G33E6B5YDwOGU9Xfb2ApbyH4(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->updateNowPlaying$lambda$0(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HHMJ4rf72TmjXuhoF17OkiuEWHY(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->getAll$lambda$0(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ls6ujYfLUIxHefNL5TwZ8rLNc4w(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/BadgeDTO;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->updateBadge$lambda$0(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/BadgeDTO;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wij10QS9XusMpsHaps7cQDspT7Q(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->insertAll$lambda$0(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qUcKHhPPxVUVqhKGEhNNLAalEiM(Ljava/lang/String;JLcom/exteragram/messenger/api/db/ProfileDao_Impl;Landroidx/sqlite/SQLiteConnection;)Lcom/exteragram/messenger/api/dto/ProfileDTO;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->getById$lambda$0(Ljava/lang/String;JLcom/exteragram/messenger/api/db/ProfileDao_Impl;Landroidx/sqlite/SQLiteConnection;)Lcom/exteragram/messenger/api/dto/ProfileDTO;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->Companion:Lcom/exteragram/messenger/api/db/ProfileDao_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/exteragram/messenger/api/db/Converters;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/Converters;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    .line 40
    iput-object p1, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance p1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;-><init>(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;)V

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__insertAdapterOfProfileDTO:Landroidx/room/EntityInsertAdapter;

    return-void
.end method

.method private final __ProfileStatus_enumToString(Lcom/exteragram/messenger/api/model/ProfileStatus;)Ljava/lang/String;
    .locals 1

    .line 284
    sget-object v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 287
    const-string p1, "SUPPORTER"

    return-object p1

    .line 284
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 286
    :cond_1
    const-string p1, "DEVELOPER"

    return-object p1

    .line 285
    :cond_2
    const-string p1, "DEFAULT"

    return-object p1
.end method

.method private final __ProfileStatus_stringToEnum(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/ProfileStatus;
    .locals 3

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x79209ddf

    if-eq v0, v1, :cond_1

    const v1, -0x5eb70856

    if-eq v0, v1, :cond_0

    const v1, -0x5b161b64

    if-ne v0, v1, :cond_2

    const-string v0, "SUPPORTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    sget-object p1, Lcom/exteragram/messenger/api/model/ProfileStatus;->SUPPORTER:Lcom/exteragram/messenger/api/model/ProfileStatus;

    return-object p1

    .line 296
    :cond_0
    const-string v0, "DEVELOPER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    sget-object p1, Lcom/exteragram/messenger/api/model/ProfileStatus;->DEVELOPER:Lcom/exteragram/messenger/api/model/ProfileStatus;

    return-object p1

    .line 296
    :cond_1
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    sget-object p1, Lcom/exteragram/messenger/api/model/ProfileStatus;->DEFAULT:Lcom/exteragram/messenger/api/model/ProfileStatus;

    return-object p1

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final __ProfileType_enumToString(Lcom/exteragram/messenger/api/model/ProfileType;)Ljava/lang/String;
    .locals 1

    .line 279
    sget-object v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 281
    const-string p1, "CHAT"

    return-object p1

    .line 279
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 280
    :cond_1
    const-string p1, "USER"

    return-object p1
.end method

.method private final __ProfileType_stringToEnum(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/ProfileType;
    .locals 3

    .line 291
    const-string v0, "USER"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/exteragram/messenger/api/model/ProfileType;->USER:Lcom/exteragram/messenger/api/model/ProfileType;

    return-object p1

    .line 292
    :cond_0
    const-string v0, "CHAT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/exteragram/messenger/api/model/ProfileType;->CHAT:Lcom/exteragram/messenger/api/model/ProfileType;

    return-object p1

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$__ProfileStatus_enumToString(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/model/ProfileStatus;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__ProfileStatus_enumToString(Lcom/exteragram/messenger/api/model/ProfileStatus;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$__ProfileType_enumToString(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/model/ProfileType;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__ProfileType_enumToString(Lcom/exteragram/messenger/api/model/ProfileType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get__converters$p(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;)Lcom/exteragram/messenger/api/db/Converters;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    return-object p0
.end method

.method private static final deleteProfiles$lambda$0(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)I
    .locals 3

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 223
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 224
    invoke-interface {p0, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 227
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 228
    invoke-static {p2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getAll$lambda$0(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 87
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 89
    :try_start_0
    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 90
    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 91
    const-string/jumbo v4, "status"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 92
    const-string v5, "badge"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 93
    const-string/jumbo v6, "nowPlaying"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 94
    const-string v7, "deleted"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 95
    const-string v8, "canChangeBadge"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 96
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 100
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 102
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__ProfileType_stringToEnum(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/ProfileType;

    move-result-object v14

    .line 104
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__ProfileStatus_stringToEnum(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/ProfileStatus;

    move-result-object v15

    .line 107
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    .line 110
    :cond_0
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 112
    :goto_1
    iget-object v11, v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    invoke-virtual {v11, v10}, Lcom/exteragram/messenger/api/db/Converters;->toBadgeDTO(Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v16

    .line 115
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_2

    .line 118
    :cond_1
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 120
    :goto_2
    iget-object v11, v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    invoke-virtual {v11, v10}, Lcom/exteragram/messenger/api/db/Converters;->toNowPlayingInfoDTO(Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    move-result-object v17

    .line 123
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    .line 126
    :cond_2
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_3
    const/16 v18, 0x1

    if-eqz v10, :cond_4

    .line 128
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-eqz v10, :cond_3

    move/from16 v10, v18

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_4
    const/4 v10, 0x0

    .line 131
    :goto_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_5

    move-wide/from16 v19, v12

    const/4 v11, 0x0

    goto :goto_6

    :cond_5
    move-wide/from16 v19, v12

    .line 134
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_6
    if-eqz v11, :cond_7

    .line 136
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eqz v11, :cond_6

    move/from16 v11, v18

    goto :goto_7

    :cond_6
    const/4 v11, 0x0

    :goto_7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    .line 137
    :goto_8
    new-instance v12, Lcom/exteragram/messenger/api/dto/ProfileDTO;

    move-wide/from16 v21, v19

    move-object/from16 v19, v11

    move-object v11, v12

    move-wide/from16 v12, v21

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v19}, Lcom/exteragram/messenger/api/dto/ProfileDTO;-><init>(JLcom/exteragram/messenger/api/model/ProfileType;Lcom/exteragram/messenger/api/model/ProfileStatus;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 138
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 142
    :cond_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_9
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getById$lambda$0(Ljava/lang/String;JLcom/exteragram/messenger/api/db/ProfileDao_Impl;Landroidx/sqlite/SQLiteConnection;)Lcom/exteragram/messenger/api/dto/ProfileDTO;
    .locals 21

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 150
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    move-wide/from16 v3, p1

    .line 153
    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 155
    const-string/jumbo v4, "type"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 156
    const-string/jumbo v5, "status"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 157
    const-string v6, "badge"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 158
    const-string/jumbo v7, "nowPlaying"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 159
    const-string v8, "deleted"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 160
    const-string v9, "canChangeBadge"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 162
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    .line 164
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    .line 166
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__ProfileType_stringToEnum(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/ProfileType;

    move-result-object v15

    .line 168
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__ProfileStatus_stringToEnum(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/ProfileStatus;

    move-result-object v16

    .line 171
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v11

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    :goto_0
    iget-object v4, v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    invoke-virtual {v4, v3}, Lcom/exteragram/messenger/api/db/Converters;->toBadgeDTO(Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v17

    .line 179
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v11

    goto :goto_1

    .line 182
    :cond_1
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    :goto_1
    iget-object v0, v0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    invoke-virtual {v0, v3}, Lcom/exteragram/messenger/api/db/Converters;->toNowPlayingInfoDTO(Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    move-result-object v18

    .line 187
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    goto :goto_2

    .line 190
    :cond_2
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_4
    move-object/from16 v19, v11

    .line 195
    :goto_4
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v11

    goto :goto_5

    .line 198
    :cond_5
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_7

    .line 200
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :cond_7
    move-object/from16 v20, v11

    .line 201
    new-instance v12, Lcom/exteragram/messenger/api/dto/ProfileDTO;

    invoke-direct/range {v12 .. v20}, Lcom/exteragram/messenger/api/dto/ProfileDTO;-><init>(JLcom/exteragram/messenger/api/model/ProfileType;Lcom/exteragram/messenger/api/model/ProfileStatus;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v12

    .line 207
    :cond_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v11

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final insertAll$lambda$0(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__insertAdapterOfProfileDTO:Landroidx/room/EntityInsertAdapter;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateBadge$lambda$0(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/BadgeDTO;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-interface {p5, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 263
    :try_start_0
    iget-object p1, p1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/api/db/Converters;->fromBadgeDTO(Lcom/exteragram/messenger/api/dto/BadgeDTO;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 265
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 267
    :cond_0
    invoke-interface {p0, p2, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 270
    invoke-interface {p0, p1, p3, p4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 271
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 272
    invoke-static {p5}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final updateNowPlaying$lambda$0(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-interface {p5, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 241
    :try_start_0
    iget-object p1, p1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__converters:Lcom/exteragram/messenger/api/db/Converters;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/api/db/Converters;->fromNowPlayingInfoDTO(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 243
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 245
    :cond_0
    invoke-interface {p0, p2, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 248
    invoke-interface {p0, p1, p3, p4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 249
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 250
    invoke-static {p5}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method


# virtual methods
.method public deleteProfiles(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v1, "DELETE FROM ProfileDTO WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 216
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 217
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {v1, p1, v0, v2, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/ProfileDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda4;

    const-string v2, "SELECT * FROM ProfileDTO"

    invoke-direct {v1, v2, p0}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/dto/ProfileDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda5;

    const-string v2, "SELECT * FROM ProfileDTO WHERE id = ?"

    invoke-direct {v1, v2, p1, p2, p0}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;JLcom/exteragram/messenger/api/db/ProfileDao_Impl;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/ProfileDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Ljava/util/List;)V

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

.method public updateBadge(JLcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/exteragram/messenger/api/dto/BadgeDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda1;

    const-string v2, "UPDATE ProfileDTO SET badge = ? WHERE id = ?"

    move-object v3, p0

    move-wide v5, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/BadgeDTO;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda0;

    const-string v2, "UPDATE ProfileDTO SET nowPlaying = ? WHERE id = ?"

    move-object v3, p0

    move-wide v5, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
