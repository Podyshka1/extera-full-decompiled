.class public Lorg/telegram/messenger/SavedMessagesController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    }
.end annotation


# instance fields
.field public allDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final checkMessagesCallbacks:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private final currentAccount:I

.field private dialogsCount:I

.field private dialogsCountHidden:I

.field public dialogsEndReached:Z

.field private dialogsLoaded:Z

.field private dialogsLoading:Z

.field private loadedCache:Z

.field private loadedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private loadingCache:Z

.field private loadingCacheOnly:Z

.field private final saveCacheRunnable:Ljava/lang/Runnable;

.field private saving:Z

.field public unsupported:Z


# direct methods
.method public static synthetic $r8$lambda$-sSuV4zjr2r8i-5DLaP9LiuvV1o(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$deleteCache$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$6JDMTifkCOOLlYO0muT2L2GW2ms(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$hasSavedMessages$14(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSvuyxOt3q15EK34jiI6-LY10MA(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 775
    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$HvH1nMEVduNBB_GkY2q6FxQQOoU(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsLastMessage$9(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$J_GWXtq53kL_mEUWGGGkmPIpp0U(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadCache$7(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYJ8lqY6AZfcyITbkBYloznY7a4(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsLastMessage$8(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QUUbn8Zz3sQYft_7bZAsAQB2jY4(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$2(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZcCB3xWv6JZLY6ZzyGBQzPIyLs(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$deleteCache$13(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yk08U6mSr-IlU8ZSjyku4Mms9vg(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zsux8bVJ6l1SQFXhHMugb9Ij3lQ(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$saveCache$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$gISHbPNOLgNeuruBMMX9zY6_3Hk(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mlsKB21tK1WClx_bTOJ4ZDE4v2U(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 778
    invoke-static {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->-$$Nest$fgetpinnedOrder(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->-$$Nest$fgetpinnedOrder(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$o-P46C-p71OhNcRZ2S-yxMjc3dU(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadCache$6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qNTEx4E69IhKNyK5I_SErwc2WYk(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->lambda$saveCache$11(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rE5DX-YZOxMuZ-V-3xq_XrVKEK0(Lorg/telegram/messenger/SavedMessagesController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$hasSavedMessages$15(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwd-CB6KxU3Pc46Gnb89goEExbg(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 93
    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$yPNwywrhLwkGpjrIQRksXKi6uso(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$3(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    .line 969
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    .line 1149
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    .line 33
    iput p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    .line 34
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "savedMessagesUnsupported"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    return-void
.end method

.method private deleteCache()V
    .locals 3

    .line 1028
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1031
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    .line 1032
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 722
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 723
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 724
    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v3, :cond_0

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private invalidate()V
    .locals 9

    .line 541
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 546
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 547
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move v3, v0

    .line 549
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 550
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 551
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v7, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 556
    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-nez v3, :cond_3

    .line 557
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 562
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 563
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 564
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 565
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    .line 566
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    return-void
.end method

.method private synthetic lambda$deleteCache$12()V
    .locals 1

    const/4 v0, 0x0

    .line 1045
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    .line 1046
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    return-void
.end method

.method private synthetic lambda$deleteCache$13(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 3

    .line 1034
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    .line 1036
    :try_start_0
    const-string v0, "DELETE FROM saved_dialogs WHERE forumChatId = ?"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    .line 1037
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 1038
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1039
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1040
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1042
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1044
    :goto_0
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$hasSavedMessages$14(Lorg/telegram/tgnet/TLObject;J)V
    .locals 6

    .line 1174
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_4

    .line 1175
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1176
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1177
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v1, :cond_0

    .line 1178
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 1181
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1182
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1183
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    if-lez v0, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-lez v0, :cond_3

    .line 1187
    invoke-virtual {p0, p2, p3, v0, v5}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JIZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1188
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1189
    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2, p1, v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    .line 1190
    iput v0, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 1191
    iput-boolean v5, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    .line 1192
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    goto :goto_1

    .line 1196
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    .line 1200
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1201
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz p1, :cond_4

    .line 1203
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_4

    .line 1204
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private synthetic lambda$hasSavedMessages$15(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1173
    new-instance p4, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadCache$6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 864
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    .line 867
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 868
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 869
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    .line 871
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 873
    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    if-eqz p5, :cond_0

    .line 875
    iget-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCacheOnly:Z

    if-nez p1, :cond_0

    .line 876
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCache$7(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 35

    move-object/from16 v0, p1

    .line 796
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    .line 799
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 800
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 801
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 802
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 804
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 805
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 806
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 809
    :try_start_0
    const-string v10, "SELECT did, date, last_mid, pinned, flags, folder_id, last_mid_group, count, unread_count, max_read_id, read_outbox FROM saved_dialogs WHERE forumChatId = ? ORDER BY pinned ASC, date DESC"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v12, v14, v11

    invoke-virtual {v1, v10, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 810
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 811
    new-instance v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-direct {v12}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;-><init>()V

    .line 812
    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    iput-wide v14, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    .line 813
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    invoke-static {v12, v14}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->-$$Nest$fputlocalDate(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)V

    const/4 v14, 0x2

    .line 814
    invoke-virtual {v10, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    iput v15, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v15, 0x3

    move/from16 v16, v14

    .line 815
    invoke-virtual {v10, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    invoke-static {v12, v14}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->-$$Nest$fputpinnedOrder(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)V

    const/4 v14, 0x4

    .line 816
    invoke-virtual {v10, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    and-int/2addr v14, v13

    if-eqz v14, :cond_0

    move v14, v13

    goto :goto_1

    :cond_0
    move v14, v11

    .line 817
    :goto_1
    iput-boolean v14, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    .line 818
    invoke-static {v12}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->-$$Nest$fgetpinnedOrder(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result v14

    move/from16 v17, v13

    const/16 v13, 0x3e7

    if-eq v14, v13, :cond_1

    move/from16 v13, v17

    goto :goto_2

    :cond_1
    move v13, v11

    :goto_2
    iput-boolean v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    const/4 v13, 0x7

    .line 819
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/16 v13, 0x8

    .line 820
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->unreadCount:J

    const/16 v13, 0x9

    .line 821
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readInboxMaxId:J

    const/16 v13, 0xa

    .line 822
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readOutboxMaxId:J

    .line 823
    iget-wide v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gez v18, :cond_2

    neg-long v13, v13

    .line 824
    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v20, v9

    move-object v9, v10

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v20, v9

    move-object v9, v10

    goto/16 :goto_b

    .line 826
    :cond_2
    :try_start_3
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :goto_3
    const-string v13, "SELECT data FROM messages_topics WHERE uid = ? AND mid = ? AND topic_id = ?"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move/from16 v18, v11

    iget v11, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    :try_start_4
    iget-wide v9, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v14, v10, v18

    aput-object v11, v10, v17

    aput-object v9, v10, v16

    invoke-virtual {v1, v13, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 830
    :try_start_5
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_3

    move/from16 v10, v18

    .line 831
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    move/from16 v13, v17

    .line 832
    invoke-virtual {v11, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v14

    invoke-static {v11, v14, v13}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v14

    .line 833
    invoke-static {v14, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 834
    new-instance v20, Lorg/telegram/messenger/MessageObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v15, p0

    :try_start_6
    iget v10, v15, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move/from16 v21, v10

    move-object/from16 v22, v14

    invoke-direct/range {v20 .. v34}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    move-object/from16 v10, v20

    iput-object v10, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 835
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v20, v9

    :goto_5
    move-object/from16 v9, v19

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :goto_6
    move-object/from16 v20, v9

    :goto_7
    move-object/from16 v9, v19

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :cond_3
    move-object/from16 v15, p0

    move/from16 v13, v17

    .line 837
    :goto_8
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 839
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v10, v19

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    goto :goto_7

    :cond_4
    move-object/from16 v15, p0

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    .line 842
    :try_start_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 843
    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_7

    .line 845
    :cond_5
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const-string v2, ","

    if-nez v1, :cond_6

    .line 846
    :try_start_8
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 848
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 849
    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/telegram/messenger/MessagesStorage;->getAnimatedEmoji(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 855
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v20, :cond_9

    .line 859
    :goto_a
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v20, v9

    goto :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v20, v9

    .line 852
    :goto_b
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v9, :cond_8

    .line 855
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_8
    if-eqz v20, :cond_9

    goto :goto_a

    .line 863
    :cond_9
    :goto_c
    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda2;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v3, v15

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_7
    move-exception v0

    :goto_d
    if-eqz v9, :cond_a

    .line 855
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_a
    if-eqz v20, :cond_b

    .line 859
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 862
    :cond_b
    throw v0
.end method

.method private synthetic lambda$loadDialogs$1()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    return-void
.end method

.method private synthetic lambda$loadDialogs$2(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 250
    iget-boolean v4, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    .line 251
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    .line 252
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 253
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;

    .line 254
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 255
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 256
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 257
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->messages:Ljava/util/ArrayList;

    const/4 v15, 0x3

    const-wide/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    move v2, v6

    .line 258
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 259
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$savedDialog;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->messages:Ljava/util/ArrayList;

    invoke-static {v3, v5, v8, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromTL(ILorg/telegram/tgnet/TLRPC$savedDialog;Ljava/util/ArrayList;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v3

    move v5, v6

    .line 260
    :goto_1
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 261
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 262
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 263
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iput-boolean v8, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move v5, v6

    .line 268
    :goto_3
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 269
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 275
    :cond_3
    iget-object v5, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_5
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 281
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 282
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    .line 283
    invoke-direct {v0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    .line 284
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    goto/16 :goto_e

    .line 285
    :cond_6
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;

    if-eqz v5, :cond_f

    .line 286
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 287
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;

    .line 288
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 289
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 290
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 291
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->messages:Ljava/util/ArrayList;

    const/4 v15, 0x3

    const-wide/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    move v2, v6

    .line 292
    :goto_5
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 293
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$savedDialog;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->messages:Ljava/util/ArrayList;

    invoke-static {v3, v5, v8, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromTL(ILorg/telegram/tgnet/TLRPC$savedDialog;Ljava/util/ArrayList;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v3

    move v5, v6

    .line 294
    :goto_6
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 295
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 296
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 297
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iput-boolean v8, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    move v5, v6

    .line 302
    :goto_8
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 303
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 309
    :cond_a
    iget-object v5, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 311
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 314
    :cond_c
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->count:I

    iput v2, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 315
    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->getPinnedCount()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    if-ge v2, v3, :cond_e

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_a

    :cond_d
    move v1, v6

    goto :goto_b

    :cond_e
    :goto_a
    move v1, v7

    :goto_b
    iput-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 316
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    .line 317
    invoke-direct {v0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    .line 318
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    goto :goto_e

    .line 319
    :cond_f
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;

    if-eqz v5, :cond_13

    .line 320
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 321
    iget-object v3, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;->count:I

    iput v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 323
    iput v6, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    move v1, v6

    .line 324
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 325
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 326
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 330
    :cond_11
    iget-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 331
    iget-object v2, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    if-lt v2, v3, :cond_12

    move v2, v7

    goto :goto_d

    :cond_12
    move v2, v6

    :goto_d
    iput-boolean v2, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 332
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-eqz v2, :cond_14

    if-nez v1, :cond_14

    .line 334
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    goto :goto_e

    :cond_13
    if-eqz v3, :cond_14

    .line 337
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 338
    const-string v1, "SAVED_DIALOGS_UNSUPPORTED"

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 339
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    .line 342
    :cond_14
    :goto_e
    iget-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-eq v1, v4, :cond_15

    .line 343
    iget v1, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "savedMessagesUnsupported"

    iget-boolean v3, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    :cond_15
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    return-void
.end method

.method private synthetic lambda$loadDialogs$3(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 249
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveCache$10()V
    .locals 1

    const/4 v0, 0x0

    .line 1023
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    return-void
.end method

.method private synthetic lambda$saveCache$11(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 9

    .line 984
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x0

    .line 987
    :try_start_0
    const-string v1, "DELETE FROM saved_dialogs WHERE forumChatId = ?"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 988
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 989
    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 990
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 991
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 993
    const-string v1, "REPLACE INTO saved_dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    move v1, p1

    .line 994
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 995
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 996
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 997
    iget-wide v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 998
    invoke-virtual {v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 999
    iget v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1000
    iget-boolean v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    const/16 v6, 0x3e7

    :goto_1
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1001
    iget-boolean v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x6

    .line 1002
    invoke-virtual {v0, v6, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x7

    .line 1003
    invoke-virtual {v0, v6, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1004
    iget v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/16 v7, 0x8

    invoke-virtual {v0, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v6, 0x9

    .line 1005
    invoke-virtual {v0, v6, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1006
    iget-wide v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->unreadCount:J

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1007
    iget-wide v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readInboxMaxId:J

    const/16 v8, 0xb

    invoke-virtual {v0, v8, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1008
    iget-wide v5, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readOutboxMaxId:J

    const/16 v7, 0xc

    invoke-virtual {v0, v7, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1010
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    .line 1012
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_4

    .line 1015
    :goto_3
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 1022
    :cond_2
    :goto_4
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    if-eqz v0, :cond_3

    .line 1018
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1021
    :cond_3
    throw p1
.end method

.method private synthetic lambda$updateDialogsLastMessage$8(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 937
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 938
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 939
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    move v3, v2

    .line 941
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object/from16 v4, p4

    .line 942
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 944
    :goto_1
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 945
    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 946
    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 947
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v8, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v7 .. v21}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    move v6, v2

    .line 948
    :goto_2
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 949
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 950
    iget-wide v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    .line 951
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    .line 952
    iput-object v7, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v2

    .line 955
    :goto_3
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 956
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 957
    iget-wide v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_3

    .line 958
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    .line 959
    iput-object v7, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 964
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method private synthetic lambda$updateDialogsLastMessage$9(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 19

    move-object/from16 v0, p1

    .line 886
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    .line 889
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 890
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 892
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 893
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 894
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 896
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 897
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 898
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 901
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    move-object/from16 v13, p2

    .line 902
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 904
    const-string v15, "SELECT mid, data FROM messages_topics WHERE uid = ? AND topic_id = ? ORDER BY mid DESC LIMIT 1"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v18, v12

    const/16 v17, 0x0

    iget-wide v11, v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v12, 0x2

    :try_start_1
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v16, v12, v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v10

    const/4 v10, 0x1

    :try_start_2
    aput-object v11, v12, v10

    invoke-virtual {v1, v15, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    :try_start_3
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_0

    move/from16 v12, v17

    .line 906
    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    .line 907
    invoke-virtual {v11, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v15

    .line 908
    invoke-virtual {v15, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    invoke-static {v15, v12, v10}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 909
    invoke-static {v10, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v11

    .line 910
    :try_start_4
    iget-wide v11, v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v8, v11, v12, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 912
    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v10, v16

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :goto_2
    move-object/from16 v10, v16

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_2

    :cond_0
    move-object/from16 v16, v11

    .line 914
    iget-wide v10, v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    add-int/lit8 v12, v18, 0x1

    move-object/from16 v10, v16

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_4

    :cond_1
    move-object/from16 v16, v10

    .line 919
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 920
    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 922
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, ","

    if-nez v1, :cond_3

    .line 923
    :try_start_5
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 925
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 926
    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/MessagesStorage;->getAnimatedEmoji(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    if-eqz v16, :cond_5

    .line 932
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    .line 929
    :goto_4
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v10, :cond_5

    .line 932
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 936
    :cond_5
    :goto_5
    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda3;

    move-object/from16 v3, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_4
    move-exception v0

    :goto_6
    if-eqz v10, :cond_6

    .line 932
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 935
    :cond_6
    throw v0
.end method

.method private loadCache(Ljava/lang/Runnable;)V
    .locals 7

    .line 789
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 792
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    .line 793
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    .line 794
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 795
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static openSavedMessages()V
    .locals 5

    .line 1122
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1126
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1127
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1128
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static openSavedMessagesReminders()V
    .locals 5

    .line 1132
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1136
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1137
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1138
    const-string v2, "chatMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1139
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private processUpdateInternal(Lorg/telegram/tgnet/TLRPC$Update;)Z
    .locals 5

    .line 696
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 697
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    .line 698
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    if-nez v2, :cond_0

    return v1

    .line 699
    :cond_0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;->pinned:Z

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinned(Ljava/util/ArrayList;ZZ)Z

    move-result p1

    return p1

    .line 703
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    if-eqz v0, :cond_6

    .line 704
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 706
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 707
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DialogPeer;

    .line 708
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    if-nez v4, :cond_2

    goto :goto_1

    .line 711
    :cond_2
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    .line 714
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method private removeDialog(J)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 591
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 592
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 593
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    .line 599
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 600
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 601
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 606
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 607
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_4

    .line 608
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 613
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 730
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 733
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 734
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private saveCache()V
    .locals 4

    .line 977
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 982
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    .line 983
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveCacheSchedule()V
    .locals 3

    .line 971
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 972
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1c2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateAllDialogs(Z)V
    .locals 7

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 62
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 63
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 64
    iget-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v4, :cond_0

    iget-wide v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 69
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 70
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 71
    iget-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v4, :cond_2

    iget-wide v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 77
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 78
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 79
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v5

    if-nez v5, :cond_4

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 84
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-nez v3, :cond_7

    move v3, v1

    .line 85
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 86
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 87
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v5

    if-nez v5, :cond_6

    .line 88
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 93
    :cond_7
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_8

    .line 96
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->hasDialogs()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->savedViewAsChats:Z

    if-eqz p1, :cond_8

    .line 98
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->setSavedViewAs(Z)V

    :cond_8
    return-void
.end method

.method private updateDialogsLastMessage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;)V"
        }
    .end annotation

    .line 882
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    .line 883
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 884
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda17;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 742
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 743
    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 748
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 749
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 750
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 751
    iget-boolean v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v5, :cond_1

    .line 752
    iput-boolean v1, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    .line 753
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 758
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 762
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 763
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 765
    iget-wide v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 766
    invoke-static {v3, v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->-$$Nest$fputpinnedOrder(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)V

    .line 767
    iput-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    .line 768
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v4

    goto :goto_1

    .line 775
    :cond_4
    new-instance p2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 778
    new-instance p2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda14;

    invoke-direct {p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 781
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return v4
.end method

.method private updatePinnedOrderToServer(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 672
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 674
    :cond_1
    :goto_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;-><init>()V

    const/4 v1, 0x1

    .line 675
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;->force:Z

    const/4 v1, 0x0

    .line 676
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 677
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 678
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;-><init>()V

    .line 679
    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_2

    .line 681
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 684
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 685
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method


# virtual methods
.method public checkSavedDialogCount(J)V
    .locals 1

    .line 1143
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 41
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 42
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    .line 43
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    .line 45
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->deleteCache()V

    .line 46
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    .line 47
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "savedMessagesUnsupported"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public containsDialog(J)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 198
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 199
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 200
    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public deleteAllDialogs()V
    .locals 1

    const/4 v0, 0x0

    .line 582
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 583
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 584
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 586
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public deleteDialog(J)V
    .locals 1

    .line 570
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 571
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public deleteDialogs(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 575
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 576
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(Ljava/util/ArrayList;J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    return-object p1
.end method

.method public findSavedDialog(Ljava/util/ArrayList;J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;J)",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 147
    iget-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllCount()I
    .locals 2

    .line 108
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 111
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-eqz v0, :cond_1

    .line 112
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    sub-int/2addr v0, v1

    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadedCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesCount(J)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 189
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 190
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 191
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 192
    iget p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getPinnedCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 132
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 133
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasDialogs()Z
    .locals 7

    .line 118
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->getAllCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 119
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v5, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v4
.end method

.method public hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1151
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    iget v1, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-lez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 1153
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 1159
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 1162
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    .line 1163
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_3
    iget-object p3, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1166
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;-><init>()V

    .line 1167
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v0, 0x1

    .line 1168
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->limit:I

    const-wide/16 v0, 0x0

    .line 1169
    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->hash:J

    const v0, 0x7fffffff

    .line 1170
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->offset_id:I

    .line 1171
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->offset_date:I

    const/4 v0, -0x1

    .line 1172
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->add_offset:I

    .line 1173
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/SavedMessagesController;J)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    return v0
.end method

.method public loadDialogs(Z)V
    .locals 7

    .line 213
    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCacheOnly:Z

    .line 214
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 217
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    if-nez v0, :cond_1

    .line 218
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->loadCache(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    .line 223
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;-><init>()V

    .line 224
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 227
    iget v2, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    .line 228
    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    .line 229
    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    :cond_4
    const p1, 0x7fffffff

    .line 231
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    .line 232
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    .line 233
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_1
    const/16 p1, 0x14

    .line 235
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    .line 236
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 237
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 242
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 243
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    iget-boolean v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v5, :cond_5

    const-wide/16 v5, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    :goto_3
    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    .line 244
    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    .line 245
    iget v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    .line 246
    invoke-virtual {v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_6
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
    :goto_4
    return-void
.end method

.method public preloadDialogs(Z)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    :cond_0
    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 690
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->processUpdateInternal(Lorg/telegram/tgnet/TLRPC$Update;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 158
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 159
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 162
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/32 v5, 0x28ae10

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 163
    sget v3, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 164
    :cond_1
    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    .line 165
    sget v3, Lorg/telegram/messenger/R$string;->MyNotes:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 167
    :cond_2
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-ltz v3, :cond_3

    .line 168
    iget v3, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 169
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 171
    :cond_3
    iget v3, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 172
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    if-nez v3, :cond_5

    goto :goto_3

    .line 175
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_9

    .line 179
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 181
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 177
    :cond_8
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_4
    return-object v0
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    .line 618
    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    .line 619
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    return-void
.end method

.method public update(JLorg/telegram/tgnet/TLRPC$messages_Messages;)V
    .locals 4

    .line 487
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateSavedDialogs(Ljava/util/ArrayList;)Z

    move-result v0

    .line 488
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 489
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    .line 490
    :cond_2
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v1, :cond_3

    .line 491
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_3
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v1, :cond_4

    .line 493
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 496
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public updateDeleted(Landroidx/collection/LongSparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 503
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 504
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 505
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move v7, v1

    move v8, v7

    .line 507
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 508
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v1

    .line 511
    :goto_2
    iget-object v9, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 512
    iget-object v9, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v9, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    .line 513
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 518
    iget-boolean v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-eq v5, v9, :cond_3

    .line 519
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v9, v3

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    move v3, v7

    .line 522
    :cond_3
    iget-boolean v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-eqz v5, :cond_4

    iget v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-gtz v5, :cond_4

    .line 523
    iget-wide v3, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    :goto_4
    move v3, v7

    goto :goto_5

    .line 525
    :cond_4
    iget v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-gt v5, v8, :cond_5

    .line 526
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_8

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 533
    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateDialogsLastMessage(Ljava/util/ArrayList;)V

    return-void

    .line 535
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_8
    return-void
.end method

.method public updatePinned(Ljava/util/ArrayList;ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 625
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    .line 626
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    if-eqz p2, :cond_0

    .line 627
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 628
    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 630
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 634
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 635
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    goto :goto_2

    .line 636
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    .line 638
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_4

    return v4

    .line 641
    :cond_4
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz p3, :cond_5

    .line 643
    invoke-direct {p0, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrderToServer(Ljava/util/ArrayList;)V

    return v3

    .line 646
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    .line 647
    iget-object p2, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p2

    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    return v4

    :cond_7
    :goto_3
    return v3

    :cond_8
    return v4
.end method

.method public updatePinnedOrder(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 657
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    goto :goto_0

    .line 659
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    .line 661
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 664
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrderToServer(Ljava/util/ArrayList;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public updateSavedDialog(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 453
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    .line 454
    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    move v3, v0

    .line 455
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 456
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 457
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v5, v5, v1

    if-nez v5, :cond_1

    .line 458
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v1, v2, p1, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v1, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 459
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public updateSavedDialogs(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 355
    :cond_0
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 356
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 357
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 358
    iget v3, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    move v5, v0

    .line 359
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_6

    .line 360
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 361
    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-eqz v10, :cond_1

    .line 362
    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v10, :cond_5

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v10, :cond_1

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v10, :cond_1

    goto :goto_2

    .line 366
    :cond_1
    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v10, :cond_2

    .line 367
    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v10, v11, :cond_3

    .line 368
    :cond_2
    invoke-virtual {v1, v8, v9, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 370
    :cond_3
    invoke-virtual {v2, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_4

    move v6, v0

    goto :goto_1

    .line 371
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v8, v9, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v3, v0

    move v4, v3

    .line 375
    :goto_3
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1b

    .line 376
    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 377
    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    .line 378
    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move v10, v0

    .line 380
    :goto_4
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 381
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 382
    iget-wide v12, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v12, v12, v5

    if-nez v12, :cond_d

    .line 384
    iget v10, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v10, v12, :cond_7

    if-gez v12, :cond_b

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v12

    if-le v10, v12, :cond_b

    .line 386
    :cond_7
    iget v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v10, :cond_a

    move v4, v0

    move v10, v4

    .line 388
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 389
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v13, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-le v12, v13, :cond_8

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 393
    :cond_9
    iget v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    add-int/2addr v4, v10

    iput v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 395
    :cond_a
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v10, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v4, v10, v8, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 396
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    move v4, v7

    :cond_b
    if-eqz v9, :cond_c

    .line 399
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_6

    .line 400
    :cond_c
    iget v9, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 398
    :goto_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move v10, v7

    goto :goto_7

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    move v10, v0

    :goto_7
    if-nez v10, :cond_10

    .line 405
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4, v8, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v4

    if-eqz v9, :cond_f

    .line 407
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 409
    :cond_f
    iget-object v10, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    :cond_10
    move v10, v0

    .line 413
    :goto_8
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    .line 414
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 415
    iget-wide v12, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v12, v12, v5

    if-nez v12, :cond_17

    .line 417
    iget v5, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v6, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v5, v6, :cond_11

    if-gez v6, :cond_15

    iget v5, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v6

    if-le v5, v6, :cond_15

    .line 419
    :cond_11
    iget v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v5, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v5, :cond_14

    move v4, v0

    move v5, v4

    .line 421
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_13

    .line 422
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v10, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-le v6, v10, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 426
    :cond_13
    iget v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    add-int/2addr v4, v5

    iput v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 428
    :cond_14
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v4, v5, v8, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 429
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    move v4, v7

    :cond_15
    if-eqz v9, :cond_16

    .line 432
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_a

    .line 433
    :cond_16
    iget v5, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 431
    :goto_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move v5, v7

    goto :goto_b

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_18
    move v5, v0

    :goto_b
    if-nez v5, :cond_1a

    .line 438
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4, v8, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v4

    if-eqz v9, :cond_19

    .line 440
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 442
    :cond_19
    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_1b
    return v4
.end method

.method public updatedDialogCount(JI)Z
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JIZ)Z

    move-result p1

    return p1
.end method

.method public updatedDialogCount(JIZ)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 471
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 472
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 473
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 474
    iget p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-ne p1, p3, :cond_0

    iget-boolean p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-nez p1, :cond_2

    if-eqz p4, :cond_2

    .line 475
    :cond_0
    iput p3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/4 p1, 0x1

    .line 476
    iput-boolean p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
