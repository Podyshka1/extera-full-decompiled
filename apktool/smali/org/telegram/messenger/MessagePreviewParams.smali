.class public Lorg/telegram/messenger/MessagePreviewParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagePreviewParams$Messages;,
        Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;
    }
.end annotation


# instance fields
.field public currentLink:Landroid/text/style/CharacterStyle;

.field public forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field public hasCaption:Z

.field public hasMedia:Z

.field public hasSecretMessages:Z

.field public hasSenders:Z

.field public hideCaption:Z

.field public hideForwardSendersName:Z

.field public isSecret:Z

.field public isVideo:Z

.field public linkMedia:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field public monoforum:Z

.field public multipleUsers:Z

.field public noforwards:Z

.field private previewView:Lorg/telegram/ui/Components/MessagePreviewView;

.field public quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public quoteEnd:I

.field public quoteStart:I

.field public replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field public singleLink:Z

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public webpagePhoto:Z

.field public webpageSmall:Z

.field public webpageTop:Z

.field public willSeeSenders:Z


# direct methods
.method static bridge synthetic -$$Nest$mtoPreviewMessage(Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagePreviewParams;->toPreviewMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsingletonArrayList(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/MessagePreviewParams;->singletonArrayList(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 207
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    .line 208
    iput-boolean p3, p0, Lorg/telegram/messenger/MessagePreviewParams;->monoforum:Z

    return-void
.end method

.method public static areUrlsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 376
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 378
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 380
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagePreviewParams;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagePreviewParams;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 385
    const-string p0, ""

    return-object p0

    .line 386
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static singletonArrayList(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private toPreviewMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;
    .locals 11

    .line 448
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const/4 v7, 0x1

    if-eq p3, v7, :cond_0

    .line 450
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 454
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 455
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iput-wide v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 456
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 457
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 458
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 459
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 460
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const/4 v8, 0x0

    .line 461
    iput v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 462
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 463
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 466
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    iput-boolean p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz p2, :cond_3

    .line 468
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 469
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 471
    :cond_3
    iput-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 472
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 473
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 474
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 475
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    .line 476
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    .line 477
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_4

    .line 478
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 481
    :cond_4
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 482
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    if-nez p3, :cond_a

    .line 486
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    .line 487
    iget-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez p2, :cond_9

    .line 488
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_6

    .line 490
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result p2

    if-nez p2, :cond_5

    .line 491
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    goto :goto_2

    .line 493
    :cond_5
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    goto :goto_2

    .line 495
    :cond_6
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v9, 0x0

    cmp-long v2, v4, v9

    if-eqz v2, :cond_7

    iget-wide v9, p2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    cmp-long p2, v9, v0

    if-nez p2, :cond_7

    cmp-long p2, v4, v0

    if-eqz p2, :cond_9

    .line 496
    :cond_7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    .line 497
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 498
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result p2

    if-nez p2, :cond_8

    .line 499
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    goto :goto_2

    .line 501
    :cond_8
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_a

    .line 506
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 507
    iget p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 511
    :cond_a
    new-instance v0, Lorg/telegram/messenger/MessagePreviewParams$1;

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagePreviewParams$1;-><init>(Lorg/telegram/messenger/MessagePreviewParams;ILorg/telegram/tgnet/TLRPC$Message;ZZI)V

    if-nez v6, :cond_b

    move v8, v7

    .line 528
    :cond_b
    iput-boolean v8, v0, Lorg/telegram/messenger/MessageObject;->previewForward:Z

    .line 530
    iput-boolean v7, v0, Lorg/telegram/messenger/MessageObject;->preview:Z

    return-object v0
.end method


# virtual methods
.method public attach(Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->previewView:Lorg/telegram/ui/Components/MessagePreviewView;

    return-void
.end method

.method public checkCurrentLink(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    check-cast p1, Landroid/text/Spanned;

    .line 337
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 339
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 340
    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagePreviewParams;->areUrlsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    aget-object p1, p1, v2

    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkEdits(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 560
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_1

    .line 561
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    iput-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move v0, v1

    .line 567
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_2

    .line 568
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 570
    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 574
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->previewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz p1, :cond_3

    .line 575
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->updateAll()V

    :cond_3
    return-void
.end method

.method public getForwardedMessagesCount()I
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 444
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public hasLink(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 351
    :try_start_0
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 353
    :try_start_1
    invoke-static {p1, v1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->addLinksSafe(Landroid/text/Spannable;IZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 355
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 357
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    move v2, v0

    .line 359
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 360
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/telegram/messenger/MessagePreviewParams;->areUrlsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 365
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateForward(Ljava/util/ArrayList;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    const/4 v8, 0x0

    .line 390
    iput-boolean v8, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    .line 391
    iput-boolean v8, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    .line 392
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    .line 393
    iput-boolean v8, p0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    const/4 v9, 0x0

    if-eqz p1, :cond_a

    .line 396
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v8

    .line 397
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x1

    if-ge v0, v2, :cond_2

    .line 398
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 399
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    iput-boolean v11, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    .line 402
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v3, :cond_1

    .line 403
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_1

    .line 405
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    new-instance v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    move-object v7, v3

    goto :goto_1

    :cond_3
    move-object v7, v9

    :goto_1
    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 412
    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    iput-object v9, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 416
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_8

    .line 418
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 420
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 421
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_4

    .line 423
    :cond_5
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 424
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 425
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_3
    neg-long v2, v2

    goto :goto_4

    .line 427
    :cond_6
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_3

    .line 430
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 431
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 434
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-le v0, v11, :cond_9

    .line 435
    iput-boolean v11, p0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    :cond_9
    return-void

    .line 438
    :cond_a
    iput-object v9, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    return-void
.end method

.method public updateLink(ILorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    .line 246
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    const/4 v1, 0x1

    .line 247
    iput-boolean v1, p0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    .line 248
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eq v2, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 249
    :goto_0
    iput-object p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 250
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v3, :cond_1

    .line 251
    iput-object v4, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto/16 :goto_b

    :cond_1
    if-nez p3, :cond_2

    .line 254
    const-string p3, ""

    .line 257
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v1

    :goto_2
    if-nez v3, :cond_5

    if-eqz p6, :cond_5

    .line 258
    iget-object v3, p6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_5

    .line 259
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    .line 260
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    if-eqz v3, :cond_5

    .line 261
    iput-boolean v1, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    .line 265
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 266
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {v5, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 267
    new-array p3, v1, [Ljava/lang/CharSequence;

    aput-object v5, p3, v0

    .line 268
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 269
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 270
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 271
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 272
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, p3, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 273
    aget-object p3, p3, v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 274
    iget-boolean p3, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    if-eqz p2, :cond_7

    .line 276
    iget p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 p3, p3, 0x200

    iput p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 277
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 278
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 279
    iget-boolean v5, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 v6, v5, 0x1

    iput-boolean v6, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 280
    iput-boolean v5, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    .line 281
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p3, :cond_6

    move p3, v1

    goto :goto_3

    :cond_6
    move p3, v0

    :goto_3
    iput-boolean p3, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    .line 282
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    goto :goto_4

    .line 284
    :cond_7
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    .line 286
    :goto_4
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 287
    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    if-eqz p4, :cond_8

    .line 290
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 291
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz p5, :cond_8

    .line 293
    invoke-virtual {p5}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    .line 294
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 296
    invoke-virtual {p5}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getFilteredEntities()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    .line 297
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    .line 298
    iget p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 303
    :cond_8
    new-instance p2, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p4, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p4, p1, v3, v1, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    const/4 p1, 0x2

    invoke-direct {p2, p0, p3, p1, p4}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILorg/telegram/messenger/MessageObject;)V

    iput-object p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 304
    iget-object p1, p2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 305
    iput-object v4, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto/16 :goto_b

    .line 307
    :cond_9
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 308
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of p3, p2, Landroid/text/Spanned;

    const-class p4, Landroid/text/style/URLSpan;

    if-eqz p3, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 309
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object p3, p2

    check-cast p3, Landroid/text/Spanned;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p3, v0, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_b

    .line 310
    array-length p2, p2

    if-gt p2, v1, :cond_a

    goto :goto_5

    :cond_a
    move p2, v0

    goto :goto_6

    :cond_b
    :goto_5
    move p2, v1

    :goto_6
    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    goto :goto_9

    .line 311
    :cond_c
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of p3, p2, Landroid/text/Spanned;

    if-eqz p3, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 312
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spanned;

    iget-object p3, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p2, v0, p3, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_e

    .line 313
    array-length p2, p2

    if-gt p2, v1, :cond_d

    goto :goto_7

    :cond_d
    move p2, v0

    goto :goto_8

    :cond_e
    :goto_7
    move p2, v1

    :goto_8
    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    .line 315
    :cond_f
    :goto_9
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasLinkMediaToMakeSmall()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v2, :cond_12

    if-eqz p6, :cond_12

    .line 316
    iget-object p2, p6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_12

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_12

    .line 317
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    if-nez p2, :cond_10

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isLinkMediaSmall()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    if-nez p2, :cond_11

    :cond_10
    move v0, v1

    :cond_11
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    goto :goto_a

    :cond_12
    if-eqz v2, :cond_13

    .line 319
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isLinkMediaSmall()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    .line 321
    :cond_13
    :goto_a
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_14

    .line 322
    iget-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 p3, p2, 0x1

    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 323
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    .line 328
    :cond_14
    :goto_b
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->previewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz p1, :cond_15

    .line 329
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->updateLink()V

    :cond_15
    return-void
.end method

.method public updateLinkInvertMedia(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    return-void
.end method

.method public updateReply(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;JLorg/telegram/ui/ChatActivity$ReplyQuote;)V
    .locals 10

    .line 212
    iget-boolean v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    const/4 v8, 0x0

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    iget v3, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    const/16 v4, 0x16

    if-eq v3, v4, :cond_1

    const/16 v4, 0x15

    if-eq v3, v4, :cond_1

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    const/16 v4, 0x19

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object v9, p5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v8

    move-object v9, v0

    :goto_1
    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_5

    if-eqz v9, :cond_4

    goto :goto_3

    .line 235
    :cond_4
    iput-object v8, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 236
    iput-object v8, p0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    return-void

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 221
    new-instance v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_6

    :cond_6
    move-object v2, v0

    .line 223
    new-instance v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_7

    :goto_4
    move-object v4, v2

    goto :goto_5

    :cond_7
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    goto :goto_4

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILorg/telegram/messenger/MessageObject;J)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 225
    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 226
    iput-object v9, p0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v9, :cond_8

    .line 228
    iget v0, v9, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    iput v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 229
    iget v0, v9, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    iput v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    :cond_8
    return-void

    .line 232
    :cond_9
    iput-object v8, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    return-void
.end method
