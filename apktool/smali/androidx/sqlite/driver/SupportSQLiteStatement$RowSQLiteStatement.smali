.class final Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;
.super Landroidx/sqlite/driver/SupportSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowSQLiteStatement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;


# instance fields
.field private bindingTypes:[I

.field private blobBindings:[[B

.field private cursor:Landroid/database/Cursor;

.field private doubleBindings:[D

.field private longBindings:[J

.field private stringBindings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sql"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    .line 302
    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    .line 303
    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->longBindings:[J

    .line 304
    new-array p2, p1, [D

    iput-object p2, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->doubleBindings:[D

    .line 305
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->stringBindings:[Ljava/lang/String;

    .line 306
    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->blobBindings:[[B

    return-void
.end method

.method public static final synthetic access$getBindingTypes$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[I
    .locals 0

    .line 299
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    return-object p0
.end method

.method public static final synthetic access$getBlobBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[[B
    .locals 0

    .line 299
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->blobBindings:[[B

    return-object p0
.end method

.method public static final synthetic access$getDoubleBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[D
    .locals 0

    .line 299
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->doubleBindings:[D

    return-object p0
.end method

.method public static final synthetic access$getLongBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[J
    .locals 0

    .line 299
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->longBindings:[J

    return-object p0
.end method

.method public static final synthetic access$getStringBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[Ljava/lang/String;
    .locals 0

    .line 299
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->stringBindings:[Ljava/lang/String;

    return-object p0
.end method

.method private final ensureCapacity(II)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 433
    iget-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    array-length v2, v1

    const-string v3, "copyOf(...)"

    if-ge v2, p2, :cond_0

    .line 434
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    iget-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->blobBindings:[[B

    array-length v0, p1

    if-ge v0, p2, :cond_5

    .line 454
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [[B

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->blobBindings:[[B

    return-void

    .line 448
    :cond_2
    iget-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->stringBindings:[Ljava/lang/String;

    array-length v0, p1

    if-ge v0, p2, :cond_5

    .line 449
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->stringBindings:[Ljava/lang/String;

    return-void

    .line 443
    :cond_3
    iget-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->doubleBindings:[D

    array-length v0, p1

    if-ge v0, p2, :cond_5

    .line 444
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->doubleBindings:[D

    return-void

    .line 438
    :cond_4
    iget-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->longBindings:[J

    array-length v0, p1

    if-ge v0, p2, :cond_5

    .line 439
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->longBindings:[J

    :cond_5
    :goto_0
    return-void
.end method

.method private final ensureCursor()V
    .locals 2

    .line 461
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 464
    new-instance v1, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;

    invoke-direct {v1, p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;-><init>(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)V

    .line 463
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 462
    iput-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method private final throwIfInvalidColumn(Landroid/database/Cursor;I)V
    .locals 0

    if-ltz p2, :cond_0

    .line 496
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x19

    .line 497
    const-string p2, "column index out of range"

    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final throwIfNoRow()Landroid/database/Cursor;
    .locals 2

    .line 492
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    const-string/jumbo v1, "no row"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 v0, 0x4

    .line 313
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCapacity(II)V

    .line 314
    iget-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    aput v0, v1, p1

    .line 315
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->blobBindings:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public bindLong(IJ)V
    .locals 2

    .line 326
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCapacity(II)V

    .line 328
    iget-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    aput v0, v1, p1

    .line 329
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->longBindings:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindNull(I)V
    .locals 2

    .line 340
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 v0, 0x5

    .line 341
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCapacity(II)V

    .line 342
    iget-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    aput v0, v1, p1

    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 v0, 0x3

    .line 334
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCapacity(II)V

    .line 335
    iget-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    aput v0, v1, p1

    .line 336
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->stringBindings:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public clearBindings()V
    .locals 2

    .line 415
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 v0, 0x0

    .line 416
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->bindingTypes:[I

    .line 417
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->longBindings:[J

    .line 418
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->doubleBindings:[D

    .line 419
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->stringBindings:[Ljava/lang/String;

    .line 420
    new-array v0, v0, [[B

    iput-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->blobBindings:[[B

    return-void
.end method

.method public close()V
    .locals 1

    .line 424
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->clearBindings()V

    .line 426
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->reset()V

    :cond_0
    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->setClosed(Z)V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 346
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 347
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfNoRow()Landroid/database/Cursor;

    move-result-object v0

    .line 348
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfInvalidColumn(Landroid/database/Cursor;I)V

    .line 349
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    const-string v0, "getBlob(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 381
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 382
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCursor()V

    .line 383
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 387
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 388
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCursor()V

    .line 389
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfInvalidColumn(Landroid/database/Cursor;I)V

    .line 391
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getColumnName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(I)J
    .locals 2

    .line 360
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 361
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfNoRow()Landroid/database/Cursor;

    move-result-object v0

    .line 362
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfInvalidColumn(Landroid/database/Cursor;I)V

    .line 363
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    .line 367
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 368
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfNoRow()Landroid/database/Cursor;

    move-result-object v0

    .line 369
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfInvalidColumn(Landroid/database/Cursor;I)V

    .line 370
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 375
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfNoRow()Landroid/database/Cursor;

    move-result-object v0

    .line 376
    invoke-direct {p0, v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->throwIfInvalidColumn(Landroid/database/Cursor;I)V

    .line 377
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 409
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 410
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method public step()Z
    .locals 2

    .line 403
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 404
    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCursor()V

    .line 405
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
