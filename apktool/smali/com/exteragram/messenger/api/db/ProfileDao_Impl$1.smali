.class public final Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/ProfileDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/api/db/ProfileDao_Impl;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    .line 41
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/exteragram/messenger/api/dto/ProfileDTO;)V
    .locals 5

    const-string/jumbo v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getType()Lcom/exteragram/messenger/api/model/ProfileType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->access$__ProfileType_enumToString(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/model/ProfileType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getStatus()Lcom/exteragram/messenger/api/model/ProfileStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->access$__ProfileStatus_enumToString(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;Lcom/exteragram/messenger/api/model/ProfileStatus;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    invoke-static {v1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->access$get__converters$p(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;)Lcom/exteragram/messenger/api/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/api/db/Converters;->fromBadgeDTO(Lcom/exteragram/messenger/api/dto/BadgeDTO;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getNowPlaying()Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/ProfileDao_Impl;

    invoke-static {v1}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl;->access$get__converters$p(Lcom/exteragram/messenger/api/db/ProfileDao_Impl;)Lcom/exteragram/messenger/api/db/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/api/db/Converters;->fromNowPlayingInfoDTO(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 62
    :goto_1
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const/4 v2, 0x6

    if-nez v0, :cond_3

    .line 65
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
    :goto_3
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getCanChangeBadge()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 70
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    const/4 p2, 0x7

    if-nez v1, :cond_5

    .line 72
    invoke-interface {p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    .line 74
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/exteragram/messenger/api/dto/ProfileDTO;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/ProfileDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/exteragram/messenger/api/dto/ProfileDTO;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "INSERT OR REPLACE INTO `ProfileDTO` (`id`,`type`,`status`,`badge`,`nowPlaying`,`deleted`,`canChangeBadge`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method
