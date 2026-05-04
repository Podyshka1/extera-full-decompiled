.class final Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;
.super Landroidx/sqlite/driver/SupportSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OtherSQLiteStatement"
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sql"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 519
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 523
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 532
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 533
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 542
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 543
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 538
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 598
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 599
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 603
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x1

    .line 604
    invoke-virtual {p0, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->setClosed(Z)V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 547
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p1, 0x15

    .line 548
    const-string/jumbo v0, "no row"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 572
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 577
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p1, 0x15

    .line 578
    const-string/jumbo v0, "no row"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getLong(I)J
    .locals 1

    .line 557
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p1, 0x15

    .line 558
    const-string/jumbo v0, "no row"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    .line 562
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p1, 0x15

    .line 563
    const-string/jumbo v0, "no row"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 567
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p1, 0x15

    .line 568
    const-string/jumbo v0, "no row"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 0

    .line 593
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    return-void
.end method

.method public step()Z
    .locals 1

    .line 587
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 588
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->execute()V

    const/4 v0, 0x0

    return v0
.end method
