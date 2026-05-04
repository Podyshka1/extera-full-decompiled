.class public Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation


# instance fields
.field private botForumStartThreadRow:I

.field private botInfoEmptyRow:I

.field private botInfoRow:I

.field public filteredEndReached:Z

.field public filteredMessages:Ljava/util/ArrayList;

.field public frozenMessages:Ljava/util/ArrayList;

.field private hintRow:I

.field private isBot:Z

.field public isFiltered:Z

.field public isFrozen:Z

.field private loadingDownRow:I

.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field public messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private userInfoRow:I

.field private userNameTimeRow:I

.field private userPhotoTimeRow:I


# direct methods
.method public static synthetic $r8$lambda$I7SdminFf1flZZIJ4_3Pd7YRK78()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$LeaEl2mf9MxIDObL0AGETu7g_AY(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->lambda$onCreateViewHolder$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbotInfoRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethintRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBot(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingDownRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingUpRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessagesEndRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuserInfoRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuserNameTimeRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuserPhotoTimeRow(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateRowsInternal(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 1

    .line 36516
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;-><init>()V

    const/4 v0, -0x5

    .line 36485
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    .line 36486
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 36487
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    .line 36488
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    .line 36489
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 36490
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 36491
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    .line 36492
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    .line 36494
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    .line 36510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    .line 36514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    .line 36517
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    .line 36518
    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    .line 36519
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Ljava/lang/String;)V
    .locals 9

    .line 37056
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37057
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void

    .line 37058
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v4, p1

    goto :goto_0

    .line 37062
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37063
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V

    .line 37064
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_3

    .line 37065
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(Z)V

    :cond_3
    return-void

    .line 37068
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mprocessExternalUrl(Lorg/telegram/ui/ChatActivity;ILjava/lang/String;Landroid/text/style/CharacterStyle;Lorg/telegram/ui/Cells/ChatMessageCell;ZZ)V

    return-void

    .line 37059
    :goto_0
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 37060
    invoke-virtual {p1, v4}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 37061
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private updateRowsInternal()V
    .locals 9

    const/4 v0, 0x0

    .line 36566
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 36568
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v1, :cond_0

    .line 36569
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    .line 36570
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v1, :cond_1

    .line 36571
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    goto :goto_0

    .line 36573
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 36575
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, -0x5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v2, :cond_2

    .line 36576
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    goto :goto_1

    .line 36578
    :cond_2
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    .line 36580
    :goto_1
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 36581
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    .line 36582
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    .line 36583
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    .line 36584
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    .line 36586
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethasSendingMessagesInBotForum(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 36587
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    .line 36590
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 36591
    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforwardEndReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforwardEndReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethideForwardEndReached(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 36592
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    goto :goto_2

    .line 36594
    :cond_5
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 36596
    :goto_2
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 36597
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 36598
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 36600
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Cells/UserInfoCell;->isEmpty(Lorg/telegram/tgnet/TLRPC$PeerSettings;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_a

    .line 36601
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v1

    .line 36602
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PeerSettings;->name_change_date:I

    if-eqz v2, :cond_7

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$PeerSettings;->photo_change_date:I

    if-eqz v7, :cond_7

    if-ge v2, v7, :cond_6

    .line 36604
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    add-int/lit8 v1, v1, 0x2

    .line 36605
    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    goto :goto_3

    .line 36607
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    add-int/lit8 v1, v1, 0x2

    .line 36608
    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 36612
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    .line 36614
    :cond_8
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PeerSettings;->photo_change_date:I

    if-eqz v1, :cond_9

    .line 36615
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    .line 36618
    :cond_9
    :goto_3
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    goto :goto_4

    .line 36619
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_c

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_c

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_c

    .line 36620
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethasSendingMessagesInBotForum(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 36621
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 36625
    :cond_c
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Business/QuickRepliesController;->isSpecial(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 36626
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    .line 36629
    :cond_d
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v1, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredEndReached:Z

    if-nez v0, :cond_10

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_10

    :cond_f
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->isComments:Z

    if-nez v1, :cond_11

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_10

    goto :goto_5

    .line 36632
    :cond_10
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    return-void

    .line 36630
    :cond_11
    :goto_5
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    return-void

    .line 36635
    :cond_12
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 36636
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 36637
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 36638
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 36640
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Cells/UserInfoCell;->isEmpty(Lorg/telegram/tgnet/TLRPC$PeerSettings;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_13

    .line 36641
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    return-void

    .line 36642
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_15

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_15

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_15

    .line 36643
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethasSendingMessagesInBotForum(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 36644
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    :cond_15
    return-void
.end method


# virtual methods
.method public checkRemoveBotForumRowsStartThreadRow()V
    .locals 6

    .line 36524
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 36525
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputhasSendingMessagesInBotForum(Lorg/telegram/ui/ChatActivity;Z)V

    .line 36526
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ltz v0, :cond_0

    .line 36527
    invoke-super {p0, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRemoved(I)V

    move v1, v2

    .line 36530
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    if-ltz v0, :cond_1

    .line 36531
    invoke-super {p0, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRemoved(I)V

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 36536
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 5

    const/4 v0, -0x5

    .line 36652
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    .line 36653
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isClearingHistory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36654
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotInfo(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotInfo(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotInfo(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotInfo(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36655
    :cond_1
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2

    .line 36660
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 5

    .line 36665
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isClearingHistory()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 36666
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne p1, v0, :cond_0

    return-wide v1

    .line 36671
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v0, :cond_1

    .line 36672
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    .line 36673
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v0, :cond_2

    .line 36674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    goto :goto_0

    .line 36676
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 36679
    :goto_0
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v3, :cond_3

    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v4, :cond_3

    sub-int/2addr p1, v3

    .line 36680
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->stableId:I

    int-to-long v0, p1

    return-wide v0

    .line 36681
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-eq p1, v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 36683
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x2

    return-wide v0

    .line 36685
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x3

    return-wide v0

    .line 36687
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x4

    return-wide v0

    .line 36689
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x6

    return-wide v0

    .line 36691
    :cond_8
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    if-ne p1, v0, :cond_9

    const-wide/16 v0, 0x7

    return-wide v0

    .line 36693
    :cond_9
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0x8

    return-wide v0

    .line 36695
    :cond_a
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0x9

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x5

    return-wide v0

    :cond_c
    :goto_1
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 37662
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isClearingHistory()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 37663
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne p1, v0, :cond_0

    return v1

    .line 37667
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 37670
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_4

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v2, :cond_4

    .line 37672
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v1, :cond_2

    .line 37673
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    .line 37674
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v1, :cond_3

    .line 37675
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    goto :goto_0

    .line 37677
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    :goto_0
    sub-int/2addr p1, v0

    .line 37679
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->contentType:I

    return p1

    .line 37680
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne p1, v0, :cond_5

    return v1

    .line 37682
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 37684
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    if-ne p1, v0, :cond_7

    goto :goto_1

    .line 37686
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x8

    return p1

    :cond_8
    const/4 p1, 0x4

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x7

    return p1
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1

    .line 36500
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v0, :cond_0

    .line 36501
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    return-object v0

    .line 36502
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v0, :cond_1

    .line 36503
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    return-object v0

    .line 36505
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public invalidateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 37858
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 37860
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 37861
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_0

    .line 37862
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 37863
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 37864
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 37943
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 5

    .line 37908
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 37909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify data set changed fragmentOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 37911
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    if-eqz v0, :cond_1

    .line 37912
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 37913
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 37916
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 37918
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 37920
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37922
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 37925
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_2
    const/4 v1, 0x0

    if-ltz p1, :cond_5

    .line 37926
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 37927
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 37930
    :cond_3
    iget-object p1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-nez v2, :cond_4

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz p1, :cond_5

    :cond_4
    move p1, v0

    goto :goto_3

    :cond_5
    move p1, v1

    .line 37935
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v2

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v0, v1, v0

    if-nez v0, :cond_7

    :cond_6
    if-eqz p1, :cond_8

    .line 37936
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckDispatchHideSkeletons(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_8
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 2

    .line 37948
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 37949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 37951
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetignoreItemAnimation(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 37953
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 37954
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_1

    .line 37952
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 37956
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 37958
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37960
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 2

    .line 37984
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 37985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item inserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 37987
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37988
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 37989
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 37990
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 37992
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 37994
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37996
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 2

    .line 38002
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 38003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item moved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 38005
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38006
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 38007
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 38008
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38010
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 38012
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38014
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2

    .line 37966
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 37967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item range changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 37969
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37970
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 37971
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 37972
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 37974
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 37976
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37978
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 7

    .line 38020
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 38021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item range inserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 38023
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38024
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 38025
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 38026
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38028
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    if-lez p2, :cond_5

    add-int v1, p1, p2

    .line 38031
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt v1, v2, :cond_5

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge v1, v3, :cond_5

    .line 38032
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 38033
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 38034
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-ne v1, v0, :cond_5

    .line 38035
    :cond_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 38040
    :cond_5
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38042
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2

    .line 38086
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 38087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item range removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 38089
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38090
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 38091
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 38092
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38094
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 38096
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38098
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 2

    .line 38048
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 38049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 38051
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38052
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 38053
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 38054
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38056
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 38058
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38060
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRemoved(IZ)V
    .locals 2

    .line 38065
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 38066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, " with thanos effect"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 38068
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38069
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_1

    .line 38070
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 38071
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 38073
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    if-ne p2, v0, :cond_4

    .line 38074
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->prepareThanos(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 38076
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 38078
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38080
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 37091
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_45

    .line 37102
    :cond_1
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    if-ne v2, v3, :cond_2

    .line 37103
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/BotAskCell;

    .line 37104
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/BotAskCell;->setDialogId(J)V

    return-void

    .line 37105
    :cond_2
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    if-ne v2, v3, :cond_4

    .line 37106
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/UserInfoCell;

    .line 37107
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v3, :cond_3

    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    .line 37108
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserInfoCell;->set(JLorg/telegram/tgnet/TLRPC$PeerSettings;)V

    return-void

    .line 37109
    :cond_4
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    if-eq v2, v3, :cond_74

    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne v2, v3, :cond_5

    goto/16 :goto_43

    .line 37112
    :cond_5
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    if-ne v2, v3, :cond_7

    .line 37113
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_42

    .line 37115
    :cond_6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 37116
    sget v3, Lorg/telegram/messenger/R$string;->ContactInfoUserUpdatedName:I

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerSettings;->name_change_date:I

    sub-int/2addr v4, v2

    int-to-long v7, v4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    return-void

    .line 37117
    :cond_7
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    if-ne v2, v3, :cond_9

    .line 37118
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeerSettings(J)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_42

    .line 37120
    :cond_8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 37121
    sget v3, Lorg/telegram/messenger/R$string;->ContactInfoUserUpdatedPhoto:I

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerSettings;->photo_change_date:I

    sub-int/2addr v4, v2

    int-to-long v7, v4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    return-void

    .line 37122
    :cond_9
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-ne v2, v3, :cond_d

    .line 37123
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 37124
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateHint2MessageObject(Lorg/telegram/ui/ChatActivity;)V

    .line 37125
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethint2MessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 37126
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ne v2, v9, :cond_a

    .line 37127
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesProfileHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 37128
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ne v2, v8, :cond_b

    .line 37129
    sget v2, Lorg/telegram/messenger/R$string;->BusinessRepliesHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    .line 37131
    :cond_b
    :goto_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 37132
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    :cond_c
    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    return-void

    .line 37133
    :cond_d
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt v2, v3, :cond_73

    iget v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge v2, v10, :cond_73

    .line 37135
    iget-boolean v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v10, :cond_e

    .line 37136
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_3

    .line 37137
    :cond_e
    iget-boolean v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v10, :cond_f

    .line 37138
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    goto :goto_3

    .line 37140
    :cond_f
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    :goto_3
    sub-int v3, v2, v3

    .line 37143
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 37144
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37146
    instance-of v11, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v13, 0x2

    if-eqz v11, :cond_6a

    .line 37147
    move-object v11, v3

    check-cast v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 37148
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    .line 37149
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v14, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v15, 0x7

    if-nez v14, :cond_11

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v15, :cond_10

    goto :goto_4

    :cond_10
    move v7, v6

    goto :goto_5

    :cond_11
    :goto_4
    move v7, v5

    :goto_5
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 37150
    invoke-virtual {v11, v5, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSponsoredMessageVisible(ZZ)V

    .line 37151
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isBotForum:Z

    .line 37152
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isReportChat:Z

    .line 37153
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v9, :cond_12

    move v7, v5

    goto :goto_6

    :cond_12
    move v7, v6

    :goto_6
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    .line 37154
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v9, :cond_13

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v7, v7, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v7, :cond_13

    move v7, v5

    goto :goto_7

    :cond_13
    move v7, v6

    :goto_7
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedPreviewChat:Z

    .line 37155
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_14

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_14

    move v9, v5

    goto :goto_8

    :cond_14
    move v9, v6

    :goto_8
    iput-boolean v9, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    .line 37156
    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_15

    move v7, v5

    goto :goto_9

    :cond_15
    move v7, v6

    :goto_9
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isMegagroup:Z

    .line 37157
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    .line 37158
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isMonoForum:Z

    .line 37159
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v9, v7, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v9, :cond_16

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    cmp-long v7, v16, v18

    if-nez v7, :cond_16

    move v7, v5

    goto :goto_a

    :cond_16
    move v7, v6

    :goto_a
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isForumGeneral:Z

    .line 37160
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-nez v7, :cond_17

    iget-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    if-eqz v7, :cond_18

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v7, v7, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v7, :cond_18

    :cond_17
    iget-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isMonoForum:Z

    if-nez v7, :cond_18

    move v7, v5

    goto :goto_b

    :cond_18
    move v7, v6

    :goto_b
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    .line 37161
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-eq v7, v5, :cond_19

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz v9, :cond_19

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_19

    move v7, v5

    goto :goto_c

    :cond_19
    move v7, v6

    :goto_c
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->hasDiscussion:Z

    .line 37162
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    if-eqz v3, :cond_1b

    iget-object v7, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    move v7, v5

    goto :goto_d

    :cond_1b
    move v7, v6

    :goto_d
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinned:Z

    .line 37163
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-eq v7, v5, :cond_1c

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_1c

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    goto :goto_e

    :cond_1c
    move-wide/from16 v8, v18

    :goto_e
    iput-wide v8, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->linkedChatId:J

    .line 37164
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v15, :cond_1d

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchType(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v5, :cond_1d

    .line 37165
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    goto :goto_f

    .line 37167
    :cond_1d
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    .line 37169
    :goto_f
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v13, :cond_1e

    move v7, v5

    goto :goto_10

    :cond_1e
    move v7, v6

    :goto_10
    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedChat:Z

    .line 37170
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isAllChats:Z

    .line 37171
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenued:Z

    .line 37172
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenuEnabled(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    iput-boolean v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    .line 37173
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v7

    iput v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuAlpha:F

    .line 37174
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    iput v7, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuWidth:I

    .line 37180
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 37181
    new-instance v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v11, v7}, Lorg/telegram/messenger/AndroidUtilities;->doOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1f
    add-int/lit8 v7, v2, 0x2

    if-eqz v3, :cond_26

    .line 37190
    invoke-virtual {v3, v12}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    if-eqz v8, :cond_25

    .line 37192
    iget-boolean v13, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-eqz v13, :cond_20

    .line 37193
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v9, v2

    add-int/2addr v9, v5

    .line 37194
    iget-object v13, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v2, v13

    iget-object v14, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v8, v13

    move v4, v6

    move v14, v4

    move/from16 v16, v14

    move/from16 v17, v8

    move/from16 v8, v16

    goto/16 :goto_15

    .line 37196
    :cond_20
    iget v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_22

    .line 37197
    iget-boolean v13, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v13, :cond_21

    .line 37198
    iget-object v13, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v2, v13

    iget-object v14, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v13, v14

    :goto_11
    move v14, v6

    move/from16 v16, v14

    goto :goto_12

    .line 37200
    :cond_21
    iget-object v13, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v13, v2

    add-int/2addr v13, v5

    goto :goto_11

    :cond_22
    move v14, v5

    move/from16 v16, v14

    const/16 v13, -0x64

    .line 37207
    :goto_12
    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_24

    .line 37208
    iget-boolean v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v9, :cond_23

    .line 37209
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v8, v2

    add-int/lit8 v9, v8, 0x1

    :goto_13
    move v4, v6

    move v8, v4

    move/from16 v17, v9

    move v9, v13

    goto :goto_15

    .line 37211
    :cond_23
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v2, v9

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v9, v4

    goto :goto_13

    :cond_24
    move v4, v5

    move v8, v4

    move v9, v13

    :goto_14
    const/16 v17, -0x64

    goto :goto_15

    :cond_25
    move v4, v6

    move v8, v4

    move v14, v8

    move/from16 v16, v14

    const/16 v9, -0x64

    goto :goto_14

    :goto_15
    move/from16 v13, v17

    goto :goto_16

    :cond_26
    add-int/lit8 v17, v2, -0x1

    add-int/lit8 v9, v2, 0x1

    move v4, v6

    move v8, v4

    move v14, v8

    move/from16 v16, v14

    goto :goto_15

    .line 37227
    :goto_16
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v6

    .line 37228
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v5

    .line 37229
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    .line 37231
    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v15, 0x12c

    if-nez v7, :cond_34

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-ne v6, v7, :cond_34

    .line 37232
    iget v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v13, v6

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 37233
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-ne v7, v8, :cond_27

    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v15, :cond_27

    const/4 v8, 0x1

    goto :goto_17

    :cond_27
    const/4 v8, 0x0

    :goto_17
    if-eqz v8, :cond_32

    .line 37235
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move v13, v8

    if-eqz v7, :cond_29

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J

    cmp-long v7, v7, v18

    if-lez v7, :cond_29

    :cond_28
    :goto_18
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 37237
    :cond_29
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-nez v7, :cond_30

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-eqz v7, :cond_2a

    goto/16 :goto_1c

    .line 37253
    :cond_2a
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_2c

    .line 37254
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v6

    .line 37255
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v20

    cmp-long v8, v6, v20

    if-nez v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_19

    :cond_2b
    const/4 v8, 0x0

    :goto_19
    if-nez v4, :cond_34

    if-eqz v8, :cond_34

    cmp-long v6, v6, v18

    if-gez v6, :cond_34

    .line 37256
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_34

    goto :goto_18

    .line 37259
    :cond_2c
    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_2e

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_2d

    goto :goto_1b

    .line 37265
    :cond_2d
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_33

    .line 37266
    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v20

    cmp-long v6, v7, v20

    if-nez v6, :cond_28

    :goto_1a
    const/4 v8, 0x1

    goto/16 :goto_1d

    .line 37260
    :cond_2e
    :goto_1b
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v7

    if-eqz v7, :cond_2f

    goto :goto_18

    .line 37263
    :cond_2f
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v6

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v20

    cmp-long v6, v6, v20

    if-nez v6, :cond_28

    goto :goto_1a

    .line 37238
    :cond_30
    :goto_1c
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 37239
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v15, :cond_28

    .line 37240
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v7, :cond_31

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v8, :cond_31

    .line 37241
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1d

    .line 37242
    :cond_31
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_28

    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v7, :cond_28

    .line 37243
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v20

    cmp-long v6, v6, v20

    if-nez v6, :cond_28

    goto :goto_1a

    :cond_32
    move v13, v8

    :cond_33
    move v8, v13

    .line 37271
    :cond_34
    :goto_1d
    iget v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v7, v9, v6

    if-ltz v7, :cond_39

    sub-int v6, v9, v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_39

    .line 37272
    iget v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v6, v9, v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_36

    .line 37273
    iget-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v7, :cond_36

    add-int/lit8 v6, v9, 0x1

    .line 37275
    iget v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v13, v6, v7

    if-ltz v13, :cond_35

    sub-int v7, v6, v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_35

    .line 37276
    iget v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v6, v7

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    goto :goto_1e

    :cond_35
    const/4 v6, 0x0

    :cond_36
    :goto_1e
    if-eqz v6, :cond_38

    .line 37279
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v6

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v20

    cmp-long v6, v6, v20

    if-eqz v6, :cond_37

    goto :goto_1f

    :cond_37
    const/4 v6, 0x0

    goto :goto_20

    :cond_38
    :goto_1f
    const/4 v6, 0x1

    :goto_20
    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    goto :goto_21

    :cond_39
    move/from16 v6, v16

    const/16 v16, 0x1

    .line 37284
    :goto_21
    iget v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-ne v2, v7, :cond_3a

    const/16 v17, 0x1

    :goto_22
    const/4 v2, 0x7

    goto :goto_23

    :cond_3a
    const/16 v17, 0x0

    goto :goto_22

    .line 37286
    :goto_23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-ne v5, v7, :cond_4b

    .line 37287
    iget v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v9, v5

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 37288
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v6, :cond_3b

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    if-ne v6, v7, :cond_3b

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v15, :cond_3b

    const/4 v6, 0x1

    goto :goto_24

    :cond_3b
    const/4 v6, 0x0

    :goto_24
    if-eqz v6, :cond_4b

    .line 37290
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-eqz v7, :cond_3d

    :cond_3c
    move-object/from16 v20, v3

    move v3, v2

    goto/16 :goto_2c

    .line 37306
    :cond_3d
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_44

    .line 37307
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v6

    .line 37308
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-nez v9, :cond_3e

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v9

    if-nez v9, :cond_3e

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v9

    if-nez v9, :cond_3e

    const/4 v9, 0x1

    goto :goto_25

    :cond_3e
    const/4 v9, 0x0

    :goto_25
    if-nez v14, :cond_3f

    if-eqz v9, :cond_3f

    cmp-long v6, v6, v18

    if-gez v6, :cond_3f

    .line 37309
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_3f

    const/4 v9, 0x0

    :cond_3f
    if-eqz v9, :cond_42

    .line 37312
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForumInViewAsMessagesMode()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 37313
    iget-object v6, v12, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v6, :cond_40

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v6

    goto :goto_26

    :cond_40
    const/4 v10, 0x1

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v6, v6

    .line 37314
    :goto_26
    iget-object v13, v5, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v13, :cond_41

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v13, v5, v10}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v20

    move-wide/from16 v22, v20

    move-object/from16 v20, v3

    move-wide/from16 v2, v22

    goto :goto_27

    :cond_41
    iget v5, v13, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    move-object/from16 v20, v3

    int-to-long v2, v5

    :goto_27
    cmp-long v2, v6, v2

    if-eqz v2, :cond_43

    const/4 v9, 0x0

    goto :goto_28

    :cond_42
    move-object/from16 v20, v3

    :cond_43
    :goto_28
    move v2, v9

    const/4 v3, 0x7

    goto/16 :goto_2e

    :cond_44
    move-object/from16 v20, v3

    .line 37319
    iget-object v2, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_45
    const/4 v3, 0x7

    goto :goto_2a

    .line 37325
    :cond_46
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4a

    .line 37326
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    cmp-long v2, v6, v9

    if-nez v2, :cond_48

    :goto_29
    const/4 v2, 0x1

    goto/16 :goto_2e

    .line 37320
    :goto_2a
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_2b

    .line 37323
    :cond_47
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v5

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v9

    cmp-long v2, v5, v9

    if-nez v2, :cond_48

    goto :goto_29

    :cond_48
    :goto_2b
    const/4 v2, 0x0

    goto :goto_2e

    .line 37291
    :goto_2c
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 37292
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v15, :cond_48

    .line 37293
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v5, :cond_49

    iget-object v6, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v6, :cond_49

    .line 37294
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2e

    .line 37295
    :cond_49
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_48

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_48

    .line 37296
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    cmp-long v2, v5, v9

    if-nez v2, :cond_48

    goto :goto_29

    :cond_4a
    :goto_2d
    move v2, v6

    goto :goto_2e

    :cond_4b
    move-object/from16 v20, v3

    move v3, v2

    goto :goto_2d

    .line 37330
    :goto_2e
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_4d

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    cmp-long v5, v5, v18

    if-gtz v5, :cond_4d

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v5, :cond_4d

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v5, :cond_4d

    if-nez v14, :cond_4c

    const/4 v2, 0x0

    :cond_4c
    if-nez v4, :cond_4d

    const/4 v8, 0x0

    :cond_4d
    if-nez v14, :cond_4e

    .line 37338
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_4e

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J

    cmp-long v4, v4, v18

    if-lez v4, :cond_4e

    const/4 v2, 0x0

    :cond_4e
    const/4 v4, 0x0

    .line 37342
    invoke-virtual {v12, v4}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    if-eqz v20, :cond_4f

    move v5, v4

    move-object/from16 v13, v20

    .line 37344
    :goto_2f
    iget-object v6, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_50

    .line 37345
    iget-object v6, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_2f

    :cond_4f
    move-object/from16 v13, v20

    .line 37348
    :cond_50
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->reversed:Z

    if-eqz v4, :cond_52

    if-eqz v13, :cond_51

    const/4 v10, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_31

    :cond_51
    move v14, v2

    move v15, v8

    :goto_30
    const/4 v10, 0x1

    goto :goto_31

    :cond_52
    move v15, v2

    move v14, v8

    goto :goto_30

    .line 37358
    :goto_31
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->setShowTopic(Z)V

    move v2, v3

    .line 37359
    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V

    .line 37360
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_32

    :cond_53
    const/4 v3, 0x0

    :goto_32
    invoke-virtual {v11, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSpoilersSuppressed(Z)V

    .line 37361
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_54

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-ne v3, v5, :cond_54

    const/4 v3, 0x1

    goto :goto_33

    :cond_54
    const/4 v3, 0x0

    :goto_33
    invoke-virtual {v11, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 37362
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    if-eqz v3, :cond_58

    .line 37363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 37364
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    iget v7, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteOffset:I

    iget-boolean v8, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    if-nez v8, :cond_56

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethighlightMessageQuoteFirstTime(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v13, 0xc8

    cmp-long v5, v8, v13

    if-gez v5, :cond_55

    goto :goto_35

    :cond_55
    const/4 v5, 0x0

    :goto_34
    const/4 v10, 0x1

    goto :goto_36

    :cond_56
    :goto_35
    const/4 v5, 0x1

    goto :goto_34

    :goto_36
    invoke-virtual {v11, v6, v10, v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;ZIZ)Z

    .line 37365
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v6, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    if-eqz v6, :cond_57

    .line 37366
    invoke-static {v5, v2, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputhighlightMessageQuoteFirstTime(Lorg/telegram/ui/ChatActivity;J)V

    .line 37368
    :cond_57
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    goto :goto_37

    .line 37369
    :cond_58
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->highlightTaskId:Ljava/lang/Integer;

    if-eqz v3, :cond_59

    .line 37370
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedTask(I)Z

    goto :goto_37

    .line 37371
    :cond_59
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-ne v3, v2, :cond_5a

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 37372
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    .line 37374
    :cond_5a
    :goto_37
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v3, v4, :cond_5b

    .line 37375
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mstartMessageUnselect(Lorg/telegram/ui/ChatActivity;)V

    .line 37378
    :cond_5b
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_67

    .line 37380
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lorg/telegram/ui/Components/InstantCameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 37382
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcloseInstantCameraAnimation(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 37383
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcloseInstantCameraAnimation(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 37384
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcloseInstantCameraAnimation(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)V

    .line 37386
    :cond_5c
    invoke-virtual {v11}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;

    invoke-direct {v4, v0, v11}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_3d

    .line 37475
    :cond_5d
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z

    move-result v3

    if-eqz v3, :cond_5f

    :cond_5e
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    if-eqz v3, :cond_66

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject$SendAnimationData;->fromPreview:Z

    if-eqz v3, :cond_66

    .line 37477
    :cond_5f
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject$SendAnimationData;->fromPreview:Z

    if-eqz v3, :cond_65

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_65

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v4, :cond_65

    .line 37478
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_63

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v4

    goto :goto_38

    :cond_60
    const/4 v4, 0x0

    :goto_38
    add-int/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v4, :cond_61

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatSearchTabs;->getCurrentHeight()I

    move-result v4

    goto :goto_39

    :cond_61
    const/4 v4, 0x0

    :goto_39
    add-int/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_62

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_3a

    :cond_62
    const/4 v4, 0x0

    :goto_3a
    add-int/2addr v3, v4

    goto :goto_3b

    :cond_63
    const/4 v3, 0x0

    :goto_3b
    int-to-float v3, v3

    .line 37479
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->paddingTopHeight:F

    add-float/2addr v3, v5

    .line 37480
    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v4, :cond_64

    const/4 v4, 0x0

    goto :goto_3c

    :cond_64
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 37481
    :goto_3c
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v5, v11, v3, v4}, Lorg/telegram/ui/MessageSendPreview;->dismissInto(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    .line 37482
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    goto :goto_3d

    .line 37484
    :cond_65
    invoke-virtual {v11}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    invoke-direct {v4, v0, v11}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_3d

    .line 37602
    :cond_66
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v3

    if-nez v3, :cond_67

    .line 37603
    :goto_3d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37604
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->startMessageTransition()V

    .line 37605
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideTopView(Z)V

    .line 37608
    :cond_67
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatingDocuments(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatingDocuments(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 37609
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatingDocuments(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37610
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 37611
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgreetingsViewContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatGreetingsView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onGreetingStickerTransition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/ChatGreetingsView;)V

    .line 37614
    :cond_68
    iget-boolean v1, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->makeVisibleAfterChange:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    .line 37615
    iput-boolean v3, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->makeVisibleAfterChange:Z

    .line 37616
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37618
    :cond_69
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v11, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowBotMessageHint(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void

    :cond_6a
    const/4 v4, 0x0

    .line 37619
    instance-of v1, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_72

    if-eqz v12, :cond_6c

    .line 37621
    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v1, :cond_6c

    :cond_6b
    const/4 v1, 0x0

    goto :goto_3f

    :cond_6c
    add-int/lit8 v1, v2, 0x1

    .line 37623
    iget v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v6, v1, v5

    if-ltz v6, :cond_6b

    sub-int v5, v1, v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6b

    .line 37624
    iget v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v1, v5

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_6d

    .line 37625
    iget-boolean v5, v1, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v5, :cond_6d

    add-int/lit8 v1, v2, 0x2

    .line 37627
    iget v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v5, v1, v2

    if-ltz v5, :cond_6e

    sub-int v2, v1, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6e

    .line 37628
    iget v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v1, v2

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    goto :goto_3e

    :cond_6d
    move-object v4, v1

    :cond_6e
    :goto_3e
    if-eqz v4, :cond_6f

    if-eqz v12, :cond_6b

    .line 37631
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v1

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6b

    :cond_6f
    const/4 v1, 0x1

    .line 37635
    :goto_3f
    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 37636
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    iput-boolean v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->isAllChats:Z

    .line 37637
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    iput-boolean v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenued:Z

    .line 37638
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenuEnabled(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    iput-boolean v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenuEnabled:Z

    .line 37639
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuAlpha:F

    .line 37640
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    .line 37641
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->isForum:Z

    .line 37642
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->isMonoForum:Z

    .line 37643
    iget-boolean v2, v3, Lorg/telegram/ui/Cells/ChatActionCell;->firstInChat:Z

    if-eq v2, v1, :cond_70

    const/4 v2, 0x1

    goto :goto_40

    :cond_70
    const/4 v2, 0x0

    .line 37644
    :goto_40
    iput-boolean v1, v3, Lorg/telegram/ui/Cells/ChatActionCell;->firstInChat:Z

    .line 37645
    invoke-virtual {v3, v12, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 37646
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    const/4 v10, 0x1

    .line 37647
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->setShowTopic(Z)V

    .line 37648
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_71

    const/4 v5, 0x1

    goto :goto_41

    :cond_71
    const/4 v5, 0x0

    :goto_41
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    return-void

    .line 37649
    :cond_72
    instance-of v1, v3, Lorg/telegram/ui/Cells/ChatUnreadCell;

    if-eqz v1, :cond_73

    .line 37650
    check-cast v3, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .line 37651
    sget v1, Lorg/telegram/messenger/R$string;->UnreadMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatUnreadCell;->setText(Ljava/lang/String;)V

    .line 37652
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatUnreadCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 37653
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcreateUnreadMessageAfterId(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-eqz v1, :cond_73

    .line 37654
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcreateUnreadMessageAfterId(Lorg/telegram/ui/ChatActivity;I)V

    :cond_73
    :goto_42
    return-void

    .line 37110
    :cond_74
    :goto_43
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 37111
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetloadsCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v10, 0x1

    if-le v2, v10, :cond_75

    const/4 v5, 0x1

    goto :goto_44

    :cond_75
    const/4 v5, 0x0

    :goto_44
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    return-void

    .line 37092
    :goto_45
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 37093
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 37094
    sget v2, Lorg/telegram/messenger/R$string;->RepliesChatInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;)V

    goto :goto_4a

    :cond_76
    const/4 v3, 0x0

    .line 37095
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_77

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v7, 0x77628

    cmp-long v5, v5, v7

    if-nez v5, :cond_77

    .line 37096
    sget v2, Lorg/telegram/messenger/R$string;->VerifyChatInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;)V

    goto :goto_4a

    .line 37098
    :cond_77
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotInfo(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotInfo(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    goto :goto_46

    :cond_78
    move-object v2, v4

    :goto_46
    if-eqz v2, :cond_79

    .line 37099
    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    goto :goto_47

    :cond_79
    move-object v3, v4

    :goto_47
    if-eqz v2, :cond_7a

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_7b

    :cond_7a
    :goto_48
    const/4 v10, 0x1

    goto :goto_49

    :cond_7b
    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_48

    :goto_49
    invoke-virtual {v1, v10, v3, v4, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_bots$BotInfo;)V

    .line 37101
    :goto_4a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateBotHelpCellClick(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/BotHelpCell;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 36705
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 36706
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36707
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 36708
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 36710
    :cond_0
    new-instance v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, p2, Lorg/telegram/ui/ChatActivity;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    iget-object v8, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v2, v3

    .line 36712
    :goto_0
    move-object p2, v2

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 36713
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 36714
    iput-boolean v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldCheckVisibleOnScreen:Z

    .line 36715
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity-IA;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 36716
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotDraftAnimationsPool(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->draftAnimationsPool:Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;

    .line 36717
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    .line 36718
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    :cond_1
    move-object v1, v2

    goto/16 :goto_1

    :cond_2
    if-ne p2, p1, :cond_3

    .line 36721
    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p0, p2, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 36730
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->setInvalidateColors(Z)V

    .line 36731
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto/16 :goto_1

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    .line 37047
    new-instance v1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 37049
    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 37055
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/BotHelpCell;->setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 37072
    new-instance v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p1, v0, p2}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x6

    if-ne p2, p1, :cond_7

    .line 37074
    new-instance v1, Lorg/telegram/ui/Cells/UserInfoCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p1, p2, v0}, Lorg/telegram/ui/Cells/UserInfoCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x7

    if-ne p2, p1, :cond_8

    .line 37076
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p1, v0, p2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_8
    const/16 p1, 0x8

    if-ne p2, p1, :cond_9

    .line 37078
    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 37085
    :cond_9
    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37086
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37694
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v3, :cond_0

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_1

    .line 37695
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 37697
    :cond_1
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1a

    .line 37698
    move-object v8, v2

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 37699
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    .line 37700
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    iput-boolean v2, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isAllChats:Z

    .line 37701
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    iput-boolean v2, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenued:Z

    .line 37702
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenuEnabled(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    iput-boolean v2, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    .line 37703
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iput v2, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuAlpha:F

    .line 37704
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iput v2, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuWidth:I

    const/4 v2, -0x1

    .line 37705
    invoke-virtual {v8, v6, v7, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->showHintButton(ZZI)V

    .line 37706
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethintMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethintMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessageObject;->equals(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37707
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethintMessageType(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v8, v7, v7, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->showHintButton(ZZI)V

    .line 37709
    :cond_2
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37710
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 37712
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->emojiSounds:Ljava/util/HashMap;

    const-string/jumbo v10, "\ufe0f"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$EmojiSound;

    if-eqz v3, :cond_3

    .line 37714
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v11

    invoke-virtual {v10, v11, v2, v3, v6}, Lorg/telegram/messenger/MediaController;->playEmojiSound(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/MessagesController$EmojiSound;Z)V

    .line 37718
    :cond_3
    invoke-virtual {v9, v7}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37719
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v10

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v11

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v12

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isFirstInChat()Z

    move-result v13

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isLastInChatList()Z

    move-result v14

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V

    goto :goto_1

    .line 37721
    :cond_4
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_5

    move v3, v7

    .line 37723
    :goto_0
    iget-object v10, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 37724
    iget-object v10, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37731
    :cond_5
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 37746
    :cond_6
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    .line 37747
    invoke-virtual {v8, v7, v7, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    .line 37748
    invoke-virtual {v8, v7, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    move v2, v7

    move v10, v2

    goto :goto_7

    .line 37732
    :cond_7
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean v7, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    .line 37733
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputhighlightMessageQuoteFirstTime(Lorg/telegram/ui/ChatActivity;J)V

    .line 37734
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v3, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    .line 37735
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v7

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v6

    :goto_4
    invoke-virtual {v8, v2, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 37736
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-nez v2, :cond_a

    move v2, v7

    goto :goto_5

    :cond_a
    move v2, v6

    .line 37737
    :goto_5
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v10

    aget-object v10, v10, v2

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_b

    .line 37738
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10, v9, v8, v2, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetCellSelectionBackground(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;IZ)V

    move v2, v6

    goto :goto_6

    .line 37741
    :cond_b
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    .line 37742
    invoke-virtual {v8, v7, v7, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    move v2, v7

    :goto_6
    move v10, v6

    :goto_7
    xor-int/lit8 v11, v10, 0x1

    if-eqz v10, :cond_c

    if-eqz v2, :cond_c

    move v2, v6

    goto :goto_8

    :cond_c
    move v2, v7

    .line 37750
    :goto_8
    invoke-virtual {v8, v11, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 37752
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v10, 0x7

    if-ne v2, v10, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 37753
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    goto :goto_a

    .line 37754
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-nez v9, :cond_e

    move v9, v6

    goto :goto_9

    :cond_e
    move v9, v7

    :goto_9
    invoke-virtual {v2, v10, v9}, Lorg/telegram/messenger/MediaDataController;->isMessageFound(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 37755
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    goto :goto_a

    .line 37757
    :cond_f
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    .line 37760
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 37761
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v2, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_13

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v2, v9, :cond_12

    :cond_11
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    move v2, v6

    goto :goto_b

    :cond_13
    move v2, v7

    :goto_b
    invoke-virtual {v8, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 37762
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 37763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 37764
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    iget v12, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteOffset:I

    iget-boolean v13, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    if-nez v13, :cond_15

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethighlightMessageQuoteFirstTime(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    sub-long v13, v9, v13

    const-wide/16 v15, 0xc8

    cmp-long v2, v13, v15

    if-gez v2, :cond_14

    goto :goto_c

    :cond_14
    move v2, v7

    goto :goto_d

    :cond_15
    :goto_c
    move v2, v6

    :goto_d
    invoke-virtual {v8, v11, v6, v12, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;ZIZ)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v8, v2, Lorg/telegram/ui/ChatActivity;->showNoQuoteAlert:Z

    if-eqz v8, :cond_16

    .line 37765
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->showNoQuoteFound()V

    .line 37767
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean v7, v2, Lorg/telegram/ui/ChatActivity;->showNoQuoteAlert:Z

    .line 37768
    iget-boolean v8, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    if-eqz v8, :cond_17

    .line 37769
    invoke-static {v2, v9, v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputhighlightMessageQuoteFirstTime(Lorg/telegram/ui/ChatActivity;J)V

    .line 37771
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean v7, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    goto :goto_e

    .line 37772
    :cond_18
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->highlightTaskId:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    .line 37773
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedTask(I)Z

    .line 37775
    :cond_19
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v8, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v8, v3, :cond_1c

    .line 37776
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mstartMessageUnselect(Lorg/telegram/ui/ChatActivity;)V

    goto :goto_f

    .line 37779
    :cond_1a
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_1b

    .line 37780
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 37781
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;->isAllChats:Z

    .line 37782
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenued:Z

    .line 37783
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenuEnabled(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenuEnabled:Z

    .line 37784
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuAlpha:F

    .line 37785
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    goto :goto_f

    .line 37786
    :cond_1b
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatUnreadCell;

    if-eqz v3, :cond_1c

    .line 37787
    check-cast v2, Lorg/telegram/ui/Cells/ChatUnreadCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatUnreadCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 37790
    :cond_1c
    :goto_f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 37791
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt v2, v3, :cond_23

    iget v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge v2, v8, :cond_23

    .line 37793
    iget-boolean v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v8, :cond_1d

    .line 37794
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_10

    .line 37795
    :cond_1d
    iget-boolean v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v8, :cond_1e

    .line 37796
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    goto :goto_10

    .line 37798
    :cond_1e
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    :goto_10
    sub-int/2addr v2, v3

    .line 37801
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 37802
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 37803
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_23

    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-eqz v8, :cond_23

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v3, :cond_23

    .line 37804
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-nez v3, :cond_21

    .line 37805
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_21

    .line 37806
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnewMentionsCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v3, v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputnewMentionsCount(Lorg/telegram/ui/ChatActivity;I)V

    .line 37807
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnewMentionsCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-gtz v3, :cond_1f

    .line 37808
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputnewMentionsCount(Lorg/telegram/ui/ChatActivity;I)V

    .line 37809
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputhasAllMentionsLocal(Lorg/telegram/ui/ChatActivity;Z)V

    .line 37810
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v7, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowMentionDownButton(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto :goto_11

    .line 37812
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnewMentionsCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v3, v8, v7, v6}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->setButtonCount(IIZ)V

    .line 37814
    :goto_11
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :cond_20
    move-wide v9, v4

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/MessagesController;->markMentionMessageAsRead(IJJ)V

    .line 37815
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->setContentIsRead()V

    .line 37818
    :cond_21
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_23

    .line 37819
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 37820
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 37821
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    return-void

    .line 37823
    :cond_22
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedAnimated()V

    :cond_23
    return-void
.end method

.method public updateRowAtPosition(I)V
    .locals 7

    .line 37831
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 37837
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwasManualScroll(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetunreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37838
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 37840
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 37841
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetunreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 37842
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetunreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 37844
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetunreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37845
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 37851
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    if-eq v0, v2, :cond_3

    .line 37853
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)Landroid/view/View;
    .locals 10

    if-eqz p2, :cond_1

    .line 37873
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 37875
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 37876
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    .line 37877
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 37878
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isAdminLayoutChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37879
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isFirstInChat()Z

    move-result v8

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isLastInChatList()Z

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V

    return-object v3

    :cond_0
    move-object v4, p1

    add-int/lit8 v0, v0, 0x1

    move-object p1, v4

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 37886
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz p1, :cond_2

    .line 37887
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_1

    .line 37888
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz p1, :cond_3

    .line 37889
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->filteredMessages:Ljava/util/ArrayList;

    goto :goto_1

    .line 37891
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 37894
    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return-object v0

    :cond_4
    if-eqz p3, :cond_5

    .line 37899
    sget p1, Lorg/telegram/ui/ChatActivity;->lastStableId:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lorg/telegram/ui/ChatActivity;->lastStableId:I

    iput p1, v4, Lorg/telegram/messenger/MessageObject;->stableId:I

    const/4 p1, 0x1

    .line 37900
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    goto :goto_2

    .line 37902
    :cond_5
    iget p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowAtPosition(I)V

    :goto_2
    return-object v0
.end method

.method public updateRowsSafe()V
    .locals 12

    .line 36541
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 36542
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 36543
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    .line 36544
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    .line 36545
    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 36546
    iget v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 36547
    iget v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 36548
    iget v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 36549
    iget v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    .line 36550
    iget v9, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    .line 36551
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    .line 36552
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 36553
    iget v11, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    if-ne v0, v11, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne v4, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    if-ne v5, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-ne v6, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ne v7, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->hintRow:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userInfoRow:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userPhotoTimeRow:I

    if-ne v8, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->userNameTimeRow:I

    if-ne v9, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botForumStartThreadRow:I

    if-eq v10, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 36561
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method
