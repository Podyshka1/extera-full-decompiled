.class public abstract Lorg/telegram/tgnet/TLRPC$Update;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Update"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32177
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 32306
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;-><init>()V

    goto/16 :goto_0

    .line 32438
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSentStoryReaction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSentStoryReaction;-><init>()V

    goto/16 :goto_0

    .line 32567
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMonoForumInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMonoForumInbox;-><init>()V

    goto/16 :goto_0

    .line 32456
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    goto/16 :goto_0

    .line 32396
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedRingtones;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedRingtones;-><init>()V

    goto/16 :goto_0

    .line 32420
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactsReset;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactsReset;-><init>()V

    goto/16 :goto_0

    .line 32459
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;-><init>()V

    goto/16 :goto_0

    .line 32300
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentReactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentReactions;-><init>()V

    goto/16 :goto_0

    .line 32225
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;-><init>()V

    goto/16 :goto_0

    .line 32228
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerSettings;-><init>()V

    goto/16 :goto_0

    .line 32288
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;-><init>()V

    goto/16 :goto_0

    .line 32468
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;-><init>()V

    goto/16 :goto_0

    .line 32516
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;-><init>()V

    goto/16 :goto_0

    .line 32501
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;-><init>()V

    goto/16 :goto_0

    .line 32423
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;-><init>()V

    goto/16 :goto_0

    .line 32219
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;-><init>()V

    goto/16 :goto_0

    .line 32201
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedChannelMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedChannelMessages;-><init>()V

    goto/16 :goto_0

    .line 32207
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;-><init>()V

    goto/16 :goto_0

    .line 32540
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;-><init>()V

    goto/16 :goto_0

    .line 32318
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLoginToken;-><init>()V

    goto/16 :goto_0

    .line 32342
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;-><init>()V

    goto/16 :goto_0

    .line 32492
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;-><init>()V

    goto/16 :goto_0

    .line 32525
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;-><init>()V

    goto/16 :goto_0

    .line 32561
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;-><init>()V

    goto/16 :goto_0

    .line 32234
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;-><init>()V

    goto/16 :goto_0

    .line 32546
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStarsBalance;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStarsBalance;-><init>()V

    goto/16 :goto_0

    .line 32276
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;-><init>()V

    goto/16 :goto_0

    .line 32573
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStarGiftAuctionState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStarGiftAuctionState;-><init>()V

    goto/16 :goto_0

    .line 32474
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;-><init>()V

    goto/16 :goto_0

    .line 32534
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteGroupCallMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteGroupCallMessages;-><init>()V

    goto/16 :goto_0

    .line 32528
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;-><init>()V

    goto/16 :goto_0

    .line 32312
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;-><init>()V

    goto/16 :goto_0

    .line 32303
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedReactionTags;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedReactionTags;-><init>()V

    goto/16 :goto_0

    .line 32255
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewScheduledMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewScheduledMessage;-><init>()V

    goto/16 :goto_0

    .line 32477
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;-><init>()V

    goto/16 :goto_0

    .line 32450
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilters;-><init>()V

    goto/16 :goto_0

    .line 32246
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;-><init>()V

    goto/16 :goto_0

    .line 32453
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentEmojiStatuses;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentEmojiStatuses;-><init>()V

    goto/16 :goto_0

    .line 32216
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    goto/16 :goto_0

    .line 32426
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;-><init>()V

    goto/16 :goto_0

    .line 32399
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStoriesStealthMode;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStoriesStealthMode;-><init>()V

    goto/16 :goto_0

    .line 32333
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;-><init>()V

    goto/16 :goto_0

    .line 32552
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotPurchasedPaidMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotPurchasedPaidMedia;-><init>()V

    goto/16 :goto_0

    .line 32267
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserEmojiStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserEmojiStatus;-><init>()V

    goto/16 :goto_0

    .line 32378
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;-><init>()V

    goto/16 :goto_0

    .line 32387
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;-><init>()V

    goto/16 :goto_0

    .line 32351
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;-><init>()V

    goto/16 :goto_0

    .line 32183
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePollVote;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePollVote;-><init>()V

    goto/16 :goto_0

    .line 32444
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUser;-><init>()V

    goto/16 :goto_0

    .line 32252
    :sswitch_31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;-><init>()V

    goto/16 :goto_0

    .line 32372
    :sswitch_32
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;-><init>()V

    goto/16 :goto_0

    .line 32243
    :sswitch_33
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;-><init>()V

    goto/16 :goto_0

    .line 32465
    :sswitch_34
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;-><init>()V

    goto/16 :goto_0

    .line 32249
    :sswitch_35
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateFolderPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateFolderPeers;-><init>()V

    goto/16 :goto_0

    .line 32543
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStoryReaction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStoryReaction;-><init>()V

    goto/16 :goto_0

    .line 32447
    :sswitch_37
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateAttachMenuBots;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateAttachMenuBots;-><init>()V

    goto/16 :goto_0

    .line 32210
    :sswitch_38
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;-><init>()V

    goto/16 :goto_0

    .line 32222
    :sswitch_39
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebViewResultSent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebViewResultSent;-><init>()V

    goto/16 :goto_0

    .line 32495
    :sswitch_3a
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$TL_updateBotMenuButton;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$TL_updateBotMenuButton;-><init>()V

    goto/16 :goto_0

    .line 32258
    :sswitch_3b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    goto/16 :goto_0

    .line 32330
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;-><init>()V

    goto/16 :goto_0

    .line 32480
    :sswitch_3d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;-><init>()V

    goto/16 :goto_0

    .line 32273
    :sswitch_3e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;-><init>()V

    goto/16 :goto_0

    .line 32504
    :sswitch_3f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelViewForumAsMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelViewForumAsMessages;-><init>()V

    goto/16 :goto_0

    .line 32489
    :sswitch_40
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;-><init>()V

    goto/16 :goto_0

    .line 32231
    :sswitch_41
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;-><init>()V

    goto/16 :goto_0

    .line 32402
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribedAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribedAudio;-><init>()V

    goto/16 :goto_0

    .line 32579
    :sswitch_43
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEmojiGameInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEmojiGameInfo;-><init>()V

    goto/16 :goto_0

    .line 32294
    :sswitch_44
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedEmojiStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedEmojiStickers;-><init>()V

    goto/16 :goto_0

    .line 32393
    :sswitch_45
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;-><init>()V

    goto/16 :goto_0

    .line 32519
    :sswitch_46
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;-><init>()V

    goto/16 :goto_0

    .line 32195
    :sswitch_47
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChat;-><init>()V

    goto/16 :goto_0

    .line 32486
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;-><init>()V

    goto/16 :goto_0

    .line 32336
    :sswitch_49
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateReadStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateReadStories;-><init>()V

    goto/16 :goto_0

    .line 32522
    :sswitch_4a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;-><init>()V

    goto/16 :goto_0

    .line 32204
    :sswitch_4b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;-><init>()V

    goto/16 :goto_0

    .line 32429
    :sswitch_4c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;-><init>()V

    goto/16 :goto_0

    .line 32441
    :sswitch_4d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;-><init>()V

    goto/16 :goto_0

    .line 32270
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;-><init>()V

    goto/16 :goto_0

    .line 32354
    :sswitch_4f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;-><init>()V

    goto/16 :goto_0

    .line 32363
    :sswitch_50
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;-><init>()V

    goto/16 :goto_0

    .line 32384
    :sswitch_51
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedMessages;-><init>()V

    goto/16 :goto_0

    .line 32339
    :sswitch_52
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    goto/16 :goto_0

    .line 32381
    :sswitch_53
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerBlocked;-><init>()V

    goto/16 :goto_0

    .line 32264
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;-><init>()V

    goto/16 :goto_0

    .line 32309
    :sswitch_55
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateFavedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateFavedStickers;-><init>()V

    goto/16 :goto_0

    .line 32297
    :sswitch_56
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;-><init>()V

    goto/16 :goto_0

    .line 32291
    :sswitch_57
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;-><init>()V

    goto/16 :goto_0

    .line 32498
    :sswitch_58
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;-><init>()V

    goto/16 :goto_0

    .line 32576
    :sswitch_59
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStarGiftAuctionUserState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStarGiftAuctionUserState;-><init>()V

    goto/16 :goto_0

    .line 32531
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;-><init>()V

    goto/16 :goto_0

    .line 32348
    :sswitch_5b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;-><init>()V

    goto/16 :goto_0

    .line 32213
    :sswitch_5c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;-><init>()V

    goto/16 :goto_0

    .line 32186
    :sswitch_5d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageExtendedMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageExtendedMedia;-><init>()V

    goto/16 :goto_0

    .line 32432
    :sswitch_5e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;-><init>()V

    goto/16 :goto_0

    .line 32537
    :sswitch_5f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallEncryptedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallEncryptedMessage;-><init>()V

    goto/16 :goto_0

    .line 32435
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;-><init>()V

    goto/16 :goto_0

    .line 32282
    :sswitch_61
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;-><init>()V

    goto/16 :goto_0

    .line 32585
    :sswitch_62
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantRank;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantRank;-><init>()V

    goto/16 :goto_0

    .line 32192
    :sswitch_63
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;-><init>()V

    goto/16 :goto_0

    .line 32237
    :sswitch_64
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    goto/16 :goto_0

    .line 32360
    :sswitch_65
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;-><init>()V

    goto/16 :goto_0

    .line 32405
    :sswitch_66
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;-><init>()V

    goto/16 :goto_0

    .line 32321
    :sswitch_67
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;-><init>()V

    goto/16 :goto_0

    .line 32345
    :sswitch_68
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelAvailableMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelAvailableMessages;-><init>()V

    goto/16 :goto_0

    .line 32513
    :sswitch_69
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;-><init>()V

    goto/16 :goto_0

    .line 32507
    :sswitch_6a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;-><init>()V

    goto/16 :goto_0

    .line 32189
    :sswitch_6b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;-><init>()V

    goto/16 :goto_0

    .line 32582
    :sswitch_6c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStarGiftCraftFail;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStarGiftCraftFail;-><init>()V

    goto/16 :goto_0

    .line 32375
    :sswitch_6d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;-><init>()V

    goto/16 :goto_0

    .line 32558
    :sswitch_6e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotSubscriptionExpire;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotSubscriptionExpire;-><init>()V

    goto/16 :goto_0

    .line 32369
    :sswitch_6f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;-><init>()V

    goto/16 :goto_0

    .line 32414
    :sswitch_70
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilterOrder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilterOrder;-><init>()V

    goto/16 :goto_0

    .line 32549
    :sswitch_71
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;-><init>()V

    goto/16 :goto_0

    .line 32570
    :sswitch_72
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMonoForumOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMonoForumOutbox;-><init>()V

    goto/16 :goto_0

    .line 32564
    :sswitch_73
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;-><init>()V

    goto/16 :goto_0

    .line 32357
    :sswitch_74
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;-><init>()V

    goto/16 :goto_0

    .line 32198
    :sswitch_75
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    goto/16 :goto_0

    .line 32510
    :sswitch_76
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMonoForumNoPaidException;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMonoForumNoPaidException;-><init>()V

    goto/16 :goto_0

    .line 32411
    :sswitch_77
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    goto :goto_0

    .line 32324
    :sswitch_78
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;-><init>()V

    goto :goto_0

    .line 32408
    :sswitch_79
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;-><init>()V

    goto :goto_0

    .line 32285
    :sswitch_7a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;-><init>()V

    goto :goto_0

    .line 32327
    :sswitch_7b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall_layer216;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall_layer216;-><init>()V

    goto :goto_0

    .line 32417
    :sswitch_7c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;-><init>()V

    goto :goto_0

    .line 32483
    :sswitch_7d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    goto :goto_0

    .line 32462
    :sswitch_7e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;-><init>()V

    goto :goto_0

    .line 32240
    :sswitch_7f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;-><init>()V

    goto :goto_0

    .line 32555
    :sswitch_80
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePaidReactionPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePaidReactionPrivacy;-><init>()V

    goto :goto_0

    .line 32366
    :sswitch_81
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;-><init>()V

    goto :goto_0

    .line 32390
    :sswitch_82
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribeAudio;-><init>()V

    goto :goto_0

    .line 32279
    :sswitch_83
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGeoLiveViewed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGeoLiveViewed;-><init>()V

    goto :goto_0

    .line 32261
    :sswitch_84
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMoveStickerSetToTop;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMoveStickerSetToTop;-><init>()V

    goto :goto_0

    .line 32315
    :sswitch_85
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;-><init>()V

    goto :goto_0

    .line 32471
    :sswitch_86
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateTheme;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateTheme;-><init>()V

    :goto_0
    if-nez v0, :cond_0

    .line 32588
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    if-eqz v1, :cond_0

    .line 32589
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ApplicationLoader;->parseTLUpdate(I)Lorg/telegram/tgnet/TLRPC$Update;

    move-result-object v0

    .line 32591
    :cond_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Update;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7de9045d -> :sswitch_86
        -0x7cb78510 -> :sswitch_85
        -0x7903307b -> :sswitch_84
        -0x78e046c7 -> :sswitch_83
        -0x779e8f70 -> :sswitch_82
        -0x76ae5411 -> :sswitch_81
        -0x748da032 -> :sswitch_80
        -0x737736dd -> :sswitch_7f
        -0x71a1678d -> :sswitch_7e
        -0x6dd191f0 -> :sswitch_7d
        -0x6c8acbe2 -> :sswitch_7c
        -0x6829bcbf -> :sswitch_7b
        -0x67a2c545 -> :sswitch_7a
        -0x65bdd3e0 -> :sswitch_79
        -0x62dde920 -> :sswitch_78
        -0x617b4367 -> :sswitch_77
        -0x607ed4f8 -> :sswitch_76
        -0x5df24f1b -> :sswitch_75
        -0x5dd622fa -> :sswitch_74
        -0x5b88d771 -> :sswitch_73
        -0x5b586c8a -> :sswitch_72
        -0x5a7b4fe7 -> :sswitch_71
        -0x5a28defb -> :sswitch_70
        -0x587b76dc -> :sswitch_6f
        -0x5751c14f -> :sswitch_6e
        -0x54f094e2 -> :sswitch_6d
        -0x53f8dbbc -> :sswitch_6c
        -0x535e9a85 -> :sswitch_6b
        -0x51c0efe3 -> :sswitch_6a
        -0x5150618c -> :sswitch_69
        -0x4dc03968 -> :sswitch_68
        -0x4b5d1773 -> :sswitch_67
        -0x4b503050 -> :sswitch_66
        -0x49a70dc2 -> :sswitch_65
        -0x48a06657 -> :sswitch_64
        -0x4464465b -> :sswitch_63
        -0x427c9847 -> :sswitch_62
        -0x413d9711 -> :sswitch_61
        -0x3cd2a4ee -> :sswitch_60
        -0x36a8589a -> :sswitch_5f
        -0x2d65d80c -> :sswitch_5e
        -0x2a5be8dc -> :sswitch_5d
        -0x294e6aba -> :sswitch_5c
        -0x28359e5e -> :sswitch_5b
        -0x27cd90f3 -> :sswitch_5a
        -0x23a70ce2 -> :sswitch_59
        -0x210ebc30 -> :sswitch_58
        -0x1cd0c289 -> :sswitch_57
        -0x1bfc8f5d -> :sswitch_56
        -0x1aee6693 -> :sswitch_55
        -0x1a420722 -> :sswitch_54
        -0x141f88ae -> :sswitch_53
        -0x141b97e7 -> :sswitch_52
        -0x127a154b -> :sswitch_51
        -0x1203eee2 -> :sswitch_50
        -0x11c4d8d6 -> :sswitch_4f
        -0xdd953f8 -> :sswitch_4e
        -0xdd87974 -> :sswitch_4d
        -0xd58e67d -> :sswitch_4c
        -0xd1424b2 -> :sswitch_4b
        -0xac258e9 -> :sswitch_4a
        -0x8b16cd5 -> :sswitch_49
        -0x7dd8e7f -> :sswitch_48
        -0x76595b2 -> :sswitch_47
        -0x6b8f54e -> :sswitch_46
        -0x5f0c35e -> :sswitch_45
        -0x4b3b694 -> :sswitch_44
        -0x463ab86 -> :sswitch_43
        0x84cd5a -> :sswitch_42
        0x5492a13 -> :sswitch_41
        0x7761198 -> :sswitch_40
        0x7b68920 -> :sswitch_3f
        0xb783982 -> :sswitch_3e
        0xbb2d201 -> :sswitch_3d
        0x108d941f -> :sswitch_3c
        0x12bcbd9a -> :sswitch_3b
        0x14b85813 -> :sswitch_3a
        0x1592b79d -> :sswitch_39
        0x1710f156 -> :sswitch_38
        0x17b7a20b -> :sswitch_37
        0x1824e40b -> :sswitch_36
        0x19360dc0 -> :sswitch_35
        0x1b3f4df7 -> :sswitch_34
        0x1bf335b9 -> :sswitch_33
        0x1e297bfa -> :sswitch_32
        0x1f2b0afd -> :sswitch_31
        0x20529438 -> :sswitch_30
        0x24f40e77 -> :sswitch_2f
        0x25f324f7 -> :sswitch_2e
        0x2661bf09 -> :sswitch_2d
        0x26ffde7d -> :sswitch_2c
        0x28373599 -> :sswitch_2b
        0x283bd312 -> :sswitch_2a
        0x2a17bf5c -> :sswitch_29
        0x2c084dc1 -> :sswitch_28
        0x2f2ba99f -> :sswitch_27
        0x2f2f21bf -> :sswitch_26
        0x30f443db -> :sswitch_25
        0x31c24808 -> :sswitch_24
        0x3504914f -> :sswitch_23
        0x38fe25b7 -> :sswitch_22
        0x39a51dfb -> :sswitch_21
        0x39c67432 -> :sswitch_20
        0x3dda5451 -> :sswitch_1f
        0x3e050d0f -> :sswitch_1e
        0x3e85e92c -> :sswitch_1d
        0x46560264 -> :sswitch_1c
        0x48e246c2 -> :sswitch_1b
        0x4d712f2e -> :sswitch_1a
        0x4e80a379 -> :sswitch_19
        0x4e90bfd6 -> :sswitch_18
        0x504aa18f -> :sswitch_17
        0x53e6f1ec -> :sswitch_16
        0x54c01850 -> :sswitch_15
        0x56022f4d -> :sswitch_14
        0x564fe691 -> :sswitch_13
        0x566fe7cd -> :sswitch_12
        0x571d2742 -> :sswitch_11
        0x5bb98608 -> :sswitch_10
        0x62ba04d9 -> :sswitch_f
        0x635b4c09 -> :sswitch_e
        0x683b2c52 -> :sswitch_d
        0x686c85a6 -> :sswitch_c
        0x688a30aa -> :sswitch_b
        0x695c9e7c -> :sswitch_a
        0x6a7e7366 -> :sswitch_9
        0x6e6fe51c -> :sswitch_8
        0x6f7863f4 -> :sswitch_7
        0x7063c3db -> :sswitch_6
        0x7084a7be -> :sswitch_5
        0x74d8be99 -> :sswitch_4
        0x75b3b798 -> :sswitch_3
        0x77b0e372 -> :sswitch_2
        0x7d627683 -> :sswitch_1
        0x7f891213 -> :sswitch_0
    .end sparse-switch
.end method
