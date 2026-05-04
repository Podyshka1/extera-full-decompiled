.class Lorg/telegram/ui/Components/EmojiView$GifAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifAdapter"
.end annotation


# instance fields
.field private addSearch:Z

.field private bot:Lorg/telegram/tgnet/TLRPC$User;

.field private final context:Landroid/content/Context;

.field private firstResultItem:I

.field private itemsCount:I

.field private lastSearchImageString:Ljava/lang/String;

.field private lastSearchIsEmoji:Z

.field private final maxRecentRowsCount:I

.field private nextSearchOffset:Ljava/lang/String;

.field private final progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

.field private recentItemsCount:I

.field private reqId:I

.field private results:Ljava/util/ArrayList;

.field private resultsMap:Ljava/util/HashMap;

.field private searchEndReached:Z

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchingUser:Z

.field private showTrendingWhenSearchEmpty:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private trendingSectionItem:I

.field private final withRecent:Z


# direct methods
.method public static synthetic $r8$lambda$HzQZW7GQdiwKPzXCLdGIq4zi0gI(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$search$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRFlBiNZ7TSS5uIGtFC9EOUsIN4(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$searchBotUser$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hHyc_KrhyMLnzUfG3lkdz_jOejA(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$search$3(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2KLawDKXP5HjKriHUi2eplOPXY(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$search$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJrI4IQsw4y6SlAnZ4G_r4XTZPw(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddSearch(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbot(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchImageString(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchIsEmoji(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnextSearchOffset(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressEmptyView(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentItemsCount(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetreqId(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchEndReached(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettrendingSectionItem(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputshowTrendingWhenSearchEmpty(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->showTrendingWhenSearchEmpty:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessResponse(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 8233
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8237
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZI)V
    .locals 1

    .line 8240
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    .line 8218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 8225
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 8226
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    .line 8241
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    .line 8242
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    .line 8243
    iput p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8244
    :cond_0
    new-instance p3, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    return-void
.end method

.method private synthetic lambda$search$2(Ljava/lang/String;)V
    .locals 2

    .line 8457
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$search$3(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 8505
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$search$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 8505
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 8404
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 8405
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 8406
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 8407
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 8408
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8409
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 8410
    const-string v0, ""

    invoke-virtual {p0, p1, v0, v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8403
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 8541
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p1, p0

    goto/16 :goto_6

    :cond_1
    const/4 v0, 0x0

    .line 8544
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    if-eqz p5, :cond_2

    .line 8545
    instance-of v1, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz v1, :cond_3

    move-object v1, p7

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p6, 0x0

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 8546
    invoke-virtual/range {p1 .. p6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void

    .line 8550
    :goto_1
    iget-boolean v1, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v1, :cond_4

    .line 8551
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8552
    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8553
    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8554
    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8558
    :cond_4
    instance-of v1, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz v1, :cond_11

    .line 8560
    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8561
    check-cast p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 8562
    iget-object v2, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8563
    iget-object v2, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-nez p5, :cond_6

    .line 8565
    iget p5, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p5, :cond_6

    .line 8566
    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p5, p5, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p5

    invoke-virtual {p5, p6, p7}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 8568
    :cond_6
    iget-object p5, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    move p5, v0

    move p6, p5

    .line 8569
    :goto_2
    iget-object v2, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p5, v2, :cond_8

    .line 8570
    iget-object v2, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 8571
    iget-object v3, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 8574
    :cond_7
    iget-wide v3, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    .line 8575
    iget-object v3, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8576
    iget-object v3, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p6, p6, 0x1

    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 8579
    :cond_8
    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p7, 0x1

    if-eq v1, p5, :cond_9

    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_a

    :cond_9
    move v0, p7

    :cond_a
    iput-boolean v0, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    if-eqz p6, :cond_10

    if-eqz p4, :cond_c

    if-eqz v1, :cond_b

    goto :goto_4

    .line 8597
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 8582
    :cond_c
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    .line 8583
    iget-boolean p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz p5, :cond_e

    if-eqz v1, :cond_d

    .line 8585
    iget p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p5, v0

    add-int/2addr p5, v1

    invoke-virtual {p0, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8586
    iget p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p5, v0

    add-int/2addr p5, v1

    add-int/2addr p5, p7

    invoke-virtual {p0, p5, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_5

    .line 8588
    :cond_d
    iget p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p5, v0

    add-int/2addr p6, p7

    invoke-virtual {p0, p5, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_5

    :cond_e
    if-eqz v1, :cond_f

    .line 8592
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8594
    :cond_f
    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p5

    iget-boolean p5, p5, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr v1, p5

    invoke-virtual {p0, v1, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_5

    .line 8599
    :cond_10
    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_12

    .line 8600
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 8603
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 8606
    :cond_12
    :goto_5
    iget-boolean p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p5, :cond_14

    .line 8607
    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p5

    if-eq p5, p1, :cond_13

    .line 8608
    iget-object p5, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p5

    invoke-virtual {p5, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_13
    if-eqz p4, :cond_14

    .line 8610
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 8611
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mscrollGifsToTop(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_14
    :goto_6
    return-void
.end method

.method private searchBotUser()V
    .locals 3

    .line 8395
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8398
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchingUser:Z

    .line 8399
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 8400
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 8401
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private updateItems()V
    .locals 3

    const/4 v0, -0x1

    .line 8324
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 8325
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    const/4 v0, 0x0

    .line 8327
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 8328
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8329
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 8332
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v0, :cond_1

    .line 8333
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 8336
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8337
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    if-lez v0, :cond_2

    .line 8338
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 8340
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    .line 8341
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    return-void

    .line 8342
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_4

    .line 8343
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    :cond_4
    return-void
.end method

.method private updateRecentItemsCount()V
    .locals 12

    .line 8348
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 8353
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetrecentGifs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    return-void

    .line 8357
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 8361
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 8362
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 8363
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    .line 8368
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    .line 8370
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetrecentGifs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v1

    move v5, v3

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v5, v4, :cond_5

    .line 8371
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetrecentGifs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->getSizeForItem(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Size;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->fixSize(Lorg/telegram/ui/Components/Size;)Lorg/telegram/ui/Components/Size;

    move-result-object v9

    int-to-float v10, v1

    .line 8372
    iget v11, v9, Lorg/telegram/ui/Components/Size;->width:F

    iget v9, v9, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v11, v9

    int-to-float v9, v2

    mul-float/2addr v11, v9

    int-to-float v9, v0

    div-float/2addr v11, v9

    mul-float/2addr v10, v11

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 8374
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/lit8 v8, v8, 0x1

    .line 8375
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-ne v8, v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v1

    move v7, v3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8385
    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-ge v8, v0, :cond_6

    .line 8386
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 8254
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 8259
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 8261
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-nez v0, :cond_2

    .line 8263
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 8249
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadTrendingGifs()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 8391
    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 8318
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateRecentItemsCount()V

    .line 8319
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    .line 8320
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 8303
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8305
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 8306
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    .line 8307
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V

    return-void

    .line 8309
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetrecentGifs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setGif(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    const/4 v1, -0x2

    if-eq p2, p1, :cond_0

    .line 8294
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    .line 8295
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8284
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetglassDesign(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p1, p2, v4, v2, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 8285
    sget p2, Lorg/telegram/messenger/R$string;->FeaturedGifs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    .line 8287
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40200000    # 2.5f

    .line 8288
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v0, 0x40b00000    # 5.5f

    .line 8289
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8290
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8280
    :cond_1
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8281
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchFieldHeight(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8274
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 8275
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setIsKeyboard(Z)V

    .line 8276
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setCanPreviewGif(Z)V

    move-object p1, p2

    .line 8298
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 8417
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Z)V

    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 8471
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 10

    .line 8475
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ltz v0, :cond_0

    .line 8477
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    const/4 v0, 0x0

    .line 8479
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 8482
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 8483
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    .line 8485
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v0, :cond_2

    .line 8486
    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 8489
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 8490
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_4

    if-eqz p3, :cond_3

    .line 8492
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchBotUser()V

    .line 8493
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p1, :cond_3

    .line 8494
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    return-void

    :cond_3
    move-object v2, p0

    goto/16 :goto_0

    .line 8499
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v2, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8500
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8503
    :cond_5
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    .line 8504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gif_search_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8505
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v9, v8

    move v8, p5

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    move-object p1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    if-nez v8, :cond_7

    .line 8507
    iget-boolean p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p2, :cond_7

    if-eqz v6, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 8508
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 8509
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 8510
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eq p2, v2, :cond_6

    .line 8511
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8513
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 8514
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mscrollGifsToTop(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_7
    if-eqz v8, :cond_8

    .line 8517
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8518
    iget-object p1, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    const/4 v7, 0x1

    move-object v8, v9

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void

    .line 8522
    :cond_8
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchPreloader(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    move-result-object p2

    invoke-virtual {p2, v9}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->isLoading(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_0
    return-void

    :cond_9
    if-eqz v8, :cond_a

    const/4 p2, -0x1

    .line 8527
    iput p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 8528
    iget-object p2, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, v9, p1}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    return-void

    .line 8530
    :cond_a
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    if-nez v3, :cond_b

    .line 8531
    const-string p3, ""

    goto :goto_1

    :cond_b
    move-object p3, v3

    :goto_1
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 8532
    iget-object p3, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p3, p3, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p4, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 8533
    iput-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 8534
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 8535
    iget-object p3, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p3, p3, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 4

    .line 8421
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 8424
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz v0, :cond_1

    .line 8426
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 8428
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 8430
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    .line 8431
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v0, :cond_3

    .line 8432
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 8434
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 8435
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8437
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 8438
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 8439
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->showTrendingWhenSearchEmpty:Z

    if-eqz p1, :cond_5

    .line 8440
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->loadTrendingGifs()V

    return-void

    .line 8442
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifTabs(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result p1

    .line 8443
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifRecentTabNum(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p2

    if-eq p1, p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifTrendingTabNum(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p2

    if-ne p1, p2, :cond_6

    goto :goto_0

    .line 8448
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifFirstEmojiTabNum(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    return-void

    .line 8444
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p2

    if-eq p1, p2, :cond_a

    .line 8445
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 8453
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 8455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 8456
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_9

    const-wide/16 p1, 0x12c

    goto :goto_1

    :cond_9
    const-wide/16 p1, 0x0

    :goto_1
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_a
    :goto_2
    return-void
.end method

.method public searchEmoji(Ljava/lang/String;)V
    .locals 7

    .line 8463
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8464
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 8467
    const-string v3, ""

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
