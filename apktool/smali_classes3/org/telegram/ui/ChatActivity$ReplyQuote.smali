.class public Lorg/telegram/ui/ChatActivity$ReplyQuote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplyQuote"
.end annotation


# instance fields
.field public end:I

.field public entities:Ljava/util/ArrayList;

.field public length:I

.field public message:Lorg/telegram/messenger/MessageObject;

.field public offset:I

.field public outdated:Z

.field public final peerId:J

.field public start:I

.field public task:Lorg/telegram/tgnet/TLRPC$TodoItem;

.field public task_id:I

.field public text:Ljava/lang/String;

.field public todo:Z


# direct methods
.method static bridge synthetic -$$Nest$mupdate(Lorg/telegram/ui/ChatActivity$ReplyQuote;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->update()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(JLorg/telegram/messenger/MessageObject;I)V
    .locals 0

    .line 14672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14673
    iput-wide p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->peerId:J

    .line 14674
    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    const/4 p1, -0x1

    .line 14675
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 14676
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    const/4 p1, 0x1

    .line 14677
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->todo:Z

    .line 14678
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->task_id:I

    .line 14680
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->update()Z

    return-void
.end method

.method private constructor <init>(JLorg/telegram/messenger/MessageObject;II)V
    .locals 0

    .line 14661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14662
    iput-wide p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->peerId:J

    .line 14663
    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    .line 14664
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 14665
    iput p5, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    const/4 p1, 0x0

    .line 14666
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->todo:Z

    const/4 p1, -0x1

    .line 14667
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->task_id:I

    .line 14669
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->update()Z

    return-void
.end method

.method public static from(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 2

    if-eqz p0, :cond_1

    .line 14710
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 14713
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static from(Lorg/telegram/messenger/MessageObject;I)Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 3

    if-eqz p0, :cond_1

    .line 14699
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 14702
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 14703
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;-><init>(JLorg/telegram/messenger/MessageObject;I)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14720
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 14721
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ReplyQuote;-><init>(JLorg/telegram/messenger/MessageObject;II)V

    return-object v0
.end method

.method public static from(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;I)Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 14684
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 14687
    :cond_0
    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/MessageObject;->findQuoteStart(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_1

    return-object v0

    .line 14691
    :cond_1
    new-instance v2, Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 14692
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 14694
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int v7, v6, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$ReplyQuote;-><init>(JLorg/telegram/messenger/MessageObject;II)V

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method private update()Z
    .locals 10

    .line 14728
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 14732
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->todo:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 14733
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->task_id:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/MessageObject;->findTodoItem(Lorg/telegram/messenger/MessageObject;I)Lorg/telegram/tgnet/TLRPC$TodoItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14735
    const-string v0, "ReplyQuote: todo task is not found"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v1

    .line 14739
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->task:Lorg/telegram/tgnet/TLRPC$TodoItem;

    return v4

    .line 14742
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    if-lt v0, v3, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_15

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_15

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    if-ltz v0, :cond_15

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    if-gez v2, :cond_3

    goto/16 :goto_5

    .line 14746
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 14747
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 14748
    :goto_0
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14750
    :cond_4
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-le v3, v0, :cond_5

    add-int/lit8 v5, v3, -0x1

    .line 14751
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    .line 14754
    const-string v0, "ReplyQuote: message is full of whitespace"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v1

    .line 14757
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->text:Ljava/lang/String;

    .line 14759
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 14760
    iput v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    .line 14762
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->entities:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 14763
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14765
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v1

    .line 14766
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_14

    .line 14767
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 14768
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v6

    invoke-static {v0, v3, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->intersect1dInclusive(IIII)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_4

    .line 14773
    :cond_8
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-eqz v6, :cond_9

    .line 14774
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    goto :goto_3

    .line 14775
    :cond_9
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-eqz v6, :cond_a

    .line 14776
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    goto :goto_3

    .line 14777
    :cond_a
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;

    if-eqz v6, :cond_b

    .line 14778
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;-><init>()V

    goto :goto_3

    .line 14779
    :cond_b
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;

    if-eqz v6, :cond_c

    .line 14780
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;-><init>()V

    goto :goto_3

    .line 14781
    :cond_c
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    if-eqz v6, :cond_d

    .line 14782
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;-><init>()V

    goto :goto_3

    .line 14783
    :cond_d
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v6, :cond_e

    move-object v6, v5

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    const-string/jumbo v8, "tg://emoji?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 14784
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 14786
    :try_start_0
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 14787
    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 14788
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->local:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_3

    .line 14792
    :cond_e
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-eqz v6, :cond_13

    .line 14793
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 14794
    move-object v7, v5

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 14795
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 14796
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->local:Z

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->local:Z

    .line 14801
    :goto_3
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int v8, v7, v0

    .line 14802
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v5

    sub-int/2addr v7, v0

    if-gez v8, :cond_f

    if-ltz v7, :cond_13

    :cond_f
    if-le v8, v3, :cond_10

    if-le v7, v3, :cond_10

    goto :goto_4

    .line 14807
    :cond_10
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int v5, v3, v0

    .line 14808
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v5, v7

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-gtz v5, :cond_11

    goto :goto_4

    .line 14814
    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->entities:Ljava/util/ArrayList;

    if-nez v5, :cond_12

    .line 14815
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->entities:Ljava/util/ArrayList;

    .line 14817
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_13
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 14821
    :cond_14
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->offset:I

    sub-int/2addr v3, v0

    .line 14822
    iput v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->length:I

    return v4

    .line 14743
    :cond_15
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplyQuote: start/end are invalid ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v1

    .line 14729
    :cond_16
    :goto_6
    const-string v0, "ReplyQuote: message is null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public checkEdit(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 14829
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 14833
    :cond_0
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    if-lt v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v2, v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    if-ltz v1, :cond_4

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    if-gez v2, :cond_1

    goto :goto_0

    .line 14837
    :cond_1
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 14838
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->text:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14839
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    .line 14840
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->update()Z

    .line 14841
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    return v0

    .line 14843
    :cond_2
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 14845
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    .line 14846
    iget p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    .line 14847
    iput v1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 14848
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->update()Z

    .line 14849
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    return v0

    .line 14851
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    .line 14852
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 14853
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    .line 14854
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->update()Z

    const/4 p1, 0x1

    .line 14855
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    return p1

    .line 14834
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplyQuote.checkEdit: start/end are invalid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 14835
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    return v0

    .line 14830
    :cond_5
    :goto_1
    const-string p1, "ReplyQuote.checkEdit: message is null"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 14831
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    return v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1

    .line 14871
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->entities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilteredEntities()Ljava/util/ArrayList;
    .locals 5

    .line 14875
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14877
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14878
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-static {v2, v3, v4, v1, v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->replaceCustomEmojis(IJLjava/util/ArrayList;Z)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 14859
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 14863
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->todo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 14864
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->task:Lorg/telegram/tgnet/TLRPC$TodoItem;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 14866
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
