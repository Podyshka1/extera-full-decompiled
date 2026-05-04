.class public abstract Landroidx/sqlite/driver/SupportSQLiteStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;


# instance fields
.field private final db:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private isClosed:Z

.field private final sql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement;->Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 41
    iput-object p2, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->sql:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic getBoolean(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/sqlite/SQLiteStatement$-CC;->$default$getBoolean(Landroidx/sqlite/SQLiteStatement;I)Z

    move-result p1

    return p1
.end method

.method protected final getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object v0
.end method

.method protected final getSql()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->sql:Ljava/lang/String;

    return-object v0
.end method

.method protected final isClosed()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed:Z

    return v0
.end method

.method protected final setClosed(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed:Z

    return-void
.end method

.method protected final throwIfClosed()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    .line 48
    const-string/jumbo v1, "statement is closed"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
