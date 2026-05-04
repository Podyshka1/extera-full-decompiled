.class public final Landroidx/work/impl/model/WorkProgressDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkProgressDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Landroidx/work/impl/model/WorkProgress;)V
    .locals 2

    const-string/jumbo v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2}, Landroidx/work/impl/model/WorkProgress;->getWorkSpecId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 31
    sget-object v0, Landroidx/work/Data;->Companion:Landroidx/work/Data$Companion;

    invoke-virtual {p2}, Landroidx/work/impl/model/WorkProgress;->getProgress()Landroidx/work/Data;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 32
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Landroidx/work/impl/model/WorkProgress;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkProgressDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Landroidx/work/impl/model/WorkProgress;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method
