.class public Lorg/telegram/messenger/DatabaseMigrationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static migrate(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 27

    move-object/from16 v1, p0

    .line 19
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x4

    move/from16 v0, p1

    if-ge v0, v3, :cond_0

    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 23
    const-string v0, "DROP INDEX IF EXISTS read_state_out_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 24
    const-string v0, "DROP INDEX IF EXISTS ttl_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 25
    const-string v0, "DROP INDEX IF EXISTS date_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 27
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 28
    const-string v0, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 29
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 32
    const-string v0, "CREATE TABLE IF NOT EXISTS user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 33
    const-string v0, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 35
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 39
    const-string v0, "CREATE TABLE IF NOT EXISTS download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 40
    const-string v0, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 42
    const-string v0, "CREATE TABLE IF NOT EXISTS dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 44
    const-string v0, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 46
    const-string v0, "UPDATE messages SET send_state = 2 WHERE mid < 0 AND send_state = 1"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 48
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    .line 49
    const-string v0, "PRAGMA user_version = 4"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v3

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v3, :cond_3

    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 54
    const-string v0, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 55
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 56
    const-string v0, "SELECT date, data FROM enc_tasks WHERE 1"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 57
    const-string v8, "REPLACE INTO enc_tasks_v2 VALUES(?, ?)"

    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    .line 58
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 59
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 60
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 62
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v11

    move v12, v7

    .line 63
    :goto_0
    div-int/lit8 v13, v11, 0x4

    if-ge v12, v13, :cond_1

    .line 64
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 65
    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    invoke-virtual {v8, v6, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 66
    invoke-virtual {v8, v5, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 67
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 72
    :cond_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 73
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 74
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 76
    const-string v0, "DROP INDEX IF EXISTS date_idx_enc_tasks;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 77
    const-string v0, "DROP TABLE IF EXISTS enc_tasks;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 79
    const-string v0, "ALTER TABLE messages ADD COLUMN media INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 80
    const-string v0, "PRAGMA user_version = 6"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v4

    :cond_3
    const/4 v8, 0x7

    if-ne v0, v4, :cond_4

    .line 84
    const-string v0, "CREATE TABLE IF NOT EXISTS messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 85
    const-string v0, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 86
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN layer INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 87
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN seq_in INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 88
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN seq_out INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 89
    const-string v0, "PRAGMA user_version = 7"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v8

    :cond_4
    const/16 v9, 0x9

    const/16 v10, 0x8

    const/16 v11, 0xa

    if-eq v0, v8, :cond_5

    if-eq v0, v10, :cond_5

    if-ne v0, v9, :cond_6

    .line 93
    :cond_5
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN use_count INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 94
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN exchange_id INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 95
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN key_date INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 96
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN fprint INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 97
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN fauthkey BLOB default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 98
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN khash BLOB default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 99
    const-string v0, "PRAGMA user_version = 10"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v11

    :cond_6
    const/16 v12, 0xb

    if-ne v0, v11, :cond_7

    .line 103
    const-string v0, "CREATE TABLE IF NOT EXISTS web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, PRIMARY KEY (id, type));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 104
    const-string v0, "PRAGMA user_version = 11"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v12

    :cond_7
    const/16 v13, 0xc

    const/16 v14, 0xd

    if-eq v0, v12, :cond_8

    if-ne v0, v13, :cond_9

    .line 108
    :cond_8
    const-string v0, "DROP INDEX IF EXISTS uid_mid_idx_media;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 109
    const-string v0, "DROP INDEX IF EXISTS mid_idx_media;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 110
    const-string v0, "DROP INDEX IF EXISTS uid_date_mid_idx_media;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 111
    const-string v0, "DROP TABLE IF EXISTS media;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 112
    const-string v0, "DROP TABLE IF EXISTS media_counts;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 114
    const-string v0, "CREATE TABLE IF NOT EXISTS media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 115
    const-string v0, "CREATE TABLE IF NOT EXISTS media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 116
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 118
    const-string v0, "CREATE TABLE IF NOT EXISTS keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 120
    const-string v0, "PRAGMA user_version = 13"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v14

    :cond_9
    const/16 v15, 0xe

    if-ne v0, v14, :cond_a

    .line 124
    const-string v0, "ALTER TABLE messages ADD COLUMN replydata BLOB default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 125
    const-string v0, "PRAGMA user_version = 14"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v15

    :cond_a
    const/16 v14, 0xf

    if-ne v0, v15, :cond_b

    .line 129
    const-string v0, "CREATE TABLE IF NOT EXISTS hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 130
    const-string v0, "PRAGMA user_version = 15"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v14

    :cond_b
    const/16 v15, 0x10

    if-ne v0, v14, :cond_c

    .line 134
    const-string v0, "CREATE TABLE IF NOT EXISTS webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 135
    const-string v0, "PRAGMA user_version = 16"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v15

    :cond_c
    if-ne v0, v15, :cond_d

    .line 139
    const-string v0, "ALTER TABLE dialogs ADD COLUMN inbox_max INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 140
    const-string v0, "ALTER TABLE dialogs ADD COLUMN outbox_max INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 141
    const-string v0, "PRAGMA user_version = 17"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x11

    :cond_d
    const/16 v15, 0x11

    if-ne v0, v15, :cond_e

    .line 145
    const-string v0, "PRAGMA user_version = 18"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x12

    :cond_e
    const/16 v15, 0x12

    if-ne v0, v15, :cond_f

    .line 149
    const-string v0, "DROP TABLE IF EXISTS stickers;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 150
    const-string v0, "CREATE TABLE IF NOT EXISTS stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 151
    const-string v0, "PRAGMA user_version = 19"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x13

    :cond_f
    const/16 v15, 0x13

    if-ne v0, v15, :cond_10

    .line 155
    const-string v0, "CREATE TABLE IF NOT EXISTS bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 156
    const-string v0, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 157
    const-string v0, "PRAGMA user_version = 20"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x14

    :cond_10
    const/16 v15, 0x14

    if-ne v0, v15, :cond_11

    .line 161
    const-string v0, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 162
    const-string v0, "PRAGMA user_version = 21"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x15

    :cond_11
    const/16 v15, 0x15

    const/4 v14, 0x0

    if-ne v0, v15, :cond_14

    .line 166
    const-string v0, "CREATE TABLE IF NOT EXISTS chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 168
    const-string v0, "SELECT uid, participants FROM chat_settings WHERE uid < 0"

    new-array v15, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 169
    const-string v15, "REPLACE INTO chat_settings_v2 VALUES(?, ?)"

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v15

    .line 170
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 171
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    int-to-long v12, v13

    .line 172
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 174
    invoke-virtual {v11, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v9

    invoke-static {v11, v9, v7}, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-result-object v9

    .line 175
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v9, :cond_12

    .line 177
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 178
    iput-wide v12, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    .line 179
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 180
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;-><init>()V

    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 181
    iput-object v14, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 182
    iput-object v9, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 183
    new-instance v9, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v11}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v10

    invoke-direct {v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 184
    invoke-virtual {v11, v9}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 185
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 186
    invoke-virtual {v15, v6, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 187
    invoke-virtual {v15, v5, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 188
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 189
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_12
    const/16 v9, 0x9

    const/16 v10, 0x8

    const/16 v11, 0xa

    const/16 v12, 0xb

    const/16 v13, 0xc

    goto :goto_1

    .line 193
    :cond_13
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 194
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 196
    const-string v0, "DROP TABLE IF EXISTS chat_settings;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 197
    const-string v0, "ALTER TABLE dialogs ADD COLUMN last_mid_i INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 198
    const-string v0, "ALTER TABLE dialogs ADD COLUMN unread_count_i INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 199
    const-string v0, "ALTER TABLE dialogs ADD COLUMN pts INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 200
    const-string v0, "ALTER TABLE dialogs ADD COLUMN date_i INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 201
    const-string v0, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 202
    const-string v0, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 203
    const-string v0, "ALTER TABLE messages ADD COLUMN imp INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 204
    const-string v0, "CREATE TABLE IF NOT EXISTS messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 205
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 206
    const-string v0, "PRAGMA user_version = 22"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x16

    :cond_14
    const/16 v9, 0x16

    if-ne v0, v9, :cond_15

    .line 210
    const-string v0, "CREATE TABLE IF NOT EXISTS media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 211
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 212
    const-string v0, "PRAGMA user_version = 23"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x17

    :cond_15
    const/16 v9, 0x17

    if-eq v0, v9, :cond_16

    const/16 v9, 0x18

    if-ne v0, v9, :cond_17

    .line 216
    :cond_16
    const-string v0, "DELETE FROM media_holes_v2 WHERE uid != 0 AND type >= 0 AND start IN (0, 1)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 217
    const-string v0, "PRAGMA user_version = 25"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x19

    :cond_17
    const/16 v9, 0x19

    if-eq v0, v9, :cond_18

    const/16 v9, 0x1a

    if-ne v0, v9, :cond_19

    .line 221
    :cond_18
    const-string v0, "CREATE TABLE IF NOT EXISTS channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 222
    const-string v0, "PRAGMA user_version = 27"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1b

    :cond_19
    const/16 v9, 0x1b

    if-ne v0, v9, :cond_1a

    .line 226
    const-string v0, "ALTER TABLE web_recent_v3 ADD COLUMN document BLOB default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 227
    const-string v0, "PRAGMA user_version = 28"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1c

    :cond_1a
    const/16 v9, 0x1c

    .line 230
    const-string v10, "DELETE FROM download_queue WHERE 1"

    if-eq v0, v9, :cond_1b

    const/16 v9, 0x1d

    if-ne v0, v9, :cond_1c

    .line 231
    :cond_1b
    const-string v0, "DELETE FROM sent_files_v2 WHERE 1"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 232
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 233
    const-string v0, "PRAGMA user_version = 30"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1e

    :cond_1c
    const/16 v9, 0x1e

    if-ne v0, v9, :cond_1d

    .line 237
    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN pinned INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 238
    const-string v0, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 239
    const-string v0, "CREATE TABLE IF NOT EXISTS users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 240
    const-string v0, "PRAGMA user_version = 31"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x1f

    :cond_1d
    const/16 v9, 0x1f

    const/16 v11, 0x20

    if-ne v0, v9, :cond_1e

    .line 244
    const-string v0, "DROP TABLE IF EXISTS bot_recent;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 245
    const-string v0, "CREATE TABLE IF NOT EXISTS chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 246
    const-string v0, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 247
    const-string v0, "PRAGMA user_version = 32"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move v0, v11

    :cond_1e
    if-ne v0, v11, :cond_1f

    .line 251
    const-string v0, "DROP INDEX IF EXISTS uid_mid_idx_imp_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 252
    const-string v0, "DROP INDEX IF EXISTS uid_date_mid_imp_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 253
    const-string v0, "PRAGMA user_version = 33"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x21

    :cond_1f
    const/16 v9, 0x21

    if-ne v0, v9, :cond_20

    .line 257
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 258
    const-string v0, "PRAGMA user_version = 34"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x22

    :cond_20
    const/16 v9, 0x22

    if-ne v0, v9, :cond_21

    .line 262
    const-string v0, "CREATE TABLE IF NOT EXISTS stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 263
    const-string v0, "PRAGMA user_version = 35"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x23

    :cond_21
    const/16 v9, 0x23

    if-ne v0, v9, :cond_22

    .line 267
    const-string v0, "CREATE TABLE IF NOT EXISTS requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 268
    const-string v0, "PRAGMA user_version = 36"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x24

    :cond_22
    const/16 v9, 0x24

    if-ne v0, v9, :cond_23

    .line 272
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN in_seq_no INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 273
    const-string v0, "PRAGMA user_version = 37"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x25

    :cond_23
    const/16 v9, 0x25

    if-ne v0, v9, :cond_24

    .line 277
    const-string v0, "CREATE TABLE IF NOT EXISTS botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 278
    const-string v0, "CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 279
    const-string v0, "PRAGMA user_version = 38"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x26

    :cond_24
    const/16 v9, 0x26

    if-ne v0, v9, :cond_25

    .line 283
    const-string v0, "ALTER TABLE dialogs ADD COLUMN pinned INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 284
    const-string v0, "PRAGMA user_version = 39"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x27

    :cond_25
    const/16 v9, 0x27

    if-ne v0, v9, :cond_26

    .line 288
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN admin_id INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 289
    const-string v0, "PRAGMA user_version = 40"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x28

    :cond_26
    const/16 v9, 0x28

    if-ne v0, v9, :cond_27

    .line 293
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    .line 294
    const-string v0, "PRAGMA user_version = 41"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x29

    :cond_27
    const/16 v9, 0x29

    if-ne v0, v9, :cond_28

    .line 298
    const-string v0, "ALTER TABLE messages ADD COLUMN mention INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 299
    const-string v0, "ALTER TABLE user_contacts_v6 ADD COLUMN imported INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 300
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages ON messages(uid, mention, read_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 301
    const-string v0, "PRAGMA user_version = 42"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2a

    :cond_28
    const/16 v9, 0x2a

    if-ne v0, v9, :cond_29

    .line 305
    const-string v0, "CREATE TABLE IF NOT EXISTS sharing_locations(uid INTEGER PRIMARY KEY, mid INTEGER, date INTEGER, period INTEGER, message BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 306
    const-string v0, "PRAGMA user_version = 43"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2b

    :cond_29
    const/16 v9, 0x2b

    if-ne v0, v9, :cond_2a

    .line 310
    const-string v0, "PRAGMA user_version = 44"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2c

    :cond_2a
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_2b

    .line 314
    const-string v0, "CREATE TABLE IF NOT EXISTS user_contacts_v7(key TEXT PRIMARY KEY, uid INTEGER, fname TEXT, sname TEXT, imported INTEGER)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 315
    const-string v0, "CREATE TABLE IF NOT EXISTS user_phones_v7(key TEXT, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (key, phone))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 316
    const-string v0, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v7(sphone, deleted);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 317
    const-string v0, "PRAGMA user_version = 45"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2d

    :cond_2b
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_2c

    .line 321
    const-string v0, "ALTER TABLE enc_chats ADD COLUMN mtproto_seq INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 322
    const-string v0, "PRAGMA user_version = 46"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2e

    :cond_2c
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_2d

    .line 326
    const-string v0, "DELETE FROM botcache WHERE 1"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 327
    const-string v0, "PRAGMA user_version = 47"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x2f

    :cond_2d
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_2e

    .line 331
    const-string v0, "ALTER TABLE dialogs ADD COLUMN flags INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 332
    const-string v0, "PRAGMA user_version = 48"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x30

    :cond_2e
    const/16 v9, 0x30

    if-ne v0, v9, :cond_2f

    .line 336
    const-string v0, "CREATE TABLE IF NOT EXISTS unread_push_messages(uid INTEGER, mid INTEGER, random INTEGER, date INTEGER, data BLOB, fm TEXT, name TEXT, uname TEXT, flags INTEGER, PRIMARY KEY(uid, mid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 337
    const-string v0, "CREATE INDEX IF NOT EXISTS unread_push_messages_idx_date ON unread_push_messages(date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 338
    const-string v0, "CREATE INDEX IF NOT EXISTS unread_push_messages_idx_random ON unread_push_messages(random);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 339
    const-string v0, "PRAGMA user_version = 49"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x31

    :cond_2f
    const/16 v9, 0x31

    if-ne v0, v9, :cond_30

    .line 343
    const-string v0, "CREATE TABLE IF NOT EXISTS user_settings(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 344
    const-string v0, "CREATE INDEX IF NOT EXISTS user_settings_pinned_idx ON user_settings(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 345
    const-string v0, "PRAGMA user_version = 50"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x32

    :cond_30
    const/16 v9, 0x32

    if-ne v0, v9, :cond_31

    .line 349
    const-string v0, "DELETE FROM sent_files_v2 WHERE 1"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 350
    const-string v0, "ALTER TABLE sent_files_v2 ADD COLUMN parent TEXT"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 351
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 352
    const-string v0, "ALTER TABLE download_queue ADD COLUMN parent TEXT"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 353
    const-string v0, "PRAGMA user_version = 51"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x33

    :cond_31
    const/16 v9, 0x33

    if-ne v0, v9, :cond_32

    .line 357
    const-string v0, "ALTER TABLE media_counts_v2 ADD COLUMN old INTEGER"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 358
    const-string v0, "PRAGMA user_version = 52"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x34

    :cond_32
    const/16 v9, 0x34

    if-ne v0, v9, :cond_33

    .line 362
    const-string v0, "CREATE TABLE IF NOT EXISTS polls_v2(mid INTEGER, uid INTEGER, id INTEGER, PRIMARY KEY (mid, uid));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 363
    const-string v0, "CREATE INDEX IF NOT EXISTS polls_id ON polls_v2(id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 364
    const-string v0, "PRAGMA user_version = 53"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x35

    :cond_33
    const/16 v9, 0x35

    if-ne v0, v9, :cond_34

    .line 368
    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN online INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 369
    const-string v0, "PRAGMA user_version = 54"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x36

    :cond_34
    const/16 v9, 0x36

    if-ne v0, v9, :cond_35

    .line 373
    const-string v0, "DROP TABLE IF EXISTS wallpapers;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 374
    const-string v0, "PRAGMA user_version = 55"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x37

    :cond_35
    const/16 v9, 0x37

    if-ne v0, v9, :cond_36

    .line 378
    const-string v0, "CREATE TABLE IF NOT EXISTS wallpapers2(uid INTEGER PRIMARY KEY, data BLOB, num INTEGER)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 379
    const-string v0, "CREATE INDEX IF NOT EXISTS wallpapers_num ON wallpapers2(num);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 380
    const-string v0, "PRAGMA user_version = 56"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x38

    :cond_36
    const/16 v9, 0x38

    if-eq v0, v9, :cond_37

    const/16 v9, 0x39

    if-ne v0, v9, :cond_38

    .line 384
    :cond_37
    const-string v0, "CREATE TABLE IF NOT EXISTS emoji_keywords_v2(lang TEXT, keyword TEXT, emoji TEXT, PRIMARY KEY(lang, keyword, emoji));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 385
    const-string v0, "CREATE TABLE IF NOT EXISTS emoji_keywords_info_v2(lang TEXT PRIMARY KEY, alias TEXT, version INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 386
    const-string v0, "PRAGMA user_version = 58"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3a

    :cond_38
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_39

    .line 390
    const-string v0, "CREATE INDEX IF NOT EXISTS emoji_keywords_v2_keyword ON emoji_keywords_v2(keyword);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 391
    const-string v0, "ALTER TABLE emoji_keywords_info_v2 ADD COLUMN date INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 392
    const-string v0, "PRAGMA user_version = 59"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3b

    :cond_39
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_3a

    .line 396
    const-string v0, "ALTER TABLE dialogs ADD COLUMN folder_id INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 397
    const-string v0, "ALTER TABLE dialogs ADD COLUMN data BLOB default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 398
    const-string v0, "CREATE INDEX IF NOT EXISTS folder_id_idx_dialogs ON dialogs(folder_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 399
    const-string v0, "PRAGMA user_version = 60"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3c

    :cond_3a
    const/16 v9, 0x3c

    if-ne v0, v9, :cond_3b

    .line 403
    const-string v0, "DROP TABLE IF EXISTS channel_admins;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 404
    const-string v0, "DROP TABLE IF EXISTS blocked_users;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 405
    const-string v0, "PRAGMA user_version = 61"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3d

    :cond_3b
    const/16 v9, 0x3d

    if-ne v0, v9, :cond_3c

    .line 409
    const-string v0, "DROP INDEX IF EXISTS send_state_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 410
    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_messages2 ON messages(mid, send_state, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 411
    const-string v0, "PRAGMA user_version = 62"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3e

    :cond_3c
    const/16 v9, 0x3e

    if-ne v0, v9, :cond_3d

    .line 415
    const-string v0, "CREATE TABLE IF NOT EXISTS scheduled_messages(mid INTEGER PRIMARY KEY, uid INTEGER, send_state INTEGER, date INTEGER, data BLOB, ttl INTEGER, replydata BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 416
    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_scheduled_messages ON scheduled_messages(mid, send_state, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 417
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_idx_scheduled_messages ON scheduled_messages(uid, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 418
    const-string v0, "PRAGMA user_version = 63"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x3f

    :cond_3d
    const/16 v9, 0x3f

    if-ne v0, v9, :cond_3e

    .line 422
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 423
    const-string v0, "PRAGMA user_version = 64"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x40

    :cond_3e
    const/16 v9, 0x40

    if-ne v0, v9, :cond_3f

    .line 427
    const-string v0, "CREATE TABLE IF NOT EXISTS dialog_filter(id INTEGER PRIMARY KEY, ord INTEGER, unread_count INTEGER, flags INTEGER, title TEXT)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 428
    const-string v0, "CREATE TABLE IF NOT EXISTS dialog_filter_ep(id INTEGER, peer INTEGER, PRIMARY KEY (id, peer))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 429
    const-string v0, "PRAGMA user_version = 65"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x41

    :cond_3f
    const/16 v9, 0x41

    if-ne v0, v9, :cond_40

    .line 433
    const-string v0, "CREATE INDEX IF NOT EXISTS flags_idx_dialogs ON dialogs(flags);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 434
    const-string v0, "PRAGMA user_version = 66"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x42

    :cond_40
    const/16 v9, 0x42

    if-ne v0, v9, :cond_41

    .line 438
    const-string v0, "CREATE TABLE dialog_filter_pin_v2(id INTEGER, peer INTEGER, pin INTEGER, PRIMARY KEY (id, peer))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 439
    const-string v0, "PRAGMA user_version = 67"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x43

    :cond_41
    const/16 v9, 0x43

    if-ne v0, v9, :cond_42

    .line 443
    const-string v0, "CREATE TABLE IF NOT EXISTS stickers_dice(emoji TEXT PRIMARY KEY, data BLOB, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 444
    const-string v0, "PRAGMA user_version = 68"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x44

    :cond_42
    const/16 v9, 0x44

    if-ne v0, v9, :cond_43

    .line 448
    const-string v0, "ALTER TABLE messages ADD COLUMN forwards INTEGER default 0"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 449
    const-string v0, "PRAGMA user_version = 69"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x45

    :cond_43
    const/16 v9, 0x45

    if-ne v0, v9, :cond_44

    .line 453
    const-string v0, "ALTER TABLE messages ADD COLUMN replies_data BLOB default NULL"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 454
    const-string v0, "ALTER TABLE messages ADD COLUMN thread_reply_id INTEGER default 0"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 455
    const-string v0, "PRAGMA user_version = 70"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x46

    :cond_44
    const/16 v9, 0x46

    if-ne v0, v9, :cond_45

    .line 459
    const-string v0, "CREATE TABLE IF NOT EXISTS chat_pinned_v2(uid INTEGER, mid INTEGER, data BLOB, PRIMARY KEY (uid, mid));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 460
    const-string v0, "PRAGMA user_version = 71"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x47

    :cond_45
    const/16 v9, 0x47

    if-ne v0, v9, :cond_46

    .line 464
    const-string v0, "ALTER TABLE sharing_locations ADD COLUMN proximity INTEGER default 0"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 465
    const-string v0, "PRAGMA user_version = 72"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x48

    :cond_46
    const/16 v9, 0x48

    if-ne v0, v9, :cond_47

    .line 469
    const-string v0, "CREATE TABLE IF NOT EXISTS chat_pinned_count(uid INTEGER PRIMARY KEY, count INTEGER, end INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 470
    const-string v0, "PRAGMA user_version = 73"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x49

    :cond_47
    const/16 v9, 0x49

    if-ne v0, v9, :cond_48

    .line 474
    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN inviter INTEGER default 0"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 475
    const-string v0, "PRAGMA user_version = 74"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4a

    :cond_48
    const/16 v9, 0x4a

    if-ne v0, v9, :cond_49

    .line 479
    const-string v0, "CREATE TABLE IF NOT EXISTS shortcut_widget(id INTEGER, did INTEGER, ord INTEGER, PRIMARY KEY (id, did));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 480
    const-string v0, "CREATE INDEX IF NOT EXISTS shortcut_widget_did ON shortcut_widget(did);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 481
    const-string v0, "PRAGMA user_version = 75"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4b

    :cond_49
    const/16 v9, 0x4b

    if-ne v0, v9, :cond_4a

    .line 485
    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN links INTEGER default 0"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 486
    const-string v0, "PRAGMA user_version = 76"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4c

    :cond_4a
    const/16 v9, 0x4c

    if-ne v0, v9, :cond_4b

    .line 490
    const-string v0, "ALTER TABLE enc_tasks_v2 ADD COLUMN media INTEGER default -1"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 491
    const-string v0, "PRAGMA user_version = 77"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4d

    :cond_4b
    const/16 v9, 0x4d

    if-ne v0, v9, :cond_4c

    .line 495
    const-string v0, "DROP TABLE IF EXISTS channel_admins_v2;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 496
    const-string v0, "CREATE TABLE IF NOT EXISTS channel_admins_v3(did INTEGER, uid INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 497
    const-string v0, "PRAGMA user_version = 78"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4e

    :cond_4c
    const/16 v9, 0x4e

    if-ne v0, v9, :cond_4d

    .line 501
    const-string v0, "DROP TABLE IF EXISTS bot_info;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 502
    const-string v0, "CREATE TABLE IF NOT EXISTS bot_info_v2(uid INTEGER, dialogId INTEGER, info BLOB, PRIMARY KEY(uid, dialogId))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 503
    const-string v0, "PRAGMA user_version = 79"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x4f

    :cond_4d
    const/16 v9, 0x4f

    const/4 v10, 0x3

    if-ne v0, v9, :cond_4f

    .line 507
    const-string v0, "CREATE TABLE IF NOT EXISTS enc_tasks_v3(mid INTEGER, date INTEGER, media INTEGER, PRIMARY KEY(mid, media))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 508
    const-string v0, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v3 ON enc_tasks_v3(date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 510
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 511
    const-string v0, "SELECT mid, date, media FROM enc_tasks_v2 WHERE 1"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 512
    const-string v9, "REPLACE INTO enc_tasks_v3 VALUES(?, ?, ?)"

    invoke-virtual {v2, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 513
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 514
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 515
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    move/from16 v17, v11

    .line 516
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    .line 518
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 519
    invoke-virtual {v9, v6, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 520
    invoke-virtual {v9, v5, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 521
    invoke-virtual {v9, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 522
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_2

    :cond_4e
    move/from16 v17, v11

    .line 524
    :goto_2
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 525
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 526
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 528
    const-string v0, "DROP INDEX IF EXISTS date_idx_enc_tasks_v2;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 529
    const-string v0, "DROP TABLE IF EXISTS enc_tasks_v2;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 531
    const-string v0, "PRAGMA user_version = 80"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x50

    goto :goto_3

    :cond_4f
    move/from16 v17, v11

    :goto_3
    const/16 v9, 0x50

    const/4 v11, 0x5

    if-ne v0, v9, :cond_55

    .line 535
    const-string v0, "CREATE TABLE IF NOT EXISTS scheduled_messages_v2(mid INTEGER, uid INTEGER, send_state INTEGER, date INTEGER, data BLOB, ttl INTEGER, replydata BLOB, PRIMARY KEY(mid, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 536
    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_scheduled_messages_v2 ON scheduled_messages_v2(mid, send_state, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 537
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_idx_scheduled_messages_v2 ON scheduled_messages_v2(uid, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 539
    const-string v0, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid_v2 ON bot_keyboard(mid, uid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 540
    const-string v0, "DROP INDEX IF EXISTS bot_keyboard_idx_mid;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 542
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 545
    :try_start_0
    const-string v0, "SELECT mid, uid, send_state, date, data, ttl, replydata FROM scheduled_messages_v2 WHERE 1"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 548
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v14

    :goto_4
    if-eqz v0, :cond_54

    .line 551
    const-string v9, "REPLACE INTO scheduled_messages_v2 VALUES(?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 552
    :goto_5
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_53

    .line 553
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v12

    if-nez v12, :cond_50

    goto :goto_5

    .line 557
    :cond_50
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 558
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    .line 559
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 560
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 561
    invoke-virtual {v0, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    .line 562
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    .line 564
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 565
    invoke-virtual {v9, v6, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 566
    invoke-virtual {v9, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 567
    invoke-virtual {v9, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 568
    invoke-virtual {v9, v7, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v7, 0x5

    .line 569
    invoke-virtual {v9, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 570
    invoke-virtual {v9, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-eqz v11, :cond_51

    const/4 v3, 0x7

    .line 572
    invoke-virtual {v9, v3, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_6

    :cond_51
    const/4 v3, 0x7

    .line 574
    invoke-virtual {v9, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    .line 576
    :goto_6
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    if-eqz v11, :cond_52

    .line 578
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 580
    :cond_52
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v3, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v11, 0x5

    const/4 v14, 0x0

    goto :goto_5

    .line 582
    :cond_53
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 583
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 586
    :cond_54
    const-string v0, "DROP INDEX IF EXISTS send_state_idx_scheduled_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 587
    const-string v0, "DROP INDEX IF EXISTS uid_date_idx_scheduled_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 588
    const-string v0, "DROP TABLE IF EXISTS scheduled_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 590
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 591
    const-string v0, "PRAGMA user_version = 81"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x51

    :cond_55
    const/16 v3, 0x51

    if-ne v0, v3, :cond_5a

    .line 595
    const-string v0, "CREATE TABLE IF NOT EXISTS media_v3(mid INTEGER, uid INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 596
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_v3 ON media_v3(uid, mid, type, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 598
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 601
    :try_start_1
    const-string v0, "SELECT mid, uid, date, type, data FROM media_v2 WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 604
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_59

    .line 607
    const-string v3, "REPLACE INTO media_v3 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 608
    :goto_8
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_58

    const/4 v7, 0x4

    .line 609
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-nez v8, :cond_56

    goto :goto_8

    :cond_56
    const/4 v7, 0x0

    .line 613
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 614
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    long-to-int v7, v11

    if-nez v7, :cond_57

    shr-long v11, v11, v17

    long-to-int v7, v11

    int-to-long v11, v7

    .line 618
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 620
    :cond_57
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 621
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 623
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 624
    invoke-virtual {v3, v6, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 625
    invoke-virtual {v3, v5, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 626
    invoke-virtual {v3, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 627
    invoke-virtual {v3, v7, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x5

    .line 628
    invoke-virtual {v3, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 629
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 630
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_8

    .line 632
    :cond_58
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 633
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 636
    :cond_59
    const-string v0, "DROP INDEX IF EXISTS uid_mid_type_date_idx_media;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 637
    const-string v0, "DROP TABLE IF EXISTS media_v2;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 638
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 640
    const-string v0, "PRAGMA user_version = 82"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x52

    :cond_5a
    const/16 v3, 0x52

    if-ne v0, v3, :cond_67

    .line 644
    const-string v0, "CREATE TABLE IF NOT EXISTS randoms_v2(random_id INTEGER, mid INTEGER, uid INTEGER, PRIMARY KEY (random_id, mid, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 645
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_idx_randoms_v2 ON randoms_v2(mid, uid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 647
    const-string v0, "CREATE TABLE IF NOT EXISTS enc_tasks_v4(mid INTEGER, uid INTEGER, date INTEGER, media INTEGER, PRIMARY KEY(mid, uid, media))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 648
    const-string v0, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v4 ON enc_tasks_v4(date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 650
    const-string v0, "CREATE TABLE IF NOT EXISTS polls_v2(mid INTEGER, uid INTEGER, id INTEGER, PRIMARY KEY (mid, uid));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 651
    const-string v0, "CREATE INDEX IF NOT EXISTS polls_id_v2 ON polls_v2(id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 653
    const-string v0, "CREATE TABLE IF NOT EXISTS webpage_pending_v2(id INTEGER, mid INTEGER, uid INTEGER, PRIMARY KEY (id, mid, uid));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 655
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 659
    :try_start_2
    const-string v0, "SELECT r.random_id, r.mid, m.uid FROM randoms as r INNER JOIN messages as m ON r.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 662
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_5d

    .line 665
    const-string v3, "REPLACE INTO randoms_v2 VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 666
    :goto_a
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5c

    const/4 v7, 0x0

    .line 667
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 668
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 669
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    long-to-int v13, v11

    if-nez v13, :cond_5b

    shr-long v11, v11, v17

    long-to-int v11, v11

    int-to-long v11, v11

    .line 673
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 676
    :cond_5b
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 677
    invoke-virtual {v3, v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 678
    invoke-virtual {v3, v5, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 679
    invoke-virtual {v3, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 680
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_a

    .line 682
    :cond_5c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 683
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 687
    :cond_5d
    :try_start_3
    const-string v0, "SELECT p.mid, m.uid, p.id FROM polls as p INNER JOIN messages as m ON p.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    .line 690
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_60

    .line 693
    const-string v3, "REPLACE INTO polls_v2 VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 694
    :goto_c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5f

    const/4 v7, 0x0

    .line 695
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 696
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 697
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    long-to-int v7, v11

    if-nez v7, :cond_5e

    shr-long v11, v11, v17

    long-to-int v7, v11

    int-to-long v11, v7

    .line 701
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 704
    :cond_5e
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 705
    invoke-virtual {v3, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 706
    invoke-virtual {v3, v5, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 707
    invoke-virtual {v3, v10, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 708
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_c

    .line 710
    :cond_5f
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 711
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 715
    :cond_60
    :try_start_4
    const-string v0, "SELECT wp.id, wp.mid, m.uid FROM webpage_pending as wp INNER JOIN messages as m ON wp.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 718
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_63

    .line 721
    const-string v3, "REPLACE INTO webpage_pending_v2 VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 722
    :goto_e
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_62

    const/4 v7, 0x0

    .line 723
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 724
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 725
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    long-to-int v13, v11

    if-nez v13, :cond_61

    shr-long v11, v11, v17

    long-to-int v11, v11

    int-to-long v11, v11

    .line 729
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 732
    :cond_61
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 733
    invoke-virtual {v3, v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 734
    invoke-virtual {v3, v5, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 735
    invoke-virtual {v3, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 736
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_e

    .line 738
    :cond_62
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 739
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 743
    :cond_63
    :try_start_5
    const-string v0, "SELECT et.mid, m.uid, et.date, et.media FROM enc_tasks_v3 as et INNER JOIN messages as m ON et.mid = m.mid WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_f

    :catch_5
    move-exception v0

    .line 746
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_66

    .line 749
    const-string v3, "REPLACE INTO enc_tasks_v4 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 750
    :goto_10
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_65

    const/4 v7, 0x0

    .line 751
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 752
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 753
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 754
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    long-to-int v13, v11

    if-nez v13, :cond_64

    shr-long v11, v11, v17

    long-to-int v11, v11

    int-to-long v11, v11

    .line 759
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v11

    .line 762
    :cond_64
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 763
    invoke-virtual {v3, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 764
    invoke-virtual {v3, v5, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 765
    invoke-virtual {v3, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 766
    invoke-virtual {v3, v7, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 767
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_10

    .line 769
    :cond_65
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 770
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 773
    :cond_66
    const-string v0, "DROP INDEX IF EXISTS mid_idx_randoms;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 774
    const-string v0, "DROP TABLE IF EXISTS randoms;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 776
    const-string v0, "DROP INDEX IF EXISTS date_idx_enc_tasks_v3;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 777
    const-string v0, "DROP TABLE IF EXISTS enc_tasks_v3;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 779
    const-string v0, "DROP INDEX IF EXISTS polls_id;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 780
    const-string v0, "DROP TABLE IF EXISTS polls;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 782
    const-string v0, "DROP TABLE IF EXISTS webpage_pending;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 783
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 785
    const-string v0, "PRAGMA user_version = 83"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x53

    :cond_67
    const/16 v3, 0x53

    if-ne v0, v3, :cond_7e

    .line 789
    const-string v0, "CREATE TABLE IF NOT EXISTS messages_v2(mid INTEGER, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER, mention INTEGER, forwards INTEGER, replies_data BLOB, thread_reply_id INTEGER, is_channel INTEGER, PRIMARY KEY(mid, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 790
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_v2 ON messages_v2(uid, mid, read_state, out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 791
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages_v2 ON messages_v2(uid, date, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 792
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages_v2 ON messages_v2(mid, out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 793
    const-string v0, "CREATE INDEX IF NOT EXISTS task_idx_messages_v2 ON messages_v2(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 794
    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_messages_v2 ON messages_v2(mid, send_state, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 795
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_v2 ON messages_v2(uid, mention, read_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 796
    const-string v0, "CREATE INDEX IF NOT EXISTS is_channel_idx_messages_v2 ON messages_v2(mid, is_channel);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 798
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 803
    :try_start_6
    const-string v0, "SELECT mid, uid, read_state, send_state, date, data, out, ttl, media, replydata, imp, mention, forwards, replies_data, thread_reply_id FROM messages WHERE 1"

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    .line 806
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_73

    .line 809
    const-string v3, "REPLACE INTO messages_v2 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 811
    :goto_12
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v7, 0x5

    .line 812
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-nez v8, :cond_68

    goto :goto_12

    :cond_68
    const/4 v7, 0x0

    .line 817
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    int-to-long v11, v9

    .line 818
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    long-to-int v7, v13

    if-nez v7, :cond_69

    shr-long v13, v13, v17

    long-to-int v7, v13

    int-to-long v13, v7

    .line 822
    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v13

    .line 824
    :cond_69
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 825
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    const/4 v15, 0x4

    .line 826
    invoke-virtual {v0, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 827
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    const/4 v4, 0x7

    .line 828
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    const/16 v4, 0x8

    .line 829
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    const/16 v4, 0x9

    .line 830
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    move-object/from16 v18, v2

    const/16 v4, 0xa

    .line 831
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move/from16 v19, v2

    const/16 v4, 0xb

    .line 832
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move/from16 v20, v2

    const/16 v4, 0xc

    .line 833
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move/from16 v21, v2

    const/16 v4, 0xd

    .line 834
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    move-object/from16 v22, v2

    const/16 v4, 0xe

    .line 835
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object v4, v0

    move-object/from16 v23, v1

    shr-long v0, v13, v17

    long-to-int v0, v0

    move/from16 v24, v0

    if-gez v5, :cond_6c

    const/4 v1, 0x0

    .line 838
    invoke-virtual {v8, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 840
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    move/from16 v25, v2

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    .line 841
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez v1, :cond_6a

    .line 842
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v4

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fwd_peer"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_6a
    move-object/from16 v26, v4

    .line 845
    :goto_13
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 846
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v8, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 847
    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_14

    :cond_6b
    move/from16 v25, v2

    move-object/from16 v26, v4

    :goto_14
    const/4 v5, 0x0

    goto :goto_15

    :cond_6c
    move/from16 v25, v2

    move-object/from16 v26, v4

    .line 852
    :goto_15
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    long-to-int v0, v11

    const/4 v1, 0x1

    .line 853
    invoke-virtual {v3, v1, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x2

    .line 854
    invoke-virtual {v3, v1, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 855
    invoke-virtual {v3, v1, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 856
    invoke-virtual {v3, v7, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x5

    .line 857
    invoke-virtual {v3, v7, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x6

    .line 858
    invoke-virtual {v3, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v4, 0x7

    .line 859
    invoke-virtual {v3, v4, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v2, 0x8

    .line 860
    invoke-virtual {v3, v2, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v5, 0x9

    .line 861
    invoke-virtual {v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-eqz v23, :cond_6d

    move-object/from16 v0, v23

    const/16 v6, 0xa

    .line 863
    invoke-virtual {v3, v6, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    :goto_16
    move/from16 v7, v19

    const/16 v9, 0xb

    goto :goto_17

    :cond_6d
    move-object/from16 v0, v23

    const/16 v6, 0xa

    .line 865
    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    goto :goto_16

    .line 867
    :goto_17
    invoke-virtual {v3, v9, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    move/from16 v7, v20

    const/16 v10, 0xc

    .line 868
    invoke-virtual {v3, v10, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    move/from16 v7, v21

    const/16 v11, 0xd

    .line 869
    invoke-virtual {v3, v11, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-eqz v22, :cond_6e

    move-object/from16 v7, v22

    const/16 v12, 0xe

    .line 871
    invoke-virtual {v3, v12, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    :goto_18
    move/from16 v13, v25

    const/16 v14, 0xf

    goto :goto_19

    :cond_6e
    move-object/from16 v7, v22

    const/16 v12, 0xe

    .line 873
    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    goto :goto_18

    .line 875
    :goto_19
    invoke-virtual {v3, v14, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-lez v24, :cond_6f

    const/4 v13, 0x1

    :goto_1a
    const/16 v15, 0x10

    goto :goto_1b

    :cond_6f
    const/4 v13, 0x0

    goto :goto_1a

    .line 876
    :goto_1b
    invoke-virtual {v3, v15, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 877
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    if-eqz v0, :cond_70

    .line 879
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_70
    if-eqz v7, :cond_71

    .line 882
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 884
    :cond_71
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move v4, v1

    move-object/from16 v2, v18

    move-object/from16 v0, v26

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x3

    move-object/from16 v1, p0

    goto/16 :goto_12

    :cond_72
    move-object/from16 v26, v0

    move-object/from16 v18, v2

    .line 886
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 887
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_1c

    :cond_73
    move-object/from16 v18, v2

    .line 892
    :goto_1c
    const-string v0, "SELECT did, last_mid, last_mid_i FROM dialogs WHERE 1"

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 893
    const-string v1, "UPDATE dialogs SET last_mid = ?, last_mid_i = ? WHERE did = ?"

    invoke-virtual {v2, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 894
    :goto_1d
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 895
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    long-to-int v3, v6

    shr-long v8, v6, v17

    long-to-int v8, v8

    if-nez v3, :cond_75

    if-nez v4, :cond_74

    .line 900
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 902
    :cond_74
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_75
    const/4 v9, 0x2

    if-ne v8, v9, :cond_77

    if-nez v5, :cond_76

    .line 905
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 907
    :cond_76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_77
    :goto_1e
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v3, 0x1

    .line 911
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    invoke-virtual {v1, v3, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v9, 0x2

    .line 912
    invoke-virtual {v0, v9}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    invoke-virtual {v1, v9, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x3

    .line 913
    invoke-virtual {v1, v3, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 914
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    const/4 v3, 0x0

    goto :goto_1d

    .line 916
    :cond_78
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 917
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 919
    const-string v0, "SELECT uid, mid FROM unread_push_messages WHERE 1"

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 920
    const-string v1, "UPDATE unread_push_messages SET mid = ? WHERE uid = ? AND mid = ?"

    invoke-virtual {v2, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 921
    :goto_1f
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 922
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    const/4 v3, 0x1

    .line 923
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 924
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 925
    invoke-virtual {v1, v3, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v9, 0x2

    .line 926
    invoke-virtual {v1, v9, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x3

    .line 927
    invoke-virtual {v1, v3, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 928
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    const/4 v3, 0x0

    goto :goto_1f

    .line 930
    :cond_79
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 931
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v4, :cond_7b

    .line 934
    const-string v0, "UPDATE dialogs SET did = ? WHERE did = ?"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 935
    const-string v1, "UPDATE dialog_filter_pin_v2 SET peer = ? WHERE peer = ?"

    invoke-virtual {v2, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 936
    const-string v3, "UPDATE dialog_filter_ep SET peer = ? WHERE peer = ?"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 937
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v6, :cond_7a

    .line 938
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    .line 940
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v10

    shl-long v8, v8, v17

    .line 942
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v12, 0x1

    .line 943
    invoke-virtual {v0, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v13, 0x2

    .line 944
    invoke-virtual {v0, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 945
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 947
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 948
    invoke-virtual {v1, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 949
    invoke-virtual {v1, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 950
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 952
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 953
    invoke-virtual {v3, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 954
    invoke-virtual {v3, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 955
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 957
    :cond_7a
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 958
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 959
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_7b
    if-eqz v5, :cond_7d

    .line 962
    const-string v0, "UPDATE dialogs SET did = ? WHERE did = ?"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 963
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_7c

    .line 964
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 966
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->makeFolderDialogId(I)J

    move-result-wide v6

    const-wide v8, 0x200000000L

    int-to-long v10, v4

    or-long/2addr v8, v10

    .line 968
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v12, 0x1

    .line 969
    invoke-virtual {v0, v12, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v13, 0x2

    .line 970
    invoke-virtual {v0, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 971
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 973
    :cond_7c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 976
    :cond_7d
    const-string v0, "DROP INDEX IF EXISTS uid_mid_read_out_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 977
    const-string v0, "DROP INDEX IF EXISTS uid_date_mid_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 978
    const-string v0, "DROP INDEX IF EXISTS mid_out_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 979
    const-string v0, "DROP INDEX IF EXISTS task_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 980
    const-string v0, "DROP INDEX IF EXISTS send_state_idx_messages2;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 981
    const-string v0, "DROP INDEX IF EXISTS uid_mention_idx_messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 982
    const-string v0, "DROP TABLE IF EXISTS messages;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 983
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 985
    const-string v0, "PRAGMA user_version = 84"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x54

    :cond_7e
    const/16 v1, 0x54

    if-ne v0, v1, :cond_83

    .line 989
    const-string v0, "CREATE TABLE IF NOT EXISTS media_v4(mid INTEGER, uid INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid, type))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 990
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 993
    :try_start_7
    const-string v0, "SELECT mid, uid, date, type, data FROM media_v3 WHERE 1"

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_22

    :catch_7
    move-exception v0

    .line 996
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v14, 0x0

    :goto_22
    if-eqz v14, :cond_82

    .line 999
    const-string v0, "REPLACE INTO media_v4 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 1000
    :goto_23
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v7, 0x4

    .line 1001
    invoke-virtual {v14, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    if-nez v1, :cond_7f

    goto :goto_23

    :cond_7f
    const/4 v3, 0x0

    .line 1005
    invoke-virtual {v14, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v12, 0x1

    .line 1006
    invoke-virtual {v14, v12}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v5

    long-to-int v7, v5

    if-nez v7, :cond_80

    shr-long v5, v5, v17

    long-to-int v5, v5

    int-to-long v5, v5

    .line 1010
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v5

    :cond_80
    const/4 v9, 0x2

    .line 1012
    invoke-virtual {v14, v9}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v8, 0x3

    .line 1013
    invoke-virtual {v14, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 1015
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v12, 0x1

    .line 1016
    invoke-virtual {v0, v12, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1017
    invoke-virtual {v0, v9, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1018
    invoke-virtual {v0, v8, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    .line 1019
    invoke-virtual {v0, v7, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x5

    .line 1020
    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1021
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1022
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_23

    .line 1024
    :cond_81
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1025
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1027
    :cond_82
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1029
    const-string v0, "DROP TABLE IF EXISTS media_v3;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1030
    const-string v0, "PRAGMA user_version = 85"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x55

    :cond_83
    const/16 v1, 0x55

    if-ne v0, v1, :cond_84

    .line 1034
    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN reply_to_message_id INTEGER default 0"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 1035
    const-string v0, "ALTER TABLE scheduled_messages_v2 ADD COLUMN reply_to_message_id INTEGER default 0"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 1037
    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_messages_v2 ON messages_v2(mid, reply_to_message_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1038
    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_scheduled_messages_v2 ON scheduled_messages_v2(mid, reply_to_message_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1040
    const-string v0, "UPDATE messages_v2 SET replydata = NULL"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 1041
    const-string v0, "UPDATE scheduled_messages_v2 SET replydata = NULL"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 1042
    const-string v0, "PRAGMA user_version = 86"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x56

    goto :goto_24

    :cond_84
    move-object/from16 v1, p0

    :goto_24
    const/16 v3, 0x56

    if-ne v0, v3, :cond_85

    .line 1047
    const-string v0, "CREATE TABLE IF NOT EXISTS reactions(data BLOB, hash INTEGER, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1048
    const-string v0, "PRAGMA user_version = 87"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x57

    :cond_85
    const/16 v3, 0x57

    if-ne v0, v3, :cond_86

    .line 1053
    const-string v0, "ALTER TABLE dialogs ADD COLUMN unread_reactions INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1054
    const-string v0, "CREATE TABLE reaction_mentions(message_id INTEGER PRIMARY KEY, state INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1055
    const-string v0, "PRAGMA user_version = 88"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x58

    :cond_86
    const/16 v3, 0x58

    if-eq v0, v3, :cond_87

    const/16 v3, 0x59

    if-ne v0, v3, :cond_88

    .line 1060
    :cond_87
    const-string v0, "DROP TABLE IF EXISTS reaction_mentions;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1061
    const-string v0, "CREATE TABLE IF NOT EXISTS reaction_mentions(message_id INTEGER, state INTEGER, dialog_id INTEGER, PRIMARY KEY(dialog_id, message_id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1062
    const-string v0, "CREATE INDEX IF NOT EXISTS reaction_mentions_did ON reaction_mentions(dialog_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1064
    const-string v0, "DROP INDEX IF EXISTS uid_mid_type_date_idx_media_v3"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1065
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_v4 ON media_v4(uid, mid, type, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1067
    const-string v0, "PRAGMA user_version = 90"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x5a

    :cond_88
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_89

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_8a

    .line 1073
    :cond_89
    const-string v0, "DROP TABLE IF EXISTS downloading_documents;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1074
    const-string v0, "CREATE TABLE downloading_documents(data BLOB, hash INTEGER, id INTEGER, state INTEGER, date INTEGER, PRIMARY KEY(hash, id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1075
    const-string v0, "PRAGMA user_version = 92"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x5c

    :cond_8a
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_8b

    .line 1080
    const-string v0, "CREATE TABLE IF NOT EXISTS attach_menu_bots(data BLOB, hash INTEGER, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1081
    const-string v0, "PRAGMA user_version = 93"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x5f

    :cond_8b
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_8c

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_8d

    .line 1086
    :cond_8c
    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN custom_params BLOB default NULL"

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->executeNoException(Ljava/lang/String;)V

    .line 1087
    const-string v0, "PRAGMA user_version = 96"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x60

    :cond_8d
    const/16 v3, 0x60

    if-ne v0, v3, :cond_8e

    .line 1093
    const-string v0, "CREATE TABLE IF NOT EXISTS premium_promo(data BLOB, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1094
    const-string v0, "UPDATE stickers_v2 SET date = 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    .line 1095
    const-string v0, "PRAGMA user_version = 97"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x61

    :cond_8e
    const/16 v3, 0x61

    if-ne v0, v3, :cond_8f

    .line 1100
    const-string v0, "DROP TABLE IF EXISTS stickers_featured;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1101
    const-string v0, "CREATE TABLE stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash INTEGER, premium INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1102
    const-string v0, "PRAGMA user_version = 98"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x62

    :cond_8f
    const/16 v3, 0x62

    if-ne v0, v3, :cond_90

    .line 1107
    const-string v0, "CREATE TABLE animated_emoji(document_id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1108
    const-string v0, "PRAGMA user_version = 99"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x63

    :cond_90
    const/16 v3, 0x63

    if-ne v0, v3, :cond_91

    .line 1113
    const-string v0, "ALTER TABLE stickers_featured ADD COLUMN emoji INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1114
    const-string v0, "PRAGMA user_version = 100"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x64

    :cond_91
    const/16 v3, 0x64

    if-ne v0, v3, :cond_92

    .line 1119
    const-string v0, "CREATE TABLE emoji_statuses(data BLOB, type INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1120
    const-string v0, "PRAGMA user_version = 101"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x65

    :cond_92
    const/16 v3, 0x65

    if-ne v0, v3, :cond_93

    .line 1125
    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN group_id INTEGER default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1126
    const-string v0, "ALTER TABLE dialogs ADD COLUMN last_mid_group INTEGER default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1127
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_groupid_messages_v2 ON messages_v2(uid, mid, group_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1129
    const-string v0, "PRAGMA user_version = 102"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x66

    :cond_93
    const/16 v3, 0x66

    if-ne v0, v3, :cond_94

    .line 1134
    const-string v0, "CREATE TABLE messages_holes_topics(uid INTEGER, topic_id INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, topic_id, start));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1135
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes_topics(uid, topic_id, end);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1137
    const-string v0, "CREATE TABLE messages_topics(mid INTEGER, uid INTEGER, topic_id INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER, mention INTEGER, forwards INTEGER, replies_data BLOB, thread_reply_id INTEGER, is_channel INTEGER, reply_to_message_id INTEGER, custom_params BLOB, PRIMARY KEY(mid, topic_id, uid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1138
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_topics ON messages_topics(uid, mid, read_state, out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1139
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages_topics ON messages_topics(uid, date, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1140
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages_topics ON messages_topics(mid, out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1141
    const-string v0, "CREATE INDEX IF NOT EXISTS task_idx_messages_topics ON messages_topics(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1142
    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_messages_topics ON messages_topics(mid, send_state, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1143
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_topics ON messages_topics(uid, mention, read_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1144
    const-string v0, "CREATE INDEX IF NOT EXISTS is_channel_idx_messages_topics ON messages_topics(mid, is_channel);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1145
    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_messages_topics ON messages_topics(mid, reply_to_message_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1146
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_uid_messages_topics ON messages_topics(mid, uid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1147
    const-string v0, "CREATE INDEX IF NOT EXISTS mid_uid_topic_id_messages_topics ON messages_topics(mid, topic_id, uid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1149
    const-string v0, "CREATE TABLE media_topics(mid INTEGER, uid INTEGER, topic_id INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid, topic_id, type))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1150
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_topics ON media_topics(uid, topic_id, mid, type, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1152
    const-string v0, "CREATE TABLE media_holes_topics(uid INTEGER, topic_id INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, topic_id, type, start));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1153
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_topics ON media_holes_topics(uid, topic_id, type, end);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1155
    const-string v0, "CREATE TABLE topics(did INTEGER, topic_id INTEGER, data BLOB, top_message INTEGER, topic_message BLOB, unread_count INTEGER, max_read_id INTEGER, unread_mentions INTEGER, unread_reactions INTEGER, PRIMARY KEY(did, topic_id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1156
    const-string v0, "CREATE INDEX IF NOT EXISTS did_top_message_topics ON topics(did, top_message);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1158
    const-string v0, "PRAGMA user_version = 103"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x67

    :cond_94
    const/16 v3, 0x67

    if-ne v0, v3, :cond_95

    .line 1163
    const-string v0, "CREATE TABLE IF NOT EXISTS media_counts_topics(uid INTEGER, topic_id INTEGER, type INTEGER, count INTEGER, old INTEGER, PRIMARY KEY(uid, topic_id, type))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1164
    const-string v0, "CREATE TABLE IF NOT EXISTS reaction_mentions_topics(message_id INTEGER, state INTEGER, dialog_id INTEGER, topic_id INTEGER, PRIMARY KEY(message_id, dialog_id, topic_id))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1165
    const-string v0, "CREATE INDEX IF NOT EXISTS reaction_mentions_topics_did ON reaction_mentions_topics(dialog_id, topic_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1167
    const-string v0, "PRAGMA user_version = 104"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x68

    :cond_95
    const/16 v3, 0x68

    if-ne v0, v3, :cond_96

    .line 1172
    const-string v0, "ALTER TABLE topics ADD COLUMN read_outbox INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1174
    const-string v0, "PRAGMA user_version = 105"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x69

    :cond_96
    const/16 v3, 0x69

    if-ne v0, v3, :cond_97

    .line 1179
    const-string v0, "ALTER TABLE topics ADD COLUMN pinned INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1181
    const-string v0, "PRAGMA user_version = 106"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6a

    :cond_97
    const/16 v3, 0x6a

    if-ne v0, v3, :cond_98

    .line 1186
    const-string v0, "DROP INDEX IF EXISTS uid_mid_read_out_idx_messages_topics"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1187
    const-string v0, "DROP INDEX IF EXISTS uid_mention_idx_messages_topics"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1189
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_topics ON messages_topics(uid, topic_id, mid, read_state, out);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1190
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_topics ON messages_topics(uid, topic_id, mention, read_state);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1192
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_topic_id_messages_topics ON messages_topics(uid, topic_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1193
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_topic_id_date_mid_messages_topics ON messages_topics(uid, topic_id, date, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1194
    const-string v0, "CREATE INDEX IF NOT EXISTS uid_topic_id_mid_messages_topics ON messages_topics(uid, topic_id, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1196
    const-string v0, "CREATE INDEX IF NOT EXISTS did_topics ON topics(did);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1198
    const-string v0, "PRAGMA user_version = 107"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6b

    :cond_98
    const/16 v3, 0x6b

    if-ne v0, v3, :cond_99

    .line 1203
    const-string v0, "ALTER TABLE topics ADD COLUMN total_messages_count INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1204
    const-string v0, "PRAGMA user_version = 108"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6c

    :cond_99
    const/16 v3, 0x6c

    if-ne v0, v3, :cond_9a

    .line 1209
    const-string v0, "ALTER TABLE topics ADD COLUMN hidden INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1210
    const-string v0, "PRAGMA user_version = 109"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6d

    :cond_9a
    const/16 v3, 0x6d

    if-ne v0, v3, :cond_9b

    .line 1215
    const-string v0, "ALTER TABLE dialogs ADD COLUMN ttl_period INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1216
    const-string v0, "PRAGMA user_version = 110"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6e

    :cond_9b
    const/16 v3, 0x6e

    if-ne v0, v3, :cond_9c

    .line 1221
    const-string v0, "CREATE TABLE stickersets(id INTEGER PRIMATE KEY, data BLOB, hash INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1222
    const-string v0, "PRAGMA user_version = 111"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x6f

    :cond_9c
    const/16 v3, 0x6f

    if-ne v0, v3, :cond_9d

    .line 1227
    const-string v0, "CREATE TABLE emoji_groups(type INTEGER PRIMARY KEY, data BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1228
    const-string v0, "PRAGMA user_version = 112"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x70

    :cond_9d
    const/16 v3, 0x70

    if-ne v0, v3, :cond_9e

    .line 1233
    const-string v0, "CREATE TABLE app_config(data BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1234
    const-string v0, "PRAGMA user_version = 113"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x71

    :cond_9e
    const/16 v3, 0x71

    if-ne v0, v3, :cond_9f

    .line 1241
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->reset()V

    .line 1242
    const-string v0, "PRAGMA user_version = 114"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x72

    :cond_9f
    const/16 v3, 0x72

    if-ne v0, v3, :cond_a0

    .line 1246
    const-string v0, "CREATE TABLE bot_keyboard_topics(uid INTEGER, tid INTEGER, mid INTEGER, info BLOB, PRIMARY KEY(uid, tid))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1247
    const-string v0, "CREATE INDEX IF NOT EXISTS bot_keyboard_topics_idx_mid_v2 ON bot_keyboard_topics(mid, uid, tid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1248
    const-string v0, "PRAGMA user_version = 115"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x73

    :cond_a0
    const/16 v3, 0x73

    if-ne v0, v3, :cond_a1

    .line 1252
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_to_reply_messages_v2 ON messages_v2(reply_to_message_id, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1253
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_to_reply_scheduled_messages_v2 ON scheduled_messages_v2(reply_to_message_id, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1254
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_to_reply_messages_topics ON messages_topics(reply_to_message_id, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1255
    const-string v0, "PRAGMA user_version = 117"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x75

    :cond_a1
    const/16 v3, 0x74

    if-eq v0, v3, :cond_a2

    const/16 v3, 0x75

    if-eq v0, v3, :cond_a2

    const/16 v3, 0x76

    if-ne v0, v3, :cond_a3

    .line 1260
    :cond_a2
    const-string v0, "DROP TABLE IF EXISTS stories"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1261
    const-string v0, "DROP TABLE IF EXISTS stories_counter"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1263
    const-string v0, "CREATE TABLE stories (dialog_id INTEGER, story_id INTEGER, data BLOB, local_path TEXT, local_thumb_path TEXT, PRIMARY KEY (dialog_id, story_id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1264
    const-string v0, "CREATE TABLE stories_counter (dialog_id INTEGER PRIMARY KEY, count INTEGER, max_read INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1265
    const-string v0, "PRAGMA user_version = 119"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1266
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->cleanup()V

    const/16 v0, 0x77

    :cond_a3
    const/16 v3, 0x77

    if-ne v0, v3, :cond_a4

    .line 1271
    const-string v0, "ALTER TABLE messages_v2 ADD COLUMN reply_to_story_id INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1272
    const-string v0, "ALTER TABLE messages_topics ADD COLUMN reply_to_story_id INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1274
    const-string v0, "PRAGMA user_version = 120"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x78

    :cond_a4
    const/16 v3, 0x78

    if-ne v0, v3, :cond_a5

    .line 1279
    const-string v0, "CREATE TABLE profile_stories (dialog_id INTEGER, story_id INTEGER, data BLOB, PRIMARY KEY(dialog_id, story_id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1280
    const-string v0, "CREATE TABLE archived_stories (story_id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1282
    const-string v0, "PRAGMA user_version = 121"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x79

    :cond_a5
    const/16 v3, 0x79

    if-ne v0, v3, :cond_a6

    .line 1287
    const-string v0, "CREATE TABLE story_drafts (id INTEGER PRIMARY KEY, date INTEGER, data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1289
    const-string v0, "PRAGMA user_version = 122"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x7a

    :cond_a6
    const/16 v3, 0x7a

    if-ne v0, v3, :cond_a7

    .line 1294
    const-string v0, "ALTER TABLE chat_settings_v2 ADD COLUMN participants_count INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1296
    const-string v0, "PRAGMA user_version = 123"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x7b

    :cond_a7
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_a8

    .line 1301
    const-string v0, "CREATE TABLE story_pushes (uid INTEGER PRIMARY KEY, minId INTEGER, maxId INTEGER, date INTEGER, localName TEXT);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1303
    const-string v0, "PRAGMA user_version = 124"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x7c

    :cond_a8
    const/16 v3, 0x7c

    if-ne v0, v3, :cond_a9

    .line 1308
    const-string v0, "DROP TABLE IF EXISTS story_pushes;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1309
    const-string v0, "CREATE TABLE story_pushes (uid INTEGER, sid INTEGER, date INTEGER, localName TEXT, PRIMARY KEY(uid, sid));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1311
    const-string v0, "PRAGMA user_version = 125"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x7d

    :cond_a9
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_aa

    .line 1316
    const-string v0, "ALTER TABLE story_pushes ADD COLUMN flags INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1318
    const-string v0, "PRAGMA user_version = 126"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x7e

    :cond_aa
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_ab

    .line 1323
    const-string v0, "ALTER TABLE story_pushes ADD COLUMN expire_date INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1325
    const-string v0, "PRAGMA user_version = 127"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x7f

    :cond_ab
    const/16 v3, 0x7f

    if-ne v0, v3, :cond_ac

    .line 1330
    const-string v0, "ALTER TABLE stories ADD COLUMN custom_params BLOB default NULL"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1332
    const-string v0, "PRAGMA user_version = 128"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x80

    :cond_ac
    const/16 v3, 0x80

    if-ne v0, v3, :cond_ad

    .line 1337
    const-string v0, "ALTER TABLE story_drafts ADD COLUMN type INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1339
    const-string v0, "PRAGMA user_version = 129"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x81

    :cond_ad
    const/16 v3, 0x81

    if-ne v0, v3, :cond_ae

    .line 1344
    const-string v0, "CREATE INDEX IF NOT EXISTS stickers_featured_emoji_index ON stickers_featured(emoji);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1346
    const-string v0, "PRAGMA user_version = 130"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x82

    :cond_ae
    const/16 v3, 0x82

    if-ne v0, v3, :cond_af

    .line 1351
    const-string v0, "DROP TABLE archived_stories"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1352
    const-string v0, "ALTER TABLE profile_stories ADD COLUMN type INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1354
    const-string v0, "PRAGMA user_version = 131"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x83

    :cond_af
    const/16 v3, 0x83

    if-ne v0, v3, :cond_b0

    .line 1359
    const-string v0, "ALTER TABLE stories DROP COLUMN local_path"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1360
    const-string v0, "ALTER TABLE stories DROP COLUMN local_thumb_path"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1362
    const-string v0, "PRAGMA user_version = 132"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x84

    :cond_b0
    const/16 v3, 0x84

    if-ne v0, v3, :cond_b1

    .line 1367
    const-string v0, "CREATE TABLE unconfirmed_auth (data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1369
    const-string v0, "PRAGMA user_version = 133"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x85

    :cond_b1
    const/16 v3, 0x85

    if-ne v0, v3, :cond_b2

    .line 1374
    const-string v0, "ALTER TABLE unread_push_messages ADD COLUMN topicId INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1375
    const-string v0, "PRAGMA user_version = 134"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x86

    :cond_b2
    const/16 v3, 0x86

    if-ne v0, v3, :cond_b3

    .line 1380
    const-string v0, "DROP TABLE user_photos"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1381
    const-string v0, "CREATE TABLE dialog_photos(uid INTEGER, id INTEGER, num INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1382
    const-string v0, "CREATE TABLE dialog_photos_count(uid INTEGER PRIMARY KEY, count INTEGER)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1383
    const-string v0, "PRAGMA user_version = 135"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x87

    :cond_b3
    const/16 v3, 0x87

    if-ne v0, v3, :cond_b4

    .line 1389
    const-string v0, "CREATE TABLE stickersets2(id INTEGER PRIMATE KEY, data BLOB, hash INTEGER, date INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1390
    const-string v0, "CREATE INDEX IF NOT EXISTS stickersets2_id_index ON stickersets2(id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1391
    const-string v0, "PRAGMA user_version = 136"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x88

    :cond_b4
    const/16 v3, 0x88

    .line 1395
    const-string v4, "CREATE INDEX IF NOT EXISTS last_mid_idx_dialogs ON saved_dialogs(last_mid);"

    const-string v5, "CREATE INDEX IF NOT EXISTS date_idx_dialogs ON saved_dialogs(date);"

    if-ne v0, v3, :cond_b5

    .line 1396
    const-string v0, "CREATE TABLE saved_dialogs(did INTEGER PRIMARY KEY, date INTEGER, last_mid INTEGER, pinned INTEGER, flags INTEGER, folder_id INTEGER, last_mid_group INTEGER, count INTEGER)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1397
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1398
    invoke-virtual {v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1399
    const-string v0, "CREATE INDEX IF NOT EXISTS folder_id_idx_dialogs ON saved_dialogs(folder_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1400
    const-string v0, "CREATE INDEX IF NOT EXISTS flags_idx_dialogs ON saved_dialogs(flags);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1402
    const-string v0, "PRAGMA user_version = 137"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x89

    :cond_b5
    const/16 v3, 0x89

    if-ne v0, v3, :cond_b6

    .line 1407
    const-string v0, "ALTER TABLE unread_push_messages ADD COLUMN is_reaction INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1408
    const-string v0, "PRAGMA user_version = 138"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x8a

    :cond_b6
    const/16 v3, 0x8a

    if-eq v0, v3, :cond_b7

    const/16 v3, 0x8b

    if-eq v0, v3, :cond_b7

    const/16 v3, 0x8c

    if-eq v0, v3, :cond_b7

    const/16 v3, 0x8d

    if-ne v0, v3, :cond_b8

    .line 1413
    :cond_b7
    const-string v0, "DROP TABLE IF EXISTS tag_message_id;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1414
    const-string v0, "CREATE TABLE tag_message_id(mid INTEGER, topic_id INTEGER, tag INTEGER, text TEXT);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1415
    const-string v0, "CREATE INDEX IF NOT EXISTS tag_idx_tag_message_id ON tag_message_id(tag);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1416
    const-string v0, "CREATE INDEX IF NOT EXISTS tag_text_idx_tag_message_id ON tag_message_id(tag, text);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1417
    const-string v0, "CREATE INDEX IF NOT EXISTS tag_topic_idx_tag_message_id ON tag_message_id(topic_id, tag);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1418
    const-string v0, "CREATE INDEX IF NOT EXISTS tag_topic_text_idx_tag_message_id ON tag_message_id(topic_id, tag, text);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1419
    const-string v0, "PRAGMA user_version = 142"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x8e

    :cond_b8
    const/16 v3, 0x8e

    if-ne v0, v3, :cond_b9

    .line 1424
    const-string v0, "DROP TABLE IF EXISTS saved_reaction_tags;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1425
    const-string v0, "CREATE TABLE saved_reaction_tags (topic_id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1426
    const-string v0, "PRAGMA user_version = 143"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x8f

    :cond_b9
    const/16 v3, 0x8f

    if-ne v0, v3, :cond_ba

    .line 1431
    const-string v0, "DROP TABLE IF EXISTS dialog_filter_extera;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1432
    const-string v0, "DROP TABLE IF EXISTS dialog_filter;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1433
    const-string v0, "CREATE TABLE dialog_filter(id INTEGER PRIMARY KEY, ord INTEGER, unread_count INTEGER, flags INTEGER, title TEXT, color INTEGER DEFAULT -1, emoticon TEXT)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1434
    const-string v0, "PRAGMA user_version = 144"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1435
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearFilters()V

    const/16 v0, 0x90

    :cond_ba
    const/16 v1, 0x90

    if-ne v0, v1, :cond_bb

    .line 1446
    const-string v0, "PRAGMA user_version = 145"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x91

    :cond_bb
    const/16 v1, 0x91

    if-ne v0, v1, :cond_bc

    .line 1451
    const-string v0, "CREATE TABLE business_replies(topic_id INTEGER PRIMARY KEY, name TEXT, order_value INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1453
    const-string v0, "PRAGMA user_version = 146"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x92

    :cond_bc
    const/16 v1, 0x92

    if-ne v0, v1, :cond_bd

    .line 1458
    const-string v0, "CREATE TABLE quick_replies_messages(mid INTEGER, topic_id INTEGER, send_state INTEGER, date INTEGER, data BLOB, ttl INTEGER, replydata BLOB, reply_to_message_id INTEGER, PRIMARY KEY(mid, topic_id))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1459
    const-string v0, "CREATE INDEX IF NOT EXISTS send_state_idx_quick_replies_messages ON quick_replies_messages(mid, send_state, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1460
    const-string v0, "CREATE INDEX IF NOT EXISTS topic_date_idx_quick_replies_messages ON quick_replies_messages(topic_id, date);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1461
    const-string v0, "CREATE INDEX IF NOT EXISTS reply_to_idx_quick_replies_messages ON quick_replies_messages(mid, reply_to_message_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1462
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_to_reply_quick_replies_messages ON quick_replies_messages(reply_to_message_id, mid);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1464
    const-string v0, "PRAGMA user_version = 147"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x93

    :cond_bd
    const/16 v1, 0x93

    if-ne v0, v1, :cond_be

    .line 1469
    const-string v0, "ALTER TABLE business_replies ADD COLUMN count INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1471
    const-string v0, "PRAGMA user_version = 148"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x94

    :cond_be
    const/16 v1, 0x94

    if-ne v0, v1, :cond_bf

    .line 1476
    const-string v0, "ALTER TABLE topics ADD COLUMN edit_date INTEGER default 0"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1477
    const-string v0, "PRAGMA user_version = 149"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x95

    :cond_bf
    const/16 v1, 0x95

    if-ne v0, v1, :cond_c0

    .line 1482
    const-string v0, "ALTER TABLE stickersets2 ADD COLUMN short_name TEXT;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1483
    const-string v0, "CREATE INDEX IF NOT EXISTS stickersets2_id_short_name ON stickersets2(id, short_name);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1485
    const-string v0, "PRAGMA user_version = 150"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x96

    :cond_c0
    const/16 v1, 0x96

    if-ne v0, v1, :cond_c1

    .line 1490
    const-string v0, "CREATE TABLE business_links(data BLOB, order_value INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1492
    const-string v0, "PRAGMA user_version = 151"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x97

    :cond_c1
    const/16 v1, 0x97

    if-ne v0, v1, :cond_c2

    .line 1497
    const-string v0, "ALTER TABLE profile_stories ADD COLUMN seen INTEGER default 0;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1499
    const-string v0, "PRAGMA user_version = 152"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x98

    :cond_c2
    const/16 v1, 0x98

    if-ne v0, v1, :cond_c3

    .line 1504
    const-string v0, "ALTER TABLE profile_stories ADD COLUMN pin INTEGER default 0;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1506
    const-string v0, "PRAGMA user_version = 153"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x99

    :cond_c3
    const/16 v1, 0x99

    if-ne v0, v1, :cond_c4

    .line 1511
    const-string v0, "CREATE TABLE effects(data BLOB)"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1512
    const-string v0, "PRAGMA user_version = 154"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x9a

    :cond_c4
    const/16 v1, 0x9a

    if-ne v0, v1, :cond_c5

    .line 1517
    const-string v0, "CREATE TABLE fact_checks(hash INTEGER PRIMARY KEY, data BLOB, expires INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1518
    const-string v0, "PRAGMA user_version = 155"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x9b

    :cond_c5
    const/16 v1, 0x9b

    if-ne v0, v1, :cond_c6

    .line 1523
    const-string v0, "CREATE TABLE popular_bots(uid INTEGER PRIMARY KEY, time INTEGER, offset TEXT);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1524
    const-string v0, "PRAGMA user_version = 156"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x9c

    :cond_c6
    const/16 v1, 0x9c

    if-eq v0, v1, :cond_c7

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_c8

    .line 1529
    :cond_c7
    const-string v0, "CREATE TABLE star_gifts2(id INTEGER PRIMARY KEY, data BLOB, hash INTEGER, time INTEGER);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1530
    const-string v0, "PRAGMA user_version = 158"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x9e

    :cond_c8
    const/16 v1, 0x9e

    if-ne v0, v1, :cond_c9

    .line 1535
    const-string v0, "DELETE FROM star_gifts2"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1536
    const-string v0, "ALTER TABLE star_gifts2 ADD COLUMN pos INTEGER default 0;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1537
    const-string v0, "PRAGMA user_version = 159"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0x9f

    :cond_c9
    const/16 v1, 0x9f

    if-ne v0, v1, :cond_ca

    .line 1542
    const-string v0, "ALTER TABLE dialog_filter ADD COLUMN entities BLOB"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1543
    const-string v0, "PRAGMA user_version = 160"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa0

    :cond_ca
    const/16 v1, 0xa0

    if-ne v0, v1, :cond_cb

    .line 1548
    const-string v0, "ALTER TABLE dialog_filter ADD COLUMN noanimate INTEGER"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1549
    const-string v0, "PRAGMA user_version = 161"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa1

    :cond_cb
    const/16 v1, 0xa1

    if-ne v0, v1, :cond_cc

    .line 1554
    const-string v0, "DELETE FROM popular_bots"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1555
    const-string v0, "ALTER TABLE popular_bots ADD COLUMN pos INTEGER"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1556
    const-string v0, "PRAGMA user_version = 162"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa2

    :cond_cc
    const/16 v1, 0xa2

    if-ne v0, v1, :cond_cd

    .line 1561
    const-string v0, "DROP TABLE saved_dialogs"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1562
    const-string v0, "CREATE TABLE saved_dialogs(did INTEGER, date INTEGER, last_mid INTEGER, pinned INTEGER, flags INTEGER, folder_id INTEGER, last_mid_group INTEGER, count INTEGER, forumChatId INTEGER, PRIMARY KEY (did, forumChatId))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1563
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1564
    invoke-virtual {v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1565
    const-string v0, "CREATE INDEX IF NOT EXISTS folder_id_idx_dialogs ON saved_dialogs(folder_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1566
    const-string v0, "CREATE INDEX IF NOT EXISTS flags_idx_dialogs ON saved_dialogs(flags);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1567
    const-string v0, "CREATE INDEX IF NOT EXISTS forum_idx_dialogs ON saved_dialogs(forumChatId);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1568
    const-string v0, "PRAGMA user_version = 163"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa3

    :cond_cd
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_ce

    .line 1573
    const-string v0, "DROP TABLE saved_dialogs"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1574
    const-string v0, "CREATE TABLE saved_dialogs(did INTEGER, date INTEGER, last_mid INTEGER, pinned INTEGER, flags INTEGER, folder_id INTEGER, last_mid_group INTEGER, count INTEGER, forumChatId INTEGER, unread_count INTEGER, max_read_id INTEGER, read_outbox INTEGER, PRIMARY KEY (did, forumChatId))"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1575
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1576
    invoke-virtual {v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1577
    const-string v0, "CREATE INDEX IF NOT EXISTS folder_id_idx_dialogs ON saved_dialogs(folder_id);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1578
    const-string v0, "CREATE INDEX IF NOT EXISTS flags_idx_dialogs ON saved_dialogs(flags);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1579
    const-string v0, "CREATE INDEX IF NOT EXISTS forum_idx_dialogs ON saved_dialogs(forumChatId);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1580
    const-string v0, "PRAGMA user_version = 164"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa4

    :cond_ce
    const/16 v1, 0xa4

    if-ne v0, v1, :cond_cf

    .line 1585
    const-string v0, "ALTER TABLE topics ADD COLUMN nopaid_messages_exception INTEGER default 0;"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1586
    const-string v0, "PRAGMA user_version = 165"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa5

    :cond_cf
    const/16 v1, 0xa5

    if-ne v0, v1, :cond_d0

    .line 1591
    const-string v0, "CREATE TABLE profile_stories_albums (dialog_id INTEGER, album_id INTEGER, order_index INTEGER, data BLOB, PRIMARY KEY(dialog_id, album_id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1592
    const-string v0, "CREATE TABLE profile_stories_albums_links (dialog_id INTEGER, album_id INTEGER, story_id INTEGER, order_index INTEGER, PRIMARY KEY (dialog_id, album_id, story_id));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1593
    const-string v0, "PRAGMA user_version = 166"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa6

    :cond_d0
    const/16 v1, 0xa6

    if-ne v0, v1, :cond_d1

    .line 1598
    const-string v0, "DROP TABLE profile_stories"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1599
    const-string v0, "CREATE TABLE profile_stories (dialog_id INTEGER, story_id INTEGER, data BLOB, type INTEGER, seen INTEGER, pin INTEGER, PRIMARY KEY(dialog_id, story_id, type));"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1600
    const-string v0, "PRAGMA user_version = 167"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa7

    :cond_d1
    const/16 v1, 0xa7

    if-ne v0, v1, :cond_d2

    .line 1605
    const-string v0, "CREATE TABLE gift_themes (slug TEXT PRIMARY KEY, data BLOB);"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1606
    const-string v0, "PRAGMA user_version = 168"

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/16 v0, 0xa8

    :cond_d2
    return v0
.end method

.method public static recoverDatabase(Ljava/io/File;Ljava/io/File;Ljava/io/File;I)Z
    .locals 20

    .line 1614
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 1615
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recover_database_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1618
    new-instance v2, Ljava/io/File;

    const-string v0, "cache4.db"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1619
    new-instance v3, Ljava/io/File;

    const-string v0, "cache4.db-wal"

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1620
    new-instance v4, Ljava/io/File;

    const-string v0, "cache4.db-shm"

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1622
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1623
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1624
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1626
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1631
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    const-string v5, "start recover database"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1637
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1639
    :try_start_2
    new-instance v9, Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    .line 1640
    const-string v10, "PRAGMA secure_delete = ON"

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1641
    const-string v10, "PRAGMA temp_store = MEMORY"

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1642
    const-string v10, "PRAGMA journal_mode = WAL"

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1643
    const-string v10, "PRAGMA journal_size_limit = 10485760"

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1645
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->createTables(Lorg/telegram/SQLite/SQLiteDatabase;)V

    .line 1646
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ATTACH DATABASE \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\" AS old;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1648
    const-string v10, "PRAGMA old.user_version"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v11, 0xa8

    if-eq v10, v11, :cond_0

    .line 1650
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t restore database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v6

    :catch_1
    move-exception v0

    move/from16 v19, v5

    move/from16 p3, v6

    goto/16 :goto_8

    .line 1653
    :cond_0
    :try_start_4
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1654
    const-string v11, "messages_v2"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1655
    const-string v11, "messages_holes"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1656
    const-string v11, "scheduled_messages_v2"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1657
    const-string v11, "media_holes_v2"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1658
    const-string v11, "media_v4"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1659
    const-string v11, "messages_holes_topics"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1660
    const-string v11, "messages_topics"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1661
    const-string v11, "media_topics"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1662
    const-string v11, "media_holes_topics"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1663
    const-string v11, "topics"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1664
    const-string v11, "media_counts_v2"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1665
    const-string v11, "media_counts_topics"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1666
    const-string v11, "dialogs"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1667
    const-string v11, "dialog_filter"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1668
    const-string v11, "dialog_filter_ep"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1669
    const-string v11, "dialog_filter_pin_v2"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v11, v6

    .line 1672
    :goto_1
    sget-object v12, Lorg/telegram/messenger/MessagesStorage;->DATABASE_TABLES:[Ljava/lang/String;

    array-length v13, v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-ge v11, v13, :cond_2

    .line 1673
    :try_start_5
    aget-object v12, v12, v11

    .line 1674
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    .line 1677
    :cond_1
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "INSERT OR IGNORE INTO %s SELECT * FROM old.%s;"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v6

    aput-object v12, v15, v5

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1680
    :cond_2
    :try_start_6
    const-string v10, "SELECT did FROM old.dialogs"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10

    .line 1682
    :goto_3
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v11, :cond_4

    .line 1683
    :try_start_7
    invoke-virtual {v10, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 1684
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1685
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1687
    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1690
    :cond_4
    :try_start_8
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move v10, v6

    .line 1693
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-ge v10, v11, :cond_5

    .line 1694
    :try_start_9
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 1695
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "INSERT OR IGNORE INTO messages_v2 SELECT * FROM old.messages_v2 WHERE uid = %d;"

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v11, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1696
    const-string v13, "INSERT OR IGNORE INTO messages_holes SELECT * FROM old.messages_holes WHERE uid = %d;"

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v11, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1697
    const-string v13, "INSERT OR IGNORE INTO media_holes_v2 SELECT * FROM old.media_holes_v2 WHERE uid = %d;"

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v11, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1698
    const-string v13, "INSERT OR IGNORE INTO media_v4 SELECT * FROM old.media_v4 WHERE uid = %d;"

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v11, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1701
    :cond_5
    :try_start_a
    const-string v0, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    .line 1702
    const-string v0, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    move v0, v6

    .line 1704
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_7

    .line 1705
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1707
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT last_mid_i, last_mid FROM old.dialogs WHERE did = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v11, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 1709
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1710
    invoke-virtual {v11, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move/from16 p3, v6

    move-wide/from16 v17, v7

    .line 1711
    :try_start_b
    invoke-virtual {v11, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    .line 1712
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move/from16 v19, v5

    :try_start_c
    const-string v5, "INSERT OR IGNORE INTO messages_v2 SELECT * FROM old.messages_v2 WHERE uid = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " AND mid IN ("

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1714
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-int v5, v6

    move-object v6, v11

    move-wide v10, v14

    const-wide/16 v15, 0x0

    move v14, v5

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;IJ)V

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_6
    move-wide/from16 v7, v17

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v19, v5

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v19, v5

    move/from16 p3, v6

    move-wide/from16 v17, v7

    goto :goto_8

    :cond_6
    move/from16 v19, v5

    move/from16 p3, v6

    move-wide/from16 v17, v7

    move-object v6, v11

    .line 1717
    :goto_7
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, p3

    move-wide/from16 v7, v17

    move/from16 v5, v19

    goto/16 :goto_5

    :cond_7
    move/from16 v19, v5

    move/from16 p3, v6

    move-wide/from16 v17, v7

    .line 1721
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1722
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1724
    const-string v0, "DETACH DATABASE old;"

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1725
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-wide/from16 v7, v17

    move/from16 v0, v19

    goto :goto_9

    :catch_5
    move-exception v0

    move/from16 v19, v5

    move/from16 p3, v6

    const-wide/16 v7, 0x0

    .line 1727
    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move/from16 v0, p3

    :goto_9
    if-nez v0, :cond_8

    return p3

    .line 1734
    :cond_8
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 1735
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 1736
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-object/from16 v1, p0

    .line 1738
    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-object/from16 v1, p1

    .line 1739
    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-object/from16 v1, p2

    .line 1740
    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1742
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1743
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1744
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database recovered time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return v19

    :catch_6
    move-exception v0

    .line 1746
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return p3
.end method
