.class public Lorg/telegram/messenger/DialogObject;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static editDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 353
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_5

    move v3, v1

    move v4, v2

    .line 355
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_3

    if-nez v2, :cond_0

    .line 357
    aput v3, v0, v3

    goto :goto_2

    :cond_0
    if-lez v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    .line 360
    aget v6, v0, v5

    add-int/lit8 v7, v2, -0x1

    .line 361
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    .line 362
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget v7, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 364
    :cond_1
    aput v4, v0, v5

    move v4, v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    aput v4, v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public static emojiStatusesEqual(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z
    .locals 4

    .line 472
    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 473
    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusCollectibleId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusCollectibleId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 474
    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusUntil(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusUntil(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static filterEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    .locals 5

    .line 463
    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusUntil(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static findUsername(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_username;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;)",
            "Lorg/telegram/tgnet/TLRPC$TL_username;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 490
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v3, :cond_1

    .line 491
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    return-object v0
.end method

.method public static findUsername(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$TL_username;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 485
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->findUsername(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_username;

    move-result-object p0

    return-object p0
.end method

.method public static findUsername(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$TL_username;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 480
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->findUsername(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_username;

    move-result-object p0

    return-object p0
.end method

.method public static getBotVerification(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/tl/TL_bots$botVerification;
    .locals 1

    .line 499
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_0

    .line 500
    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    return-object p0

    .line 501
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 502
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    .line 509
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 510
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    return-wide v0

    .line 511
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 512
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->bot_verification_icon:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDialogId(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    .line 60
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    .line 62
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 63
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDialogTitle(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {v0, v0, p0}, Lorg/telegram/messenger/DialogObject;->setDialogPhotoTitle(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEmojiStatusCollectibleId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J
    .locals 7

    .line 437
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 438
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    .line 439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    if-gt v0, v3, :cond_0

    return-wide v1

    .line 442
    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public static getEmojiStatusDocumentId(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    .line 403
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide v0

    .line 405
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide p0

    return-wide p0

    .line 407
    :cond_1
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-nez p0, :cond_2

    return-wide v0

    .line 409
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J
    .locals 7

    .line 417
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 418
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    .line 419
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    long-to-int v1, v5

    if-gt v0, v1, :cond_0

    return-wide v3

    .line 422
    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    return-wide v0

    .line 423
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_3

    .line 424
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    .line 425
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    long-to-int v1, v5

    if-gt v0, v1, :cond_2

    return-wide v3

    .line 428
    :cond_2
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->document_id:J

    return-wide v0

    :cond_3
    return-wide v3
.end method

.method public static getEmojiStatusUntil(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)I
    .locals 1

    .line 448
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-eqz v0, :cond_0

    .line 449
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    .line 450
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 451
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    return p0

    .line 453
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_1

    .line 454
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    .line 455
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 456
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getEncryptedChatId(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getFolderId(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method public static getLastMessageOrDraftDate(Lorg/telegram/tgnet/TLRPC$Dialog;Lorg/telegram/tgnet/TLRPC$DraftMessage;)J
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    if-lt p1, v0, :cond_0

    int-to-long p0, p1

    return-wide p0

    :cond_0
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public static getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J
    .locals 2

    .line 527
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    if-eqz v0, :cond_0

    .line 528
    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getName(IJ)Ljava/lang/String;
    .locals 0

    .line 191
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(J)Ljava/lang/String;
    .locals 1

    .line 181
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    .line 201
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 202
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 204
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 205
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p0

    .line 207
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 86
    :cond_0
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    return-wide v2

    .line 88
    :cond_1
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    neg-long v0, v2

    return-wide v0

    .line 91
    :cond_2
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public static getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 73
    :cond_0
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    return-wide v2

    .line 75
    :cond_1
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    neg-long v0, v2

    return-wide v0

    .line 78
    :cond_2
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public static getPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 296
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 300
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 301
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v1, :cond_3

    .line 302
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 303
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_6

    :cond_5
    :goto_1
    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 2

    .line 274
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 278
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 279
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 285
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 286
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-static {p1, p0, v1}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/DialogObject;->getSimilarPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    .line 289
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_2

    .line 290
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-static {p1, p0, v1}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/DialogObject;->getSimilarPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortName(IJ)Ljava/lang/String;
    .locals 0

    .line 237
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortName(J)Ljava/lang/String;
    .locals 1

    .line 242
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    .line 247
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 248
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 250
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 251
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getShortTitle(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    .line 124
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 126
    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 128
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p0

    .line 130
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getSimilarPublicUsername(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    .line 317
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 318
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v6, :cond_1

    .line 319
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v7, :cond_1

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    cmpg-double v7, v2, v0

    if-gez v7, :cond_0

    move-wide v7, v0

    goto :goto_1

    .line 320
    :cond_0
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v7, p2}, Lorg/telegram/messenger/DialogObject;->similarity(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    :goto_1
    cmpl-double v9, v7, v2

    if-lez v9, :cond_1

    .line 323
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    move-object v4, v2

    move-wide v2, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 328
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    cmpg-double p1, v2, v0

    if-gez p1, :cond_3

    goto :goto_2

    .line 329
    :cond_3
    invoke-static {p0, p2}, Lorg/telegram/messenger/DialogObject;->similarity(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    :goto_2
    cmpl-double p1, v0, v2

    if-lez p1, :cond_4

    return-object p0

    :cond_4
    return-object v4
.end method

.method public static getStatus(IJ)Ljava/lang/String;
    .locals 1

    .line 196
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->getStatus(ILorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStatus(ILorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    .line 213
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p0, :cond_4

    .line 216
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 217
    iget p0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    .line 218
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 219
    const-string p0, "Subscribers"

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    const-string p0, "Members"

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 225
    sget p0, Lorg/telegram/messenger/R$string;->DiscussChannel:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public static getStatus(J)Ljava/lang/String;
    .locals 1

    .line 186
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/DialogObject;->getStatus(IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasPhoto(Lorg/telegram/tgnet/TLObject;)Z
    .locals 3

    .line 258
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 259
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    .line 260
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2

    .line 261
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static initDialog(Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 6

    if-eqz p0, :cond_5

    .line 39
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 47
    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-void

    .line 48
    :cond_2
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    neg-long v0, v4

    .line 49
    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-void

    .line 51
    :cond_3
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    neg-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-void

    .line 53
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v0, :cond_5

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 55
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->makeFolderDialogId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :cond_5
    :goto_0
    return-void
.end method

.method public static isChannel(Lorg/telegram/tgnet/TLRPC$Dialog;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 27
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChatDialog(J)Z
    .locals 2

    .line 100
    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmojiStatusCollectible(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 377
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 379
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result p0

    return p0

    .line 381
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    .line 383
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result p0

    return p0
.end method

.method public static isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z
    .locals 7

    .line 391
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 392
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    .line 393
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public static isEmpty(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 519
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactEmpty;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEncryptedDialog(J)Z
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFolderDialogId(J)Z
    .locals 4

    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z
    .locals 0

    .line 523
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    return p0
.end method

.method public static isUserDialog(J)Z
    .locals 2

    .line 104
    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static makeEncryptedDialogId(J)J
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static makeFolderDialogId(I)J
    .locals 4

    const-wide/high16 v0, 0x2000000000000000L

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static setDialogPhotoTitle(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 3

    .line 139
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_8

    .line 140
    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 141
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 142
    sget p2, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    .line 144
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :cond_0
    if-eqz p0, :cond_1

    .line 147
    invoke-virtual {p0, v2, p1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2

    .line 149
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    sget p2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :cond_3
    if-eqz p0, :cond_4

    .line 155
    invoke-virtual {p0, v2, p1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-object p2

    .line 158
    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 160
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_6
    if-eqz p0, :cond_7

    .line 163
    invoke-virtual {p0, p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object v1

    .line 166
    :cond_8
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_b

    .line 167
    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 168
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 170
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_9
    if-eqz p0, :cond_a

    .line 173
    invoke-virtual {p0, p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-object v1

    .line 176
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public static setDialogPhotoTitle(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/DialogObject;->setDialogPhotoTitle(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 270
    invoke-static {p0, p0, p1}, Lorg/telegram/messenger/DialogObject;->setDialogPhotoTitle(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static similarity(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    .line 345
    :cond_1
    invoke-static {p0, p1}, Lorg/telegram/messenger/DialogObject;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sub-int p0, v0, p0

    int-to-double p0, p0

    int-to-double v0, v0

    div-double/2addr p0, v0

    return-wide p0
.end method
