.class public Lorg/telegram/tgnet/TLRPC$Message;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field public attachPath:Ljava/lang/String;

.field public date:I

.field public destroyTime:I

.field public destroyTimeMillis:J

.field public dialog_id:J

.field public edit_date:I

.field public edit_hide:Z

.field public effect:J

.field public entities:Ljava/util/ArrayList;

.field public errorAllowedPriceStars:J

.field public errorNewPriceStars:J

.field public expire_date:I

.field public factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

.field public flags:I

.field public flags2:I

.field public forwards:I

.field public from_boosts_applied:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public from_rank:Ljava/lang/String;

.field public from_scheduled:Z

.field public fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

.field public fwd_msg_id:I

.field public grouped_id:J

.field public id:I

.field public invert_media:Z

.field public isThreadMessage:Z

.field public layer:I

.field public legacy:Z

.field public local_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public media_unread:Z

.field public mentioned:Z

.field public message:Ljava/lang/String;

.field public noforwards:Z

.field public offline:Z

.field public originalLanguage:Ljava/lang/String;

.field public out:Z

.field public paid_message_stars:J

.field public paid_suggested_post_stars:Z

.field public paid_suggested_post_ton:Z

.field public params:Ljava/util/HashMap;

.field public peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pinned:Z

.field public post:Z

.field public post_author:Ljava/lang/String;

.field public premiumEffectWasPlayed:Z

.field public quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

.field public quick_reply_shortcut_id:I

.field public random_id:J

.field public reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

.field public reactions_are_possible:Z

.field public realId:I

.field public replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

.field public replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field public replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

.field public report_delivery_until_date:I

.field public reqId:I

.field public restriction_reason:Ljava/util/ArrayList;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public schedule_repeat_period:I

.field public send_state:I

.field public seq_in:I

.field public seq_out:I

.field public silent:Z

.field public stickerVerified:I

.field public suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

.field public summarizedOpen:Z

.field public summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public summary_from_language:Ljava/lang/String;

.field public translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

.field public translatedSummaryLanguage:Ljava/lang/String;

.field public translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public translatedToLanguage:Ljava/lang/String;

.field public translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public ttl:I

.field public ttl_period:I

.field public unread:Z

.field public via_bot_id:J

.field public via_bot_name:Ljava/lang/String;

.field public via_business_bot_id:J

.field public video_processing_pending:Z

.field public views:I

.field public voiceTranscription:Ljava/lang/String;

.field public voiceTranscriptionFinal:Z

.field public voiceTranscriptionForce:Z

.field public voiceTranscriptionId:J

.field public voiceTranscriptionOpen:Z

.field public voiceTranscriptionRated:Z

.field public with_my_score:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62350
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 62367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 62388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 62405
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 62406
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 62407
    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 62411
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    const/4 v0, 0x1

    .line 62423
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 62583
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    goto/16 :goto_0

    .line 62568
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer173;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer173;-><init>()V

    goto/16 :goto_0

    .line 62474
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old7;-><init>()V

    goto/16 :goto_0

    .line 62522
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer123;-><init>()V

    goto/16 :goto_0

    .line 62501
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old2;-><init>()V

    goto/16 :goto_0

    .line 62459
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto/16 :goto_0

    .line 62462
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;-><init>()V

    goto/16 :goto_0

    .line 62510
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;-><init>()V

    goto/16 :goto_0

    .line 62516
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer117;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer117;-><init>()V

    goto/16 :goto_0

    .line 62486
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer104;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer104;-><init>()V

    goto/16 :goto_0

    .line 62531
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    goto/16 :goto_0

    .line 62565
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer169;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer169;-><init>()V

    goto/16 :goto_0

    .line 62483
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old6;-><init>()V

    goto/16 :goto_0

    .line 62577
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer195;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer195;-><init>()V

    goto/16 :goto_0

    .line 62574
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer123;-><init>()V

    goto/16 :goto_0

    .line 62507
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old;-><init>()V

    goto/16 :goto_0

    .line 62562
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer175;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer175;-><init>()V

    goto/16 :goto_0

    .line 62450
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;-><init>()V

    goto/16 :goto_0

    .line 62492
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_2;-><init>()V

    goto/16 :goto_0

    .line 62498
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;-><init>()V

    goto/16 :goto_0

    .line 62519
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer118;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer118;-><init>()V

    goto/16 :goto_0

    .line 62586
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old5;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old5;-><init>()V

    goto/16 :goto_0

    .line 62543
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer205;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer205;-><init>()V

    goto/16 :goto_0

    .line 62580
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer204;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer204;-><init>()V

    goto/16 :goto_0

    .line 62471
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;-><init>()V

    goto/16 :goto_0

    .line 62456
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old4;-><init>()V

    goto/16 :goto_0

    .line 62468
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;-><init>()V

    goto/16 :goto_0

    .line 62477
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;-><init>()V

    goto/16 :goto_0

    .line 62552
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer180;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer180;-><init>()V

    goto/16 :goto_0

    .line 62525
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer131;-><init>()V

    goto/16 :goto_0

    .line 62537
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer220;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer220;-><init>()V

    goto :goto_0

    .line 62453
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old3;-><init>()V

    goto :goto_0

    .line 62559
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer176;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer176;-><init>()V

    goto :goto_0

    .line 62556
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer179;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer179;-><init>()V

    goto :goto_0

    .line 62495
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;-><init>()V

    goto :goto_0

    .line 62504
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;-><init>()V

    goto :goto_0

    .line 62571
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer118;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer118;-><init>()V

    goto :goto_0

    .line 62534
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer222;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer222;-><init>()V

    goto :goto_0

    .line 62540
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer216;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer216;-><init>()V

    goto :goto_0

    .line 62513
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_3;-><init>()V

    goto :goto_0

    .line 62546
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer199;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer199;-><init>()V

    goto :goto_0

    .line 62549
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer195;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer195;-><init>()V

    goto :goto_0

    .line 62465
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer72;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer72;-><init>()V

    goto :goto_0

    .line 62489
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;-><init>()V

    goto :goto_0

    .line 62528
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer135;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer135;-><init>()V

    goto :goto_0

    .line 62480
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty_layer122;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty_layer122;-><init>()V

    .line 62589
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p0, :cond_1

    .line 62590
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez p1, :cond_1

    .line 62591
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez p1, :cond_0

    iget-wide p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 62592
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    return-object p0

    .line 62594
    :cond_0
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7c1a21ac -> :sswitch_2d
        -0x7a29341e -> :sswitch_2c
        -0x6f59357c -> :sswitch_2b
        -0x6f2223ef -> :sswitch_2a
        -0x6bcbadbe -> :sswitch_29
        -0x69024417 -> :sswitch_28
        -0x6876253c -> :sswitch_27
        -0x67ea3138 -> :sswitch_26
        -0x634b6f17 -> :sswitch_25
        -0x61e65e0a -> :sswitch_24
        -0x60729f45 -> :sswitch_23
        -0x5c9818ea -> :sswitch_22
        -0x5b1680c9 -> :sswitch_21
        -0x59938104 -> :sswitch_20
        -0x5854e66f -> :sswitch_1f
        -0x46d08931 -> :sswitch_1e
        -0x431c7c2e -> :sswitch_1d
        -0x421f63d2 -> :sswitch_1c
        -0x3f9469f9 -> :sswitch_1b
        -0x3f641ba1 -> :sswitch_1a
        -0x3cf9fcdb -> :sswitch_19
        -0x366d1ea4 -> :sswitch_18
        -0x2c2d7ac0 -> :sswitch_17
        -0x154322b3 -> :sswitch_16
        -0xf87eb38 -> :sswitch_15
        -0xad19481 -> :sswitch_14
        0x5f46804 -> :sswitch_13
        0x1c9b1027 -> :sswitch_12
        0x1d86f70e -> :sswitch_11
        0x1e4c8a69 -> :sswitch_10
        0x22eb6aba -> :sswitch_f
        0x2357bf25 -> :sswitch_21
        0x286fa604 -> :sswitch_e
        0x2b085862 -> :sswitch_d
        0x2bebfa86 -> :sswitch_c
        0x38116ee0 -> :sswitch_b
        0x3ae56482 -> :sswitch_a
        0x44f9b43d -> :sswitch_9
        0x452c0e65 -> :sswitch_8
        0x555555f8 -> :sswitch_7
        0x555555f9 -> :sswitch_6
        0x555555fa -> :sswitch_5
        0x567699b3 -> :sswitch_4
        0x58ae39c9 -> :sswitch_3
        0x5ba66c13 -> :sswitch_2
        0x76bec211 -> :sswitch_1
        0x7a800e0a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V
    .locals 11

    .line 62601
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v3, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 62602
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v4, "-1"

    .line 62609
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 62610
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    const/4 v5, 0x3

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_4

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_4

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-eqz v4, :cond_4

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_4

    cmp-long p2, v9, p2

    if-nez p2, :cond_4

    :cond_3
    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz p2, :cond_5

    if-nez v0, :cond_5

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq p2, v5, :cond_5

    :cond_4
    iget-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz p2, :cond_e

    :cond_5
    const/4 p2, 0x2

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 62612
    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x6

    if-le p3, v0, :cond_6

    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x5f

    if-ne p3, v0, :cond_6

    .line 62613
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 62614
    const-string/jumbo v0, "ve"

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62616
    :cond_6
    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez p3, :cond_7

    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p2, :cond_8

    .line 62617
    :cond_7
    const-string p3, ""

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 62620
    :cond_8
    invoke-interface {p1}, Lorg/telegram/tgnet/InputSerializedData;->remaining()I

    move-result p3

    if-lez p3, :cond_e

    .line 62621
    invoke-interface {p1, v1}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p3, :cond_e

    .line 62623
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v0, v5, :cond_9

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v0, :cond_d

    :cond_9
    const-string/jumbo v0, "||"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 62624
    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const-string v0, "\\|\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 62625
    array-length v0, p3

    if-lez v0, :cond_e

    .line 62626
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez v0, :cond_a

    .line 62627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    :cond_a
    move v0, v2

    .line 62629
    :goto_2
    array-length v3, p3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_c

    .line 62630
    aget-object v3, p3, v0

    const-string v4, "\\|=\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 62631
    array-length v4, v3

    if-ne v4, p2, :cond_b

    .line 62632
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    aget-object v5, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62635
    :cond_c
    array-length p2, p3

    sub-int/2addr p2, v2

    aget-object p2, p3, p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 62636
    iget-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz p2, :cond_e

    .line 62637
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    const-string/jumbo p3, "legacy_layer"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    goto :goto_3

    .line 62641
    :cond_d
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 62646
    :cond_e
    :goto_3
    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_f

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez p2, :cond_f

    .line 62647
    invoke-interface {p1, v1}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    :cond_f
    return-void
.end method

.method protected writeAttachPath(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 7

    .line 62652
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isAndroidTestEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 62656
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    const-string/jumbo v1, "|=|"

    const-string/jumbo v2, "||"

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 62666
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, " "

    .line 62667
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v3, :cond_4

    .line 62668
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 62669
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    :cond_3
    const/16 v3, 0xdf

    .line 62671
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    .line 62672
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    const-string/jumbo v4, "legacy_layer"

    const-string v5, "223"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62674
    :cond_4
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v3, :cond_5

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 62675
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 62676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 62678
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62680
    :cond_7
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 62681
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v0, :cond_8

    .line 62682
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_8
    :goto_2
    return-void

    .line 62657
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const-string v0, ""

    .line 62658
    :goto_4
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 62659
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 62660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 62662
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62664
    :cond_c
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
