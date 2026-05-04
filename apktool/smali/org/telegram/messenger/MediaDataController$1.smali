.class Lorg/telegram/messenger/MediaDataController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaDataController;->loadMediaDatabase(JIIIIJLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaDataController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$fromCache:I

.field final synthetic val$isChannel:Z

.field final synthetic val$max_id:I

.field final synthetic val$min_id:I

.field final synthetic val$requestIndex:I

.field final synthetic val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field final synthetic val$topicId:J

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method public static synthetic $r8$lambda$2WzmZ4yiCSrqx0bPALAQLYduwos(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaDataController$1;->lambda$run$0(Ljava/lang/Runnable;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaDataController;IJIJILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4676
    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iput-wide p3, p0, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput p5, p0, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iput-wide p6, p0, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iput p8, p0, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iput-object p9, p0, Lorg/telegram/messenger/MediaDataController$1;->val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput p10, p0, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iput p11, p0, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iput p12, p0, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iput-boolean p13, p0, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iput p14, p0, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Runnable;I)V
    .locals 1

    .line 4931
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->completeTaskForGuid(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    .line 4680
    iget-object v0, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 4681
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    const/16 v17, 0x0

    .line 4683
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4684
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4685
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 4688
    iget-object v8, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v8}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    .line 4692
    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    const/4 v12, 0x3

    const-wide/16 v18, 0x0

    if-nez v9, :cond_1b

    .line 4693
    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-nez v9, :cond_7

    const/4 v9, 0x5

    .line 4694
    iget-wide v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v10, v10, v18

    if-eqz v10, :cond_0

    .line 4695
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "SELECT start FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start IN (0, 1)"

    move/from16 v16, v7

    move-object/from16 v20, v8

    iget-wide v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v21, 0x0

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v22, v8

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v7, v8, v21

    aput-object v13, v8, v16

    aput-object v14, v8, v22

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move/from16 v8, v21

    new-array v10, v8, [Ljava/lang/Object;

    move-object/from16 v11, v20

    invoke-virtual {v11, v7, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    move/from16 v20, v9

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1f

    :catch_0
    move-exception v0

    goto/16 :goto_1e

    :cond_0
    move/from16 v16, v7

    move-object v11, v8

    const/16 v22, 0x2

    .line 4697
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)"

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v20, v9

    move/from16 v8, v22

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v9, v8

    aput-object v14, v9, v16

    invoke-static {v7, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v11, v7, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 4699
    :goto_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4700
    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    move/from16 v8, v16

    if-ne v9, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move v9, v8

    goto/16 :goto_5

    .line 4702
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4703
    iget-wide v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v7, v7, v18

    if-eqz v7, :cond_3

    .line 4704
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT min(mid) FROM media_topics WHERE uid = %d AND topic_id = %d AND type = %d AND mid > 0"

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/4 v8, 0x2

    aput-object v13, v14, v8

    invoke-static {v7, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v7, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    const/4 v15, 0x0

    goto :goto_2

    .line 4706
    :cond_3
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT min(mid) FROM media_v4 WHERE uid = %d AND type = %d AND mid > 0"

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v8, 0x2

    new-array v14, v8, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/16 v16, 0x1

    aput-object v13, v14, v16

    invoke-static {v7, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v7, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 4708
    :goto_2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4709
    invoke-virtual {v7, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    if-eqz v9, :cond_6

    .line 4712
    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v10, v13, v18

    if-eqz v10, :cond_4

    .line 4713
    const-string v10, "REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v11, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    goto :goto_3

    .line 4715
    :cond_4
    const-string v10, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v11, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 4718
    :goto_3
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4719
    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    const/4 v15, 0x1

    invoke-virtual {v10, v15, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4720
    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v15, v13, v18

    if-eqz v15, :cond_5

    const/4 v8, 0x2

    .line 4721
    invoke-virtual {v10, v8, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    move v13, v12

    goto :goto_4

    :cond_5
    const/4 v13, 0x2

    :goto_4
    add-int/lit8 v14, v13, 0x1

    .line 4723
    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-virtual {v10, v13, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v8, 0x2

    add-int/2addr v13, v8

    const/4 v15, 0x0

    .line 4724
    invoke-virtual {v10, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4725
    invoke-virtual {v10, v13, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4726
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4727
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_6
    const/4 v9, 0x0

    .line 4731
    :goto_5
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_6

    :cond_7
    move-object v11, v8

    const/16 v20, 0x5

    const/4 v9, 0x0

    .line 4737
    :goto_6
    iget-object v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v7, :cond_9

    .line 4739
    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 4740
    iget-object v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v13, v7

    goto :goto_7

    .line 4742
    :cond_8
    iget-object v7, v1, Lorg/telegram/messenger/MediaDataController$1;->val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v13, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 4744
    :goto_7
    const-string v7, "INNER JOIN tag_message_id t ON m.mid = t.mid"

    .line 4745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "t.tag = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " AND"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 4737
    :cond_9
    const-string v7, ""

    move-object v10, v7

    .line 4749
    :goto_8
    :try_start_1
    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v13, :cond_f

    move v13, v9

    const/16 v24, 0x6

    .line 4751
    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v8, v8, v18

    if-eqz v8, :cond_a

    .line 4752
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1"

    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move/from16 v26, v12

    move/from16 v27, v13

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move/from16 v23, v6

    const/4 v15, 0x4

    new-array v6, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v25, 0x7

    aput-object v14, v6, v15

    const/16 v16, 0x1

    aput-object v12, v6, v16

    const/16 v22, 0x2

    aput-object v13, v6, v22

    aput-object v28, v6, v26

    invoke-static {v8, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    const/4 v14, 0x0

    goto :goto_9

    :cond_a
    move/from16 v23, v6

    move/from16 v26, v12

    move/from16 v27, v13

    const/16 v25, 0x7

    .line 4754
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v14, v26

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v15, v14

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v22, 0x2

    aput-object v13, v15, v22

    invoke-static {v6, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v14, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4756
    :goto_9
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4757
    invoke-virtual {v6, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    const/4 v15, 0x1

    .line 4758
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    .line 4760
    :goto_a
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4762
    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v12, v18

    if-eqz v6, :cond_d

    const/4 v15, 0x1

    if-le v8, v15, :cond_c

    .line 4764
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid < %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v28, v7

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v7, v21

    const/16 v16, 0x1

    aput-object v10, v7, v16

    const/16 v22, 0x2

    aput-object v12, v7, v22

    const/16 v26, 0x3

    aput-object v13, v7, v26

    const/16 v29, 0x4

    aput-object v14, v7, v29

    aput-object v8, v7, v20

    aput-object v15, v7, v24

    aput-object v23, v7, v25

    invoke-static {v6, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    :goto_b
    const/16 v27, 0x0

    goto/16 :goto_c

    :cond_c
    move-object/from16 v28, v7

    .line 4767
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid < %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v15, v25

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v15, v21

    const/16 v16, 0x1

    aput-object v10, v15, v16

    const/16 v22, 0x2

    aput-object v8, v15, v22

    const/16 v26, 0x3

    aput-object v9, v15, v26

    const/16 v29, 0x4

    aput-object v12, v15, v29

    aput-object v13, v15, v20

    aput-object v14, v15, v24

    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_c

    :cond_d
    move-object/from16 v28, v7

    const/4 v6, 0x1

    if-le v8, v6, :cond_e

    .line 4771
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid < %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v15, v21

    const/16 v16, 0x1

    aput-object v10, v15, v16

    const/16 v22, 0x2

    aput-object v9, v15, v22

    const/16 v26, 0x3

    aput-object v12, v15, v26

    const/16 v29, 0x4

    aput-object v8, v15, v29

    aput-object v13, v15, v20

    aput-object v14, v15, v24

    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_b

    .line 4774
    :cond_e
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid < %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v14, v24

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v14, v21

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v8, v14, v22

    const/16 v26, 0x3

    aput-object v9, v14, v26

    const/4 v15, 0x4

    aput-object v12, v14, v15

    aput-object v13, v14, v20

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    :goto_c
    const/4 v7, 0x0

    goto/16 :goto_14

    :cond_f
    move/from16 v23, v6

    move-object/from16 v28, v7

    move/from16 v27, v9

    .line 4777
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_15

    .line 4779
    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v6, v18

    if-eqz v6, :cond_10

    .line 4780
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    new-array v8, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    const/16 v16, 0x1

    aput-object v12, v8, v16

    const/16 v22, 0x2

    aput-object v13, v8, v22

    const/16 v26, 0x3

    aput-object v14, v8, v26

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    const/4 v15, 0x0

    goto :goto_d

    .line 4782
    :cond_10
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    new-array v13, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v13, v15

    const/16 v16, 0x1

    aput-object v9, v13, v16

    const/4 v8, 0x2

    aput-object v12, v13, v8

    invoke-static {v6, v7, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4784
    :goto_d
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4785
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v15, 0x1

    .line 4786
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    .line 4788
    :goto_e
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4790
    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v12, v18

    if-eqz v6, :cond_13

    const/4 v15, 0x1

    if-le v7, v15, :cond_12

    .line 4792
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid >= %d AND m.mid <= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v8, v21

    const/16 v16, 0x1

    aput-object v10, v8, v16

    const/16 v30, 0x2

    aput-object v12, v8, v30

    const/16 v26, 0x3

    aput-object v13, v8, v26

    const/16 v29, 0x4

    aput-object v14, v8, v29

    aput-object v7, v8, v20

    const/16 v24, 0x6

    aput-object v15, v8, v24

    const/16 v25, 0x7

    aput-object v22, v8, v25

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_10

    .line 4795
    :cond_12
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid >= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v15, v21

    const/16 v16, 0x1

    aput-object v10, v15, v16

    const/16 v22, 0x2

    aput-object v8, v15, v22

    const/16 v26, 0x3

    aput-object v9, v15, v26

    const/16 v29, 0x4

    aput-object v12, v15, v29

    aput-object v13, v15, v20

    const/16 v24, 0x6

    aput-object v14, v15, v24

    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    :goto_f
    const/16 v27, 0x1

    goto/16 :goto_10

    :cond_13
    const/4 v6, 0x1

    if-le v7, v6, :cond_14

    .line 4799
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid >= %d AND m.mid <= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v8, v21

    const/16 v16, 0x1

    aput-object v10, v8, v16

    const/16 v30, 0x2

    aput-object v12, v8, v30

    const/16 v26, 0x3

    aput-object v13, v8, v26

    const/4 v15, 0x4

    aput-object v7, v8, v15

    aput-object v14, v8, v20

    const/16 v24, 0x6

    aput-object v22, v8, v24

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_10

    .line 4802
    :cond_14
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid >= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v14, v21

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v8, v14, v22

    const/16 v26, 0x3

    aput-object v9, v14, v26

    const/4 v15, 0x4

    aput-object v12, v14, v15

    aput-object v13, v14, v20

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_f

    :goto_10
    const/4 v7, 0x1

    goto/16 :goto_14

    .line 4806
    :cond_15
    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v6, v18

    if-eqz v6, :cond_16

    .line 4807
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(end) FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v8, v14

    const/16 v16, 0x1

    aput-object v12, v8, v16

    const/16 v22, 0x2

    aput-object v13, v8, v22

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v14, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    const/4 v14, 0x0

    goto :goto_11

    .line 4809
    :cond_16
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/16 v16, 0x1

    aput-object v9, v13, v16

    invoke-static {v6, v7, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v14, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4811
    :goto_11
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 4812
    invoke-virtual {v6, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    goto :goto_12

    :cond_17
    const/4 v7, 0x0

    .line 4814
    :goto_12
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4815
    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v8, v18

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    if-le v7, v6, :cond_18

    .line 4817
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v15, v21

    const/16 v16, 0x1

    aput-object v10, v15, v16

    const/16 v22, 0x2

    aput-object v9, v15, v22

    const/16 v26, 0x3

    aput-object v12, v15, v26

    const/16 v29, 0x4

    aput-object v7, v15, v29

    aput-object v13, v15, v20

    const/16 v24, 0x6

    aput-object v14, v15, v24

    invoke-static {v6, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_c

    .line 4819
    :cond_18
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v14, v21

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v8, v14, v22

    const/16 v26, 0x3

    aput-object v9, v14, v26

    const/4 v15, 0x4

    aput-object v12, v14, v15

    aput-object v13, v14, v20

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_c

    :cond_19
    const/4 v6, 0x1

    if-le v7, v6, :cond_1a

    .line 4823
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v14, v21

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v8, v14, v22

    const/16 v26, 0x3

    aput-object v7, v14, v26

    const/4 v15, 0x4

    aput-object v12, v14, v15

    aput-object v13, v14, v20

    invoke-static {v6, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_c

    .line 4825
    :cond_1a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v14, v20

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v14, v21

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v9, v14, v22

    const/16 v26, 0x3

    aput-object v12, v14, v26

    const/4 v15, 0x4

    aput-object v13, v14, v15

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_c

    :cond_1b
    move/from16 v23, v6

    move-object v11, v8

    .line 4831
    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    cmp-long v6, v6, v18

    if-eqz v6, :cond_1e

    .line 4832
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_1c

    .line 4833
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v10, v9, v21

    const/16 v16, 0x1

    aput-object v12, v9, v16

    const/16 v22, 0x2

    aput-object v13, v9, v22

    const/16 v26, 0x3

    aput-object v14, v9, v26

    const/4 v15, 0x4

    aput-object v20, v9, v15

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    :goto_13
    const/4 v7, 0x0

    const/16 v27, 0x1

    goto/16 :goto_14

    .line 4834
    :cond_1c
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_1d

    .line 4835
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v10, v9, v21

    const/16 v16, 0x1

    aput-object v12, v9, v16

    const/16 v22, 0x2

    aput-object v13, v9, v22

    const/16 v26, 0x3

    aput-object v14, v9, v26

    const/4 v15, 0x4

    aput-object v20, v9, v15

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto :goto_13

    .line 4837
    :cond_1d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x4

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v12, v14, v22

    const/16 v26, 0x3

    aput-object v13, v14, v26

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_13

    .line 4840
    :cond_1e
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    if-eqz v6, :cond_1f

    .line 4841
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x4

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v12, v14, v22

    const/16 v26, 0x3

    aput-object v13, v14, v26

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_13

    .line 4842
    :cond_1f
    iget v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-eqz v6, :cond_20

    .line 4843
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d"

    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x4

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/16 v16, 0x1

    aput-object v10, v14, v16

    const/16 v22, 0x2

    aput-object v12, v14, v22

    const/16 v26, 0x3

    aput-object v13, v14, v26

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_13

    .line 4845
    :cond_20
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    iget-wide v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    new-array v13, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v13, v15

    const/16 v16, 0x1

    aput-object v10, v13, v16

    const/16 v22, 0x2

    aput-object v12, v13, v22

    invoke-static {v6, v7, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    goto/16 :goto_13

    .line 4851
    :goto_14
    iget-object v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v10, 0x0

    if-eqz v9, :cond_21

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    goto :goto_15

    :cond_21
    move-object v9, v10

    .line 4852
    :cond_22
    :goto_15
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_26

    const/4 v15, 0x0

    .line 4853
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v12

    if-eqz v12, :cond_22

    .line 4855
    invoke-virtual {v12, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    invoke-static {v12, v13, v15}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v13

    .line 4856
    invoke-virtual {v13, v12, v2, v3}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    .line 4857
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v15, 0x1

    .line 4858
    invoke-virtual {v6, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4859
    iget-wide v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4860
    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v12

    if-eqz v12, :cond_23

    const/4 v8, 0x2

    .line 4861
    invoke-virtual {v6, v8}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 4863
    :cond_23
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    cmp-long v12, v14, v18

    if-eqz v12, :cond_24

    if-eqz v9, :cond_24

    .line 4864
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_24
    if-eqz v7, :cond_25

    .line 4867
    iget-object v12, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_16

    .line 4869
    :cond_25
    iget-object v12, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4872
    :goto_16
    invoke-static {v13, v0, v4, v10}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_15

    .line 4875
    :cond_26
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4877
    iget-object v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$tag:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v6, :cond_2d

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 4878
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x0

    .line 4880
    :goto_18
    iget-object v15, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_28

    .line 4881
    iget-object v15, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v9

    iget-wide v8, v15, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_27

    goto :goto_19

    :cond_27
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v18

    goto :goto_18

    :cond_28
    move-object/from16 v18, v9

    const/4 v14, -0x1

    :goto_19
    if-gez v14, :cond_29

    goto :goto_17

    .line 4887
    :cond_29
    const-string v8, "SELECT data, mid FROM messages_v2 WHERE uid = ? AND group_id = ? ORDER BY mid DESC"

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v9, v13, v21

    const/16 v16, 0x1

    aput-object v18, v13, v16

    invoke-virtual {v11, v8, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 4888
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4889
    :goto_1a
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_2b

    const/4 v15, 0x1

    .line 4890
    invoke-virtual {v8, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    const/4 v15, 0x0

    .line 4891
    invoke-virtual {v8, v15}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v12

    if-nez v12, :cond_2a

    :goto_1b
    const/4 v12, 0x2

    goto :goto_1a

    .line 4893
    :cond_2a
    invoke-virtual {v12, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    invoke-static {v12, v10, v15}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 4894
    invoke-virtual {v10, v12, v2, v3}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    .line 4895
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4896
    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4897
    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4898
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 4899
    invoke-static {v10, v0, v4, v12}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v10, v12

    goto :goto_1b

    :cond_2b
    move-object v12, v10

    const/4 v15, 0x0

    if-eqz v7, :cond_2c

    .line 4902
    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4903
    :cond_2c
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4904
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v14, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 4905
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object v10, v12

    goto/16 :goto_17

    :cond_2d
    const/4 v15, 0x0

    .line 4909
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 4910
    iget-object v2, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4912
    :cond_2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4913
    iget-object v0, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const-string v2, ","

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4915
    :cond_2f
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    if-le v0, v2, :cond_30

    iget v0, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    if-nez v0, :cond_30

    .line 4916
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    .line 4918
    :cond_30
    iget v0, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_31

    move/from16 v17, v15

    goto :goto_1c

    :cond_31
    move/from16 v17, v27

    .line 4931
    :goto_1c
    iget v0, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v2, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v1, v0}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    :goto_1d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4932
    iget-object v4, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v0, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    move/from16 v16, v0

    move/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lorg/telegram/messenger/MediaDataController;->-$$Nest$mprocessLoadedMedia(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIJIIZZI)V

    return-void

    .line 4925
    :goto_1e
    :try_start_2
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4926
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4927
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4928
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4931
    iget v0, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v2, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v1, v0}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    goto :goto_1d

    :goto_1f
    iget v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    new-instance v3, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaDataController$1;Ljava/lang/Runnable;I)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4932
    iget-object v4, v1, Lorg/telegram/messenger/MediaDataController$1;->this$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v6, v1, Lorg/telegram/messenger/MediaDataController$1;->val$uid:J

    iget v8, v1, Lorg/telegram/messenger/MediaDataController$1;->val$count:I

    iget v9, v1, Lorg/telegram/messenger/MediaDataController$1;->val$max_id:I

    iget v10, v1, Lorg/telegram/messenger/MediaDataController$1;->val$min_id:I

    iget v11, v1, Lorg/telegram/messenger/MediaDataController$1;->val$type:I

    iget-wide v12, v1, Lorg/telegram/messenger/MediaDataController$1;->val$topicId:J

    iget v14, v1, Lorg/telegram/messenger/MediaDataController$1;->val$fromCache:I

    iget v15, v1, Lorg/telegram/messenger/MediaDataController$1;->val$classGuid:I

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaDataController$1;->val$isChannel:Z

    iget v3, v1, Lorg/telegram/messenger/MediaDataController$1;->val$requestIndex:I

    move/from16 v16, v2

    move/from16 v18, v3

    invoke-static/range {v4 .. v18}, Lorg/telegram/messenger/MediaDataController;->-$$Nest$mprocessLoadedMedia(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIJIIZZI)V

    .line 4933
    throw v0
.end method
