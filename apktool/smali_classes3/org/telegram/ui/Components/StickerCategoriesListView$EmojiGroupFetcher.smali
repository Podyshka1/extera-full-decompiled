.class Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher;
.super Lorg/telegram/messenger/CacheFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiGroupFetcher"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ItTxN5yQgcyJ0ciauXDJGTpsOXk(ILorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;Ljava/lang/Integer;)V
    .locals 2

    .line 971
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 974
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DELETE FROM emoji_groups WHERE type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void

    .line 976
    :cond_0
    const-string v0, "REPLACE INTO emoji_groups VALUES(?, ?)"

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    .line 977
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 978
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 979
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 980
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 p1, 0x2

    .line 981
    invoke-virtual {p0, p1, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 982
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 983
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 984
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 988
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d9VgXuQKrOQ1qkFLkDr7Mpark10(ILjava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 6

    const-wide/16 v0, 0x0

    .line 950
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    .line 937
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 940
    const-string v2, "SELECT data FROM emoji_groups WHERE type = ?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 941
    :try_start_3
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 942
    invoke-virtual {p0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 944
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    invoke-static {p1, v2, v3}, Lorg/telegram/tgnet/TLRPC$messages_EmojiGroups;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_EmojiGroups;

    move-result-object v2

    .line 945
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    move-object v2, v1

    .line 949
    :goto_0
    instance-of p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;

    if-nez p1, :cond_1

    .line 950
    invoke-interface {p2, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 952
    :cond_1
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;

    .line 953
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->hash:I

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v1, p0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_2
    move-object p0, v1

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p1, p0

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 961
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    return-void

    .line 957
    :goto_4
    :try_start_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 958
    invoke-interface {p2, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_3

    .line 961
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    return-void

    :goto_5
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 963
    :cond_4
    throw p1
.end method

.method public static synthetic $r8$lambda$hoVrwIB0C7JCXIxZyF899CAsQ48(Lorg/telegram/messenger/Utilities$Callback4;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 922
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 921
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroupsNotModified;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 922
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v1, p2, p1}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 923
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;

    if-eqz v0, :cond_1

    .line 924
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;

    .line 925
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->hash:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p2, p1, v0, v1}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 927
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v1, p2, v0}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 901
    invoke-direct {p0}, Lorg/telegram/messenger/CacheFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/StickerCategoriesListView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLocal(ILjava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    .line 934
    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic getLocal(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 901
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher;->getLocal(ILjava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method protected getRemote(ILjava/lang/Integer;JLorg/telegram/messenger/Utilities$Callback4;)V
    .locals 2

    .line 906
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 907
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiStatusGroups;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiStatusGroups;-><init>()V

    long-to-int p3, p3

    .line 908
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiStatusGroups;->hash:I

    goto :goto_0

    .line 909
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 910
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiProfilePhotoGroups;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiProfilePhotoGroups;-><init>()V

    long-to-int p3, p3

    .line 911
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiProfilePhotoGroups;->hash:I

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 913
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiStickerGroups;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiStickerGroups;-><init>()V

    long-to-int p3, p3

    .line 914
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiStickerGroups;->hash:I

    goto :goto_0

    .line 916
    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiGroups;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiGroups;-><init>()V

    long-to-int p3, p3

    .line 917
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiGroups;->hash:I

    .line 920
    :goto_0
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher$$ExternalSyntheticLambda1;

    invoke-direct {p3, p5}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback4;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method protected bridge synthetic getRemote(ILjava/lang/Object;JLorg/telegram/messenger/Utilities$Callback4;)V
    .locals 0

    .line 901
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher;->getRemote(ILjava/lang/Integer;JLorg/telegram/messenger/Utilities$Callback4;)V

    return-void
.end method

.method protected setLocal(ILjava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;J)V
    .locals 0

    .line 969
    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p4

    new-instance p5, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher$$ExternalSyntheticLambda0;

    invoke-direct {p5, p1, p3, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher$$ExternalSyntheticLambda0;-><init>(ILorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;Ljava/lang/Integer;)V

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic setLocal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    .line 901
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;

    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiGroupFetcher;->setLocal(ILjava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;J)V

    return-void
.end method
