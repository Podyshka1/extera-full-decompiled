.class public abstract Lorg/telegram/tgnet/TLRPC$MessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageAction"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public amount:J

.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public call_id:J

.field public channel_id:J

.field public chat_id:J

.field public cryptoAmount:J

.field public cryptoCurrency:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public days:I

.field public duration:I

.field public encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

.field public flags:I

.field public game_id:J

.field public inviter_id:J

.field public invoice_slug:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public months:I

.field public newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public payload:[B

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

.field public recurring_init:Z

.field public recurring_used:Z

.field public score:I

.field public subscription_until_date:I

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl:I

.field public user_id:J

.field public users:Ljava/util/ArrayList;

.field public video:Z

.field public wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25449
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 25454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;
    .locals 2

    .line 25706
    const-class v0, Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-static {p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->fromConstructor(I)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    invoke-static {v0, v1, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$MessageAction;

    return-object p0
.end method

.method private static fromConstructor(I)Lorg/telegram/tgnet/TLRPC$MessageAction;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 25532
    :sswitch_0
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;-><init>()V

    return-object p0

    .line 25520
    :sswitch_1
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;-><init>()V

    return-object p0

    .line 25690
    :sswitch_2
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;-><init>()V

    return-object p0

    .line 25598
    :sswitch_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall_layer131;-><init>()V

    return-object p0

    .line 25692
    :sswitch_4
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOfferDeclined;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOfferDeclined;-><init>()V

    return-object p0

    .line 25630
    :sswitch_5
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium_layer216;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium_layer216;-><init>()V

    return-object p0

    .line 25642
    :sswitch_6
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostRefund;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostRefund;-><init>()V

    return-object p0

    .line 25554
    :sswitch_7
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode_layer189;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode_layer189;-><init>()V

    return-object p0

    .line 25564
    :sswitch_8
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;-><init>()V

    return-object p0

    .line 25590
    :sswitch_9
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;-><init>()V

    return-object p0

    .line 25552
    :sswitch_a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode_layer216;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode_layer216;-><init>()V

    return-object p0

    .line 25492
    :sswitch_b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    return-object p0

    .line 25490
    :sswitch_c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;-><init>()V

    return-object p0

    .line 25542
    :sswitch_d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    return-object p0

    .line 25568
    :sswitch_e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;-><init>()V

    return-object p0

    .line 25562
    :sswitch_f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;-><init>()V

    return-object p0

    .line 25548
    :sswitch_10
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    return-object p0

    .line 25506
    :sswitch_11
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo_layer131;-><init>()V

    return-object p0

    .line 25546
    :sswitch_12
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;-><init>()V

    return-object p0

    .line 25500
    :sswitch_13
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;-><init>()V

    return-object p0

    .line 25628
    :sswitch_14
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;-><init>()V

    return-object p0

    .line 25538
    :sswitch_15
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_layer131;-><init>()V

    return-object p0

    .line 25576
    :sswitch_16
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSentMe;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSentMe;-><init>()V

    return-object p0

    .line 25524
    :sswitch_17
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;-><init>()V

    return-object p0

    .line 25656
    :sswitch_18
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer211;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer211;-><init>()V

    return-object p0

    .line 25644
    :sswitch_19
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;-><init>()V

    return-object p0

    .line 25638
    :sswitch_1a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;-><init>()V

    return-object p0

    .line 25614
    :sswitch_1b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer140;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer140;-><init>()V

    return-object p0

    .line 25700
    :sswitch_1c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;-><init>()V

    return-object p0

    .line 25570
    :sswitch_1d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;-><init>()V

    return-object p0

    .line 25670
    :sswitch_1e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer214;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer214;-><init>()V

    return-object p0

    .line 25512
    :sswitch_1f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayLaunch_layer186;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayLaunch_layer186;-><init>()V

    return-object p0

    .line 25550
    :sswitch_20
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;-><init>()V

    return-object p0

    .line 25636
    :sswitch_21
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionRequestedPeer;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionRequestedPeer;-><init>()V

    return-object p0

    .line 25682
    :sswitch_22
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;-><init>()V

    return-object p0

    .line 25668
    :sswitch_23
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer210;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer210;-><init>()V

    return-object p0

    .line 25488
    :sswitch_24
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestBirthday;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestBirthday;-><init>()V

    return-object p0

    .line 25516
    :sswitch_25
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayResults_layer186;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayResults_layer186;-><init>()V

    return-object p0

    .line 25664
    :sswitch_26
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer197;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer197;-><init>()V

    return-object p0

    .line 25502
    :sswitch_27
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    return-object p0

    .line 25602
    :sswitch_28
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    return-object p0

    .line 25660
    :sswitch_29
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer195;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer195;-><init>()V

    return-object p0

    .line 25534
    :sswitch_2a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;-><init>()V

    return-object p0

    .line 25526
    :sswitch_2b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneNumberRequest;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneNumberRequest;-><init>()V

    return-object p0

    .line 25624
    :sswitch_2c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;-><init>()V

    return-object p0

    .line 25634
    :sswitch_2d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionRequestedPeer_layer168;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionRequestedPeer_layer168;-><init>()V

    return-object p0

    .line 25494
    :sswitch_2e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCustomAction;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCustomAction;-><init>()V

    return-object p0

    .line 25580
    :sswitch_2f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink_layer131;-><init>()V

    return-object p0

    .line 25582
    :sswitch_30
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;-><init>()V

    return-object p0

    .line 25654
    :sswitch_31
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer217;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer217;-><init>()V

    return-object p0

    .line 25688
    :sswitch_32
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;-><init>()V

    return-object p0

    .line 25528
    :sswitch_33
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;-><init>()V

    return-object p0

    .line 25518
    :sswitch_34
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;-><init>()V

    return-object p0

    .line 25650
    :sswitch_35
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;-><init>()V

    return-object p0

    .line 25592
    :sswitch_36
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionAttachMenuBotAllowed;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionAttachMenuBotAllowed;-><init>()V

    return-object p0

    .line 25674
    :sswitch_37
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;-><init>()V

    return-object p0

    .line 25694
    :sswitch_38
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChangeCreator;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChangeCreator;-><init>()V

    return-object p0

    .line 25508
    :sswitch_39
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;-><init>()V

    return-object p0

    .line 25652
    :sswitch_3a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer219;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer219;-><init>()V

    return-object p0

    .line 25574
    :sswitch_3b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;-><init>()V

    return-object p0

    .line 25658
    :sswitch_3c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer197;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer197;-><init>()V

    return-object p0

    .line 25556
    :sswitch_3d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode_layer167;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode_layer167;-><init>()V

    return-object p0

    .line 25684
    :sswitch_3e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;-><init>()V

    return-object p0

    .line 25622
    :sswitch_3f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBoostApply;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionBoostApply;-><init>()V

    return-object p0

    .line 25632
    :sswitch_40
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium_layer189;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium_layer189;-><init>()V

    return-object p0

    .line 25686
    :sswitch_41
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoAppendTasks;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoAppendTasks;-><init>()V

    return-object p0

    .line 25610
    :sswitch_42
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;-><init>()V

    return-object p0

    .line 25608
    :sswitch_43
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;-><init>()V

    return-object p0

    .line 25560
    :sswitch_44
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;-><init>()V

    return-object p0

    .line 25594
    :sswitch_45
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;-><init>()V

    return-object p0

    .line 25698
    :sswitch_46
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsToggle;-><init>()V

    return-object p0

    .line 25498
    :sswitch_47
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;-><init>()V

    return-object p0

    .line 25676
    :sswitch_48
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaidMessagesPrice_layer203;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaidMessagesPrice_layer203;-><init>()V

    return-object p0

    .line 25544
    :sswitch_49
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper_layer166;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper_layer166;-><init>()V

    return-object p0

    .line 25566
    :sswitch_4a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;-><init>()V

    return-object p0

    .line 25616
    :sswitch_4b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    return-object p0

    .line 25604
    :sswitch_4c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;-><init>()V

    return-object p0

    .line 25578
    :sswitch_4d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSent;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSent;-><init>()V

    return-object p0

    .line 25620
    :sswitch_4e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;-><init>()V

    return-object p0

    .line 25540
    :sswitch_4f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser_layer131;-><init>()V

    return-object p0

    .line 25558
    :sswitch_50
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit_layer149;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit_layer149;-><init>()V

    return-object p0

    .line 25696
    :sswitch_51
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionNewCreatorPending;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionNewCreatorPending;-><init>()V

    return-object p0

    .line 25536
    :sswitch_52
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom_layer131;-><init>()V

    return-object p0

    .line 25648
    :sswitch_53
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;-><init>()V

    return-object p0

    .line 25666
    :sswitch_54
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer202;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer202;-><init>()V

    return-object p0

    .line 25680
    :sswitch_55
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaidMessagesRefunded;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaidMessagesRefunded;-><init>()V

    return-object p0

    .line 25606
    :sswitch_56
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;-><init>()V

    return-object p0

    .line 25522
    :sswitch_57
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme_layer213;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme_layer213;-><init>()V

    return-object p0

    .line 25572
    :sswitch_58
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL_layer149;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL_layer149;-><init>()V

    return-object p0

    .line 25646
    :sswitch_59
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;-><init>()V

    return-object p0

    .line 25510
    :sswitch_5a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayLaunch;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayLaunch;-><init>()V

    return-object p0

    .line 25496
    :sswitch_5b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate_layer131;-><init>()V

    return-object p0

    .line 25504
    :sswitch_5c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;-><init>()V

    return-object p0

    .line 25530
    :sswitch_5d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    return-object p0

    .line 25662
    :sswitch_5e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer192;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer192;-><init>()V

    return-object p0

    .line 25588
    :sswitch_5f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;-><init>()V

    return-object p0

    .line 25612
    :sswitch_60
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer193;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer193;-><init>()V

    return-object p0

    .line 25596
    :sswitch_61
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;-><init>()V

    return-object p0

    .line 25640
    :sswitch_62
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostSuccess;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostSuccess;-><init>()V

    return-object p0

    .line 25584
    :sswitch_63
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;-><init>()V

    return-object p0

    .line 25672
    :sswitch_64
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer221;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique_layer221;-><init>()V

    return-object p0

    .line 25586
    :sswitch_65
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    return-object p0

    .line 25618
    :sswitch_66
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;-><init>()V

    return-object p0

    .line 25626
    :sswitch_67
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe_layer193;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe_layer193;-><init>()V

    return-object p0

    .line 25514
    :sswitch_68
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayResults;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiveawayResults;-><init>()V

    return-object p0

    .line 25678
    :sswitch_69
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaidMessagesPrice;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaidMessagesPrice;-><init>()V

    return-object p0

    .line 25600
    :sswitch_6a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f1ee581 -> :sswitch_6a
        -0x7b477a88 -> :sswitch_69
        -0x781d0eab -> :sswitch_68
        -0x70ce4cd9 -> :sswitch_67
        -0x6d58d78a -> :sswitch_66
        -0x6b42c713 -> :sswitch_65
        -0x6a8d7abd -> :sswitch_64
        -0x6a2d536e -> :sswitch_63
        -0x6a223097 -> :sswitch_62
        -0x6a1c0411 -> :sswitch_61
        -0x69e9c0aa -> :sswitch_60
        -0x671f2969 -> :sswitch_5f
        -0x644c10bc -> :sswitch_5e
        -0x604549fc -> :sswitch_5d
        -0x5bc0cf34 -> :sswitch_5c
        -0x599c7466 -> :sswitch_5b
        -0x57f0ae1c -> :sswitch_5a
        -0x575c3967 -> :sswitch_59
        -0x55e50403 -> :sswitch_58
        -0x55879cbb -> :sswitch_57
        -0x54165002 -> :sswitch_56
        -0x53e0e033 -> :sswitch_55
        -0x5320347f -> :sswitch_54
        -0x4ff3b85e -> :sswitch_53
        -0x4faa1512 -> :sswitch_52
        -0x4f812f7b -> :sswitch_51
        -0x4e75bce4 -> :sswitch_50
        -0x4d5164f4 -> :sswitch_4f
        -0x4c5f899f -> :sswitch_4e
        -0x4b3c734b -> :sswitch_4d
        -0x4a5e31a6 -> :sswitch_4c
        -0x49510850 -> :sswitch_4b
        -0x46e442c6 -> :sswitch_4a
        -0x43bb56d9 -> :sswitch_49
        -0x4328ebe7 -> :sswitch_48
        -0x42b83453 -> :sswitch_47
        -0x40829a8e -> :sswitch_46
        -0x3f878293 -> :sswitch_45
        -0x3f6bb7e0 -> :sswitch_44
        -0x3ae92987 -> :sswitch_43
        -0x39db4e92 -> :sswitch_42
        -0x3812437d -> :sswitch_41
        -0x37c29514 -> :sswitch_40
        -0x33fd5593 -> :sswitch_3f
        -0x3383a377 -> :sswitch_3e
        -0x2d3024f2 -> :sswitch_3d
        -0x270b0f59 -> :sswitch_3c
        -0x26a39eac -> :sswitch_3b
        -0x24a69ab0 -> :sswitch_3a
        -0x1efc806e -> :sswitch_39
        -0x1e77afc5 -> :sswitch_38
        -0x193ceade -> :sswitch_37
        -0x1818a069 -> :sswitch_36
        -0x15d3ce2d -> :sswitch_35
        -0x15c6b717 -> :sswitch_34
        -0x14435c35 -> :sswitch_33
        -0x1185ea6a -> :sswitch_32
        -0xdb21806 -> :sswitch_31
        -0xc0da08a -> :sswitch_30
        -0x7630a18 -> :sswitch_2f
        -0x51960aa -> :sswitch_2e
        -0x188cba3 -> :sswitch_2d
        -0x5ff334 -> :sswitch_2c
        0x1baa035 -> :sswitch_2b
        0x31224c3 -> :sswitch_2a
        0x8557637 -> :sswitch_29
        0xd999256 -> :sswitch_28
        0x15cefd00 -> :sswitch_27
        0x26077b99 -> :sswitch_26
        0x2a9fadc5 -> :sswitch_25
        0x2c8f2a25 -> :sswitch_24
        0x2e3ae60e -> :sswitch_23
        0x2ffe2f7a -> :sswitch_22
        0x31518e9b -> :sswitch_21
        0x31c48347 -> :sswitch_20
        0x332ba9ed -> :sswitch_1f
        0x34f762f3 -> :sswitch_1e
        0x3c134d7b -> :sswitch_1d
        0x3e2793ba -> :sswitch_1c
        0x40699cd0 -> :sswitch_1b
        0x41b3e202 -> :sswitch_1a
        0x45d5b021 -> :sswitch_19
        0x4717e8a4 -> :sswitch_18
        0x4792929b -> :sswitch_17
        0x47dd8079 -> :sswitch_16
        0x488a7337 -> :sswitch_15
        0x48e91302 -> :sswitch_14
        0x502f92f7 -> :sswitch_13
        0x5060a3f4 -> :sswitch_12
        0x51bdb021 -> :sswitch_11
        0x55555550 -> :sswitch_10
        0x55555551 -> :sswitch_f
        0x55555552 -> :sswitch_e
        0x55555557 -> :sswitch_d
        0x555555f5 -> :sswitch_c
        0x555555f7 -> :sswitch_b
        0x56d03994 -> :sswitch_a
        0x57de635e -> :sswitch_9
        0x5e3cfc4b -> :sswitch_8
        0x678c2e09 -> :sswitch_7
        0x69f916f8 -> :sswitch_6
        0x6c6274fa -> :sswitch_5
        0x73ada76b -> :sswitch_4
        0x76b9f11a -> :sswitch_3
        0x774278d4 -> :sswitch_2
        0x7a0d7f42 -> :sswitch_1
        0x7fcb13a8 -> :sswitch_0
    .end sparse-switch
.end method
