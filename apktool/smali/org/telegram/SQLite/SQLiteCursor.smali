.class public Lorg/telegram/SQLite/SQLiteCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_TYPE_BYTEARRAY:I = 0x4

.field public static final FIELD_TYPE_FLOAT:I = 0x2

.field public static final FIELD_TYPE_INT:I = 0x1

.field public static final FIELD_TYPE_NULL:I = 0x5

.field public static final FIELD_TYPE_STRING:I = 0x3


# instance fields
.field private inRow:Z

.field private preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;


# direct methods
.method public constructor <init>(Lorg/telegram/SQLite/SQLitePreparedStatement;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    .line 27
    iput-object p1, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    return-void
.end method


# virtual methods
.method public byteArrayValue(I)[B
    .locals 2

    .line 60
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 61
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnByteArrayValue(JI)[B

    move-result-object p1

    return-object p1
.end method

.method public byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 4

    .line 65
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 66
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnByteBufferValue(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 68
    invoke-static {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method checkRow()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string v1, "You must call next before"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method native columnByteArrayValue(JI)[B
.end method

.method native columnByteBufferValue(JI)J
.end method

.method native columnCount(J)I
.end method

.method native columnDoubleValue(JI)D
.end method

.method native columnIntValue(JI)I
.end method

.method native columnIsNull(JI)I
.end method

.method native columnLongValue(JI)J
.end method

.method native columnStringValue(JI)Ljava/lang/String;
.end method

.method native columnType(JI)I
.end method

.method public dispose()V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void
.end method

.method public doubleValue(I)D
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 46
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnDoubleValue(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnCount()I
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->columnCount(J)I

    move-result v0

    return v0
.end method

.method public getPreparedStatement()Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    return-object v0
.end method

.method public getStatementHandle()J
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTypeOf(I)I
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 75
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnType(JI)I

    move-result p1

    return p1
.end method

.method public intValue(I)I
    .locals 2

    .line 40
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 41
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnIntValue(JI)I

    move-result p1

    return p1
.end method

.method public isNull(I)Z
    .locals 2

    .line 31
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 32
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnIsNull(JI)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public longValue(I)J
    .locals 2

    .line 50
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 51
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnLongValue(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public next()Z
    .locals 6

    .line 79
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v2, 0x6

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_2

    .line 84
    :try_start_0
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_0

    .line 85
    const-string/jumbo v2, "sqlite busy, waiting..."

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_0
    :goto_1
    const-wide/16 v4, 0x1f4

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 88
    iget-object v2, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    :goto_2
    move v2, v3

    goto :goto_0

    .line 93
    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :goto_4
    if-eq v0, v1, :cond_3

    goto :goto_5

    .line 97
    :cond_3
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "sqlite busy"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_5
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 100
    :goto_6
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    return v0
.end method

.method public stringValue(I)Ljava/lang/String;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    .line 56
    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnStringValue(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
