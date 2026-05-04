.class Lorg/telegram/messenger/ChatObject$Call$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ChatObject$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ChatObject$Call;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 286
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_4

    .line 287
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 288
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 289
    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastSpeakTime:J

    sub-long v9, v0, v9

    const-wide/16 v11, 0x1f4

    cmp-long v5, v9, v11

    if-ltz v5, :cond_3

    .line 291
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->remove(J)V

    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    const/4 v5, 0x0

    .line 293
    const-string v9, " "

    const-string v10, "remove from speaking "

    const-string v11, "GroupCall"

    if-lez v4, :cond_1

    .line 294
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 295
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 297
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v12, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 298
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, -0x1

    move v4, v6

    :cond_3
    add-int/2addr v3, v6

    goto/16 :goto_0

    .line 304
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 305
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject$Call;->-$$Nest$fgetupdateCurrentSpeakingRunnable(Lorg/telegram/messenger/ChatObject$Call;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v7, 0x226

    invoke-static {v0, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    if-eqz v4, :cond_6

    .line 308
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v3, v3, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call$1;->this$0:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v6

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
