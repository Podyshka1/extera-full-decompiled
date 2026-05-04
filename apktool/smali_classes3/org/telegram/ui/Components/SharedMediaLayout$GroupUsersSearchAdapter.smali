.class Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupUsersSearchAdapter"
.end annotation


# instance fields
.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private mContext:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field searchCount:I

.field private searchResultNames:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private totalCount:I


# direct methods
.method public static synthetic $r8$lambda$-3CpCAYWmZRbSeduixjqK5SAk0U(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->lambda$onCreateViewHolder$5(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8h1lic7vzgs53zsSQjVdO-i5bPc(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->lambda$processSearch$2(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSKJJKKEpMxdNloHZ7aeYg_jvgI(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XwS97mvOYBkbKuQ1V9ZZhflBXzU(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->lambda$updateSearchResults$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_969Cl3roOIiR0aQAc9t1EYn9L4(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->lambda$search$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zh73rDQEnU3md40ojb610bmnc48(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->lambda$processSearch$3(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 1

    .line 10369
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 10362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10365
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->totalCount:I

    .line 10367
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    .line 10370
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->mContext:Landroid/content/Context;

    .line 10371
    new-instance p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 10372
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 10389
    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method private createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z
    .locals 3

    .line 10393
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_0

    .line 10394
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 10395
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    .line 10396
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 10397
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 10398
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    .line 10399
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    move-object p1, v0

    .line 10402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZZLandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(I)V
    .locals 5

    .line 10373
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 10375
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    move v1, p1

    .line 10377
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 10378
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 10379
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 10380
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    .line 10382
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$manimateItemsEnter(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 2

    .line 10570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 10571
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_0

    .line 10572
    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    xor-int/lit8 p2, p2, 0x1

    .line 10579
    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$processSearch$2(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    .line 10437
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 10438
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 10439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 10442
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10443
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    add-int/2addr v6, v5

    .line 10446
    new-array v7, v6, [Ljava/lang/String;

    .line 10447
    aput-object v1, v7, v3

    if-eqz v2, :cond_4

    .line 10449
    aput-object v2, v7, v5

    .line 10451
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10454
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_e

    move-object/from16 v10, p2

    .line 10456
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLObject;

    .line 10457
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v12, :cond_5

    .line 10458
    move-object v12, v11

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    goto :goto_2

    .line 10459
    :cond_5
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v12, :cond_6

    .line 10460
    move-object v12, v11

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    .line 10464
    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 10465
    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_7

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 10469
    :cond_7
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 10470
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 10471
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x0

    :cond_8
    move v15, v3

    move/from16 v16, v15

    :goto_3
    if-ge v15, v6, :cond_6

    .line 10477
    aget-object v3, v7, v15

    .line 10478
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v14, :cond_9

    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    .line 10480
    :cond_9
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v16, 0x2

    :cond_a
    move/from16 v4, v16

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_d

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 10486
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_6

    .line 10488
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    invoke-static {v4, v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10490
    :goto_6
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v12

    goto :goto_7

    :cond_d
    const/4 v5, 0x1

    const/16 v17, 0x0

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v4

    const/4 v3, 0x0

    goto/16 :goto_3

    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 10495
    :cond_e
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$processSearch$3(Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    .line 10430
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 10432
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    const/4 v1, 0x2

    .line 10434
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    if-eqz v0, :cond_1

    .line 10436
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sub-int/2addr v1, v0

    .line 10498
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    .line 10500
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_1
    move-wide v9, v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    return-void
.end method

.method private synthetic lambda$search$1(Ljava/lang/String;)V
    .locals 0

    .line 10424
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 10506
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10509
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 10510
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    .line 10511
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10512
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object p1

    .line 10513
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10514
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10517
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchCount:I

    if-nez p1, :cond_4

    const/4 p1, 0x0

    move p2, p1

    .line 10518
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_4

    .line 10519
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p2

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 10520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 10521
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    .line 10523
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$manimateItemsEnter(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10529
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    .line 10429
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 10505
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 10558
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 10562
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 10540
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->totalCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x16

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 10545
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->totalCount:I

    if-lez v0, :cond_0

    .line 10546
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 10547
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mswitchToCurrentSelectedMode(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 10549
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 10589
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 10591
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_0

    .line 10592
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_0

    .line 10593
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_4

    .line 10594
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 10599
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    .line 10602
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10603
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10606
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 10607
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10608
    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 10610
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 10613
    :cond_2
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-nez v1, :cond_3

    goto :goto_2

    .line 10614
    :cond_3
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 10615
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 10616
    invoke-virtual {p1, v0, v4, v2, p2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 10567
    new-instance v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 10568
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10569
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 10584
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 10621
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 10622
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 14

    .line 10406
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10407
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 10408
    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 10410
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10411
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 10412
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_0
    move-wide v9, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 10413
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 10415
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 10416
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 10417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10418
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_3

    :cond_2
    move/from16 v3, p2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10423
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10424
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
