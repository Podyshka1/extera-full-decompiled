.class public final Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/AddedRegDateDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "INSERT OR IGNORE INTO `AddedRegDateDTO` (`userId`) VALUES (?)"

    return-object v0
.end method
