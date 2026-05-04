.class public final Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
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
.field final synthetic this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    .line 34
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;)V
    .locals 3

    const-string/jumbo v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    invoke-static {v0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;->access$get__converters$p(Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;)Lcom/exteragram/messenger/api/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->getTotalAmountRub()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/api/db/Converters;->fromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$1;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    invoke-static {v0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;->access$get__converters$p(Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;)Lcom/exteragram/messenger/api/db/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->getTotalAmountUsd()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/exteragram/messenger/api/db/Converters;->fromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_1

    .line 48
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    .line 50
    :cond_1
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "INSERT OR REPLACE INTO `BoostySubscriberDTO` (`id`,`name`,`totalAmountRub`,`totalAmountUsd`) VALUES (?,?,?,?)"

    return-object v0
.end method
