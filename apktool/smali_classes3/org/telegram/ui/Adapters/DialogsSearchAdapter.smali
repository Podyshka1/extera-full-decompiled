.class public abstract Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    }
.end annotation


# instance fields
.field private cancelShowMoreAnimation:Ljava/lang/Runnable;

.field private currentAccount:I

.field private currentItemCount:I

.field private currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

.field private currentMessagesQuery:Ljava/lang/String;

.field public delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

.field private final dialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private dialogsType:I

.field private filterArrowsIcon:Lorg/telegram/ui/Components/ColoredImageSpan;

.field private filterDialogIds:Ljava/util/ArrayList;

.field private final filtered2RecentSearchObjects:Ljava/util/ArrayList;

.field private filteredRecentQuery:Ljava/lang/String;

.field private final filteredRecentSearchObjects:Ljava/util/ArrayList;

.field private filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

.field private folderId:I

.field private forceLoadingMessages:Z

.field globalSearchCollapsed:Z

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private lastForumReqId:I

.field private lastGlobalSearchId:I

.field private lastLocalSearchId:I

.field private lastMessagesSearchFilterFlags:I

.field private lastMessagesSearchId:I

.field private lastMessagesSearchString:Ljava/lang/String;

.field private lastReqId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private lastShowMoreUpdate:J

.field public localMessagesLoadingRow:I

.field private localMessagesSearchEndReached:Z

.field private localTipArchive:Z

.field private localTipDates:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private messagesEmptyLayout:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;

.field private messagesSearchEndReached:Z

.field private messagesSectionPosition:I

.field private needMessagesSearch:I

.field private nextSearchRate:I

.field phoneCollapsed:Z

.field public publicPosts:Ljava/util/ArrayList;

.field public publicPostsHashtag:Ljava/lang/String;

.field public publicPostsLastRate:I

.field public publicPostsTotalCount:I

.field private recentSearchObjects:Ljava/util/ArrayList;

.field private recentSearchObjectsById:Landroidx/collection/LongSparseArray;

.field private reqForumId:I

.field private reqId:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private final searchContacts:Ljava/util/ArrayList;

.field private final searchForumResultMessages:Ljava/util/ArrayList;

.field private searchHashtagRequest:I

.field private searchHashtagRunnable:Ljava/lang/Runnable;

.field private searchResult:Ljava/util/ArrayList;

.field private final searchResultHashtags:Ljava/util/ArrayList;

.field private final searchResultMessages:Ljava/util/ArrayList;

.field private searchResultNames:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchRunnable2:Ljava/lang/Runnable;

.field private final searchTopics:Ljava/util/ArrayList;

.field private searchWas:Z

.field private final seenSponsoredPeers:Ljava/util/HashSet;

.field private selfUserId:J

.field public showMoreAnimation:Z

.field public showMoreHeader:Landroid/view/View;

.field public final sponsoredPeers:Ljava/util/ArrayList;

.field private sponsoredQuery:Ljava/lang/String;

.field private sponsoredReqId:I

.field waitingResponseCount:I


# direct methods
.method public static synthetic $r8$lambda$-OJxNF02VTMyuvDMEeWTYTm8-rc(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-qjOaRQT58wXpIiA5hKyNVz5llQ(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onCreateViewHolder$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$0XhPRJ8CHLt6pJa025FzOeaZ-KE(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$removeRecentSearch$11(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$17fPHjilSOQgfQI4fJMUOtwG40U(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1aO1DmUB5brGXlP501dGOZBLuPw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$putRecentSearch$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$41YgsHzzR4GBdwQ0tpdDm3n5qyE(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2171
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$A-IbWbhtdToA_YLX0T3XPSDYiGY(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$33(Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BE-jvHs7TAqcFMsyxJv98EGR3_o(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$22(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ekg2IRpgTJznZ85nqTS5_kLVwYo(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwWKVZ1k4VhO0OHA0GcmFfbMYIA(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$updateSearchResults$15(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSwg9cHyD-5saYBn5wHtSFEkG1g(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchMessagesInternal$2(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZ_-Omniy_ElXzNB6Et7U-PxOFI(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IeZY6DzfyevAnT9a9okTeQwCnus(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 12

    .line 736
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT did, date FROM search_recent WHERE 1"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 740
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 741
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 743
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 744
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 745
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 746
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v7

    .line 749
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p1, :cond_1

    const/4 v9, 0x3

    if-ne p1, v9, :cond_0

    .line 751
    :cond_1
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    .line 752
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 753
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 757
    :cond_2
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    if-eq p1, v9, :cond_0

    .line 758
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 759
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    neg-long v9, v7

    .line 763
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 764
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :goto_1
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 770
    iput-wide v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    const/4 v7, 0x1

    .line 771
    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 772
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-wide v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 776
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 779
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ","

    if-nez v0, :cond_6

    .line 782
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v4, v2

    .line 784
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 785
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v8, :cond_5

    .line 787
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    iput-object v9, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 792
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v3, v2

    .line 795
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 796
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 797
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    .line 798
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v9, :cond_7

    .line 799
    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 800
    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v4, :cond_8

    .line 802
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 805
    :cond_7
    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v7, :cond_8

    .line 807
    iput-object v4, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 813
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 814
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 815
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_b

    .line 816
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 817
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v0, :cond_a

    .line 819
    iput-object p0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 824
    :cond_b
    new-instance p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 833
    new-instance p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2, v5, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 835
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K89pScLPxz8A7hNs50DvhqLPPtU(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchForumMessagesInternal$0(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KnCqQ0uS188xhr3Qp9S9ow8Tgu4(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onCreateViewHolder$24(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MMVEA3pdRdpRS29ubI-he5fbsAw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogsInternal$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$MslFLJ1yz2I2vOYDeWamGyaNrBA(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$30(Lorg/telegram/ui/Cells/GraySectionCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NoOY0Cz1simcTuM9zv8W7KL-mqI(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$21(ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OXdbibPpjHv38LbdzONvNZzV2mE(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$19(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYMdipjlU_FWtu1BQnI8nRAhmYM(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UkxaQDDMnNIWnZAqNldsPFsIMWw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$35(Lorg/telegram/ui/Cells/GraySectionCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V7C12tjg39Od-cOTbLKUrPlLU78(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ZLorg/telegram/ui/Cells/GraySectionCell;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$34(ZLorg/telegram/ui/Cells/GraySectionCell;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZMV9FdQaJMqRxeN-_J72fQS67w(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 833
    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;->setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xj7vBTEabwT2n0OyP9WXSad6l4E(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogsInternal$13(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YGVf6CnEaWPsv9VpNlZIqnafj-I(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onCreateViewHolder$23(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLtq8pS1k8Bu5WHu4RNqb1k6Kew(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchForumMessagesInternal$1(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1XDIJGJK5xvj9OFhYceFemgLSw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$18(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e3DIFwDu9iAIWt0QfY_jhshUUGM(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2167
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$eKfN-FBTn2ShAJEipoNdclTDi_E(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$31(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hY8kbpgahiObI09CVX97PHu5IAw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;JLjava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$updateSearchResults$14(JLjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8J4WU8F8p8kPmiHDmzZaKVeIlw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$clearRecentSearch$10(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lqxExGyE7S05spp6PXDQg3CKK0w(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I
    .locals 0

    .line 825
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    iget p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$n7NE5J4Erxr8k2engKMmCh3DJf4(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$loadRecentSearch$5(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDW-UCkAdXWEuCrcm1z74Mi6sCA(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchMessagesInternal$4(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nhWkMC1AJv0SKsfkmJS5nL3No2g(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZKhJZEx_0o5x6XuhFqw3xm-xvs(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$16(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$swmKEqO1gm99W-VIQZYrj7uhC0s(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchMessagesInternal$3(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykdR59yznd-Tf8IJgpl6PrZQBP0(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$20(ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlastLocalSearchId(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMessagesSearchId(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchId(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResultHashtags(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResultMessages(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastGlobalSearchId(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 310
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 112
    sget-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->seenSponsoredPeers:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 140
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    .line 148
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 163
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    .line 171
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 176
    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 177
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    .line 1765
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSectionPosition:I

    const/4 v0, 0x1

    .line 2236
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 2237
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 311
    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 312
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 313
    iput-object p7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 314
    new-instance p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 320
    new-instance p5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {p2, p5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 357
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2, p6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setAllowGlobalResults(Z)V

    .line 358
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    .line 359
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    .line 360
    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    .line 361
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->selfUserId:J

    .line 362
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 363
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    return-void
.end method

.method private filter(Ljava/lang/Object;)Z
    .locals 3

    .line 288
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 292
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 293
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_1

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowBots:Z

    return p1

    .line 296
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowUsers:Z

    return p1

    .line 297
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 298
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 299
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowChannels:Z

    return p1

    .line 301
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->allowGroups:Z

    if-nez v0, :cond_5

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowMegagroups:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2

    .line 304
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->allowGroups:Z

    if-nez v0, :cond_8

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowLegacyGroups:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v2

    :cond_9
    return v1
.end method

.method private getFilterFromString(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)Ljava/lang/CharSequence;
    .locals 4

    .line 2227
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->strFromResId:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2228
    const-string/jumbo p1, "v"

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2230
    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->arrows_select:I

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterArrowsIcon:Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 2232
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private globalSearchPosition()I
    .locals 3

    .line 2499
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2503
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2504
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 2506
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2507
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    return v2

    .line 2510
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2511
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 2512
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v0, :cond_3

    return v2

    .line 2516
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 2518
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 2520
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2521
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 2525
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 2527
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v1

    if-lez v0, :cond_7

    .line 2529
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    return v2
.end method

.method private hasHints()Z
    .locals 2

    .line 1762
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->allowUsers:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$clearRecentSearch$10(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 900
    :try_start_0
    const-string v0, "DELETE FROM search_recent WHERE "

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 903
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$loadRecentSearch$5(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 729
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$26(Landroid/view/View;)V
    .locals 0

    .line 1980
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1981
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$27(Landroid/view/View;)V
    .locals 0

    .line 1989
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->openPublicPosts()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$28(Landroid/view/View;)V
    .locals 0

    .line 2004
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 2005
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$29(Landroid/view/View;)V
    .locals 0

    .line 2010
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 2011
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$30(Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 2

    .line 2061
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-nez v0, :cond_0

    .line 2062
    sget v0, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    .line 2063
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$31(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 2108
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$32(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2120
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    const/4 v0, 0x0

    .line 2121
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2123
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$33(Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 9

    .line 2073
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2074
    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastShowMoreUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 2077
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastShowMoreUpdate:J

    .line 2079
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 2080
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const v2, 0x7fffffff

    :goto_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, p2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v0, v2, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    .line 2081
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v2, :cond_7

    const-wide/16 v5, 0xc8

    if-eqz v0, :cond_4

    const-wide/16 v7, 0x2d

    goto :goto_3

    :cond_4
    move-wide v7, v5

    .line 2082
    :goto_3
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 2083
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_5

    const-wide/16 v5, 0x50

    :cond_5
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 2084
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x10e

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x0

    :goto_4
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDelay(J)V

    .line 2086
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    const/16 v2, 0x10

    .line 2087
    invoke-virtual {p3, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightTextMargin(I)V

    .line 2088
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_5

    :goto_6
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    invoke-virtual {p3, v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;Z)V

    const/4 v2, 0x0

    .line 2089
    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    .line 2090
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 2091
    instance-of v2, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_b

    .line 2092
    move-object v2, p3

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 2093
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-nez v5, :cond_9

    add-int/lit8 v5, p2, 0x4

    goto :goto_7

    :cond_9
    add-int v5, p2, p1

    add-int/2addr v5, v4

    :goto_7
    move v6, v1

    .line 2094
    :goto_8
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 2095
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2096
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    if-ne v8, v5, :cond_a

    .line 2097
    iput-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    goto :goto_9

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2102
    :cond_b
    :goto_9
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-nez v2, :cond_c

    add-int/lit8 v2, p2, 0x3

    .line 2103
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr p2, v3

    add-int/lit8 p1, p1, -0x3

    .line 2104
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_a

    :cond_c
    add-int/lit8 v2, p2, 0x4

    add-int/lit8 p1, p1, -0x3

    .line 2106
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    if-eqz v0, :cond_d

    .line 2108
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)V

    const-wide/16 v2, 0x15e

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_a

    :cond_d
    add-int/lit8 p2, p2, 0x3

    .line 2110
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2114
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->cancelShowMoreAnimation:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    .line 2115
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    if-eqz v0, :cond_f

    .line 2118
    iput-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    .line 2119
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->cancelShowMoreAnimation:Ljava/lang/Runnable;

    const-wide/16 p2, 0x190

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 2127
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$34(ZLorg/telegram/ui/Cells/GraySectionCell;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 2143
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getFilterFromString(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x6

    .line 2144
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightTextMargin(I)V

    .line 2145
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    .line 2146
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    .line 2147
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2148
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$35(Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 9

    .line 2138
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 2139
    invoke-static {}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->values()[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 2140
    iget v6, v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->flags:I

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iget v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->flags:I

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    .line 2141
    :goto_1
    iget v7, v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->strResId:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda23;

    invoke-direct {v8, p0, v6, p1, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ZLorg/telegram/ui/Cells/GraySectionCell;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)V

    invoke-virtual {v0, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 2152
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2153
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2154
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2155
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2156
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$23(Landroid/view/View;I)V
    .locals 3

    .line 1715
    instance-of p2, p1, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/HintDialogCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/HintDialogCell;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_1

    .line 1717
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/HintDialogCell;->getDialogId()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->didPressedBlockedDialog(Landroid/view/View;J)V

    return-void

    .line 1721
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_1

    .line 1722
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->didPressedOnSubDialog(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$24(Landroid/view/View;I)Z
    .locals 2

    .line 1726
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_0

    .line 1727
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needRemoveHint(J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$25()V
    .locals 2

    .line 1739
    sget-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1741
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSectionPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1742
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSectionPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1744
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    return-void
.end method

.method private synthetic lambda$putRecentSearch$9(J)V
    .locals 3

    .line 856
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO search_recent VALUES(?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    .line 858
    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    const/4 p2, 0x2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 860
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 861
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 863
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$removeRecentSearch$11(J)V
    .locals 3

    .line 920
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM search_recent WHERE did = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 922
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$16(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 1179
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredReqId:I

    .line 1180
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_sponsoredPeersEmpty;

    if-eqz v0, :cond_0

    .line 1181
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1182
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1183
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 1185
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_sponsoredPeers;

    if-eqz v0, :cond_1

    .line 1186
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_sponsoredPeers;

    .line 1187
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_sponsoredPeers;->users:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1188
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_sponsoredPeers;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_sponsoredPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$searchDialogs$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1178
    new-instance p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$18(ILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v15, p3

    const/4 v1, 0x0

    .line 1306
    iput-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 1307
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq v12, v1, :cond_0

    return-void

    .line 1310
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_7

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    .line 1311
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v5, 0x4

    const/4 v8, 0x0

    if-eq v4, v5, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    if-eq v4, v5, :cond_2

    const/16 v5, 0xb

    if-eq v4, v5, :cond_2

    move-wide v10, v6

    move v6, v3

    goto :goto_1

    :cond_2
    move-wide v10, v6

    move v6, v8

    :goto_1
    if-eq v4, v2, :cond_4

    if-ne v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v3

    :goto_3
    if-nez v4, :cond_5

    move v8, v3

    .line 1322
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v4

    move-wide v13, v4

    :goto_4
    move v2, v3

    goto :goto_5

    :cond_6
    move-wide v13, v10

    goto :goto_4

    :goto_5
    const/4 v3, 0x1

    const/4 v5, 0x1

    move v10, v8

    move v4, v9

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    move/from16 v16, v2

    move-object/from16 v2, p2

    .line 1311
    invoke-virtual/range {v1 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    goto :goto_6

    :cond_7
    move/from16 v16, v3

    .line 1325
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1327
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8

    goto :goto_7

    .line 1330
    :cond_8
    invoke-direct {v0, v15}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics(Ljava/lang/String;)V

    .line 1331
    invoke-direct {v0, v15, v12}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    .line 1332
    invoke-direct {v0, v15, v12}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    return-void

    .line 1328
    :cond_9
    :goto_7
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    return-void
.end method

.method private synthetic lambda$searchDialogs$19(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1299
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1300
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    .line 1301
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1302
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    return-void

    .line 1305
    :cond_0
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$20(ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 5

    .line 1355
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 1358
    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz p1, :cond_6

    .line 1359
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1361
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1362
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    .line 1363
    :cond_1
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz p1, :cond_2

    .line 1364
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    goto :goto_0

    :cond_2
    move p1, v0

    .line 1366
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsTotalCount:I

    .line 1367
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsLastRate:I

    .line 1368
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsHashtag:Ljava/lang/String;

    .line 1369
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1370
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    move p1, v0

    .line 1371
    :goto_1
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x1

    if-ge p1, p3, :cond_3

    .line 1372
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1373
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-direct {v3, v4, p3, v0, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1375
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_5

    .line 1376
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_4

    move v0, v1

    :cond_4
    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1378
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$searchDialogs$21(ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1354
    new-instance p4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda34;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$22(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1342
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRunnable:Ljava/lang/Runnable;

    .line 1343
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 1346
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 1347
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1349
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;-><init>()V

    .line 1350
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->flags:I

    .line 1351
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->hashtag:Ljava/lang/String;

    const/4 v1, 0x3

    .line 1352
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->limit:I

    .line 1353
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1354
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$12()V
    .locals 5

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v2}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$13(Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    .line 959
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 960
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 961
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 962
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 964
    iget v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move-object v6, v3

    iget v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterDialogIds:Ljava/util/ArrayList;

    const/4 v9, -0x1

    move-object v5, v2

    move-object v7, v4

    move-object/from16 v4, p1

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object v2, v7

    move-object v7, v4

    move-object v4, v2

    move-object v2, v5

    .line 981
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 983
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 985
    iget v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 988
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    .line 989
    instance-of v13, v9, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v13, :cond_0

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v8, v13, v8

    if-nez v8, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 995
    invoke-virtual {v2, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 996
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1000
    :cond_2
    :goto_0
    iget v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1003
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_3
    if-ge v5, v3, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    .line 1004
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_3

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v8, v8, v11

    if-nez v8, :cond_3

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    .line 1010
    invoke-virtual {v2, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1011
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    move-object v3, v6

    move-object v5, v10

    move/from16 v6, p2

    goto :goto_3

    .line 1015
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1019
    :goto_3
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1021
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v15, 0x0

    .line 1022
    iput-boolean v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 1023
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->ArchiveSearchFilter:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "archive"

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 1024
    iput-boolean v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 1026
    :cond_7
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda37;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchForumMessagesInternal$0(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V
    .locals 4

    .line 456
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    if-lez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne p2, p1, :cond_9

    .line 457
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-nez p3, :cond_9

    .line 459
    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesQuery:Ljava/lang/String;

    .line 460
    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 461
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, p4, v0, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 462
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 463
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 464
    iget p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    if-nez p1, :cond_1

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 467
    :cond_1
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    move p1, v1

    .line 468
    :goto_0
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    .line 469
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 470
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    .line 471
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->deletedHistory:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p4, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p4

    if-eqz p4, :cond_2

    .line 472
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gt p3, p4, :cond_2

    goto :goto_1

    .line 475
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 477
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 478
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p3, 0x14

    if-eq p1, p3, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-lez p2, :cond_6

    .line 480
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    .line 481
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    if-eq p1, p2, :cond_5

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 484
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq p1, p2, :cond_6

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 488
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_8

    .line 490
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_7

    move p2, v0

    goto :goto_3

    :cond_7
    move p2, v1

    :goto_3
    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    .line 493
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 496
    :cond_9
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    return-void
.end method

.method private synthetic lambda$searchForumMessagesInternal$1(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 435
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p6, :cond_2

    .line 437
    move-object v0, p5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 438
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 439
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 440
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 441
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 442
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v5, v6, v7, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 444
    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 445
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 446
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v6, v7, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v9, v1

    .line 448
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 449
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 450
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 451
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 455
    :cond_2
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda31;

    move-object v1, p0

    move-object v5, p1

    move v2, p2

    move v3, p3

    move-object v7, p4

    move-object v6, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchMessagesInternal$2(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V
    .locals 7

    .line 614
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    if-lez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne p2, p1, :cond_f

    .line 615
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-nez p3, :cond_f

    .line 617
    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesQuery:Ljava/lang/String;

    .line 618
    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 619
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, p4, v0, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 620
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 621
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 622
    iget p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    if-nez p1, :cond_1

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 625
    :cond_1
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    move p1, v1

    .line 626
    :goto_0
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_8

    .line 627
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 628
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    .line 629
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->deletedHistory:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p4, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p4

    if-eqz p4, :cond_2

    .line 630
    iget p6, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gt p6, p4, :cond_2

    goto/16 :goto_4

    .line 633
    :cond_2
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    .line 634
    iget-object p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_4

    move p6, v1

    .line 636
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p6, v2, :cond_4

    .line 637
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 638
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    .line 647
    :cond_4
    iget-object p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    .line 649
    iget-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz p4, :cond_5

    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_2

    :cond_5
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    .line 650
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p4, p6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_7

    .line 652
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget p6, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge p4, p6, :cond_6

    move p4, v0

    goto :goto_3

    :cond_6
    move p4, v1

    :goto_3
    iput-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :cond_7
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 655
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 656
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p3, 0x14

    if-eq p1, p3, :cond_9

    move p1, v0

    goto :goto_5

    :cond_9
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-lez p2, :cond_b

    .line 658
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    .line 659
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    if-eq p1, p2, :cond_a

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 662
    :cond_a
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq p1, p2, :cond_b

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 666
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_d

    .line 668
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_c

    move p2, v0

    goto :goto_6

    :cond_c
    move p2, v1

    :goto_6
    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    .line 671
    :cond_d
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 672
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 673
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesEmptyLayout:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;

    if-eqz p1, :cond_e

    .line 675
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->setQuery(Ljava/lang/String;)V

    .line 677
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 680
    :cond_f
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    return-void
.end method

.method private synthetic lambda$searchMessagesInternal$3(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 7

    .line 686
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 687
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 688
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 689
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz v2, :cond_0

    .line 690
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    .line 691
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMaxSync(ZJ)I

    move-result v2

    .line 692
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 694
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchMessagesInternal$4(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    move-object/from16 v1, p0

    .line 580
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p6, :cond_2

    .line 582
    move-object/from16 v2, p5

    check-cast v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 583
    new-instance v13, Landroidx/collection/LongSparseArray;

    invoke-direct {v13}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 584
    new-instance v12, Landroidx/collection/LongSparseArray;

    invoke-direct {v12}, Landroidx/collection/LongSparseArray;-><init>()V

    move v3, v0

    .line 585
    :goto_0
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 586
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 587
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v5, v6, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 589
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 590
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 591
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v12, v5, v6, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 593
    :goto_2
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 594
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Message;

    .line 595
    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 596
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    .line 597
    invoke-virtual {v9, v5}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p1

    .line 600
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    if-nez p6, :cond_5

    .line 602
    move-object/from16 v2, p5

    check-cast v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 603
    :goto_3
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 604
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 605
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v6

    .line 606
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_3

    iget v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_4

    :cond_3
    iget v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    .line 607
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_4

    .line 609
    new-instance v4, Landroid/util/Pair;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 613
    :cond_5
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda32;

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V

    .line 682
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 683
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 685
    :cond_6
    iget v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda33;

    invoke-direct {v3, v1, v9, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/HashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateSearchResults$14(JLjava/lang/Object;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    .line 1078
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 1079
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    if-eqz p4, :cond_0

    .line 1081
    iput p4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    .line 1083
    :cond_0
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p4, :cond_1

    .line 1084
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    .line 1086
    :cond_1
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1087
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateSearchResults$15(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    .line 1037
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1038
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    goto/16 :goto_5

    .line 1041
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    .line 1042
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq v0, p1, :cond_1

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 1045
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    if-eq v0, p1, :cond_2

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1048
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const/4 p1, 0x0

    move v0, p1

    .line 1049
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1050
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1051
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    .line 1055
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, p1

    .line 1056
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 1057
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1059
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_5

    .line 1060
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 1061
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1062
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_2

    .line 1063
    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_6

    .line 1064
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1065
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1066
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    goto :goto_2

    .line 1067
    :cond_6
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_7

    .line 1068
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1069
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_7
    move-wide v7, v5

    :goto_2
    cmp-long v4, v7, v5

    if-eqz v4, :cond_8

    .line 1073
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v4, :cond_8

    .line 1076
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda39;

    invoke-direct {v5, p0, v7, v8, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v8, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogFolderId(JLorg/telegram/messenger/MessagesStorage$IntCallback;)V

    .line 1094
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchAvailable()Z

    move-result v4

    if-eqz v4, :cond_c

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v3, :cond_c

    .line 1096
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_3

    :cond_9
    move v3, p1

    :goto_3
    move v4, p1

    :goto_4
    if-nez v3, :cond_b

    if-ge v4, v0, :cond_b

    .line 1100
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v5, :cond_a

    .line 1101
    iget-wide v5, v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    move v3, v1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    .line 1106
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1107
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_c
    add-int/2addr v2, v1

    goto/16 :goto_1

    .line 1112
    :cond_d
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1113
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1114
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 1116
    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, p4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1117
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1118
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_f

    .line 1119
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p3, :cond_e

    move p1, v1

    :cond_e
    invoke-interface {p2, p1, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1120
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    :cond_f
    :goto_5
    return-void
.end method

.method public static loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 2

    .line 734
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda0;-><init>(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private recentSearchAvailable()Z
    .locals 3

    .line 705
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 6

    .line 949
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 952
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 954
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 955
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object v1, v0

    return-void

    :cond_1
    move-object v1, p0

    .line 958
    iget v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, v0, p2, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private searchForumMessagesInternal(Ljava/lang/String;I)V
    .locals 10

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v5, p0

    goto/16 :goto_1

    .line 400
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 403
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 404
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 405
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    .line 407
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 408
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 409
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 411
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    .line 412
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 413
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 414
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 418
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 422
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v2

    .line 424
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    const/16 v0, 0x14

    .line 425
    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 426
    iput-object p1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 427
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 428
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    .line 432
    :cond_6
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 433
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    .line 434
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda28;

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;)V

    const/4 p1, 0x2

    invoke-virtual {v0, v9, v4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    :goto_1
    return-void
.end method

.method private searchMessagesInternal(Ljava/lang/String;I)V
    .locals 7

    .line 521
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_5

    .line 524
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 525
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 526
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 528
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    :cond_3
    move-object v1, p0

    goto/16 :goto_4

    .line 539
    :cond_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 543
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_6

    .line 544
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 545
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_0

    if-lez p1, :cond_5

    move v2, v1

    .line 546
    :cond_5
    invoke-interface {p2, v2, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    return-void

    .line 552
    :cond_6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->flags:I

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_0

    :cond_7
    move v3, v2

    :goto_0
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->broadcasts_only:Z

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_1

    :cond_8
    move v3, v2

    .line 554
    :goto_1
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->groups_only:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 555
    :goto_2
    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->users_only:Z

    const/16 v0, 0x14

    .line 556
    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 557
    iput-object p1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 558
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 559
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v0, v1

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 560
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 562
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    .line 564
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchFilterFlags:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iget v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->flags:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne v0, v3, :cond_b

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 566
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 567
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 568
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 569
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3

    .line 571
    :cond_b
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 572
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 573
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 575
    :goto_3
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->flags:I

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchFilterFlags:I

    .line 577
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 579
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda30;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;)V

    const/4 p1, 0x2

    invoke-virtual {v6, v5, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    return-void

    :goto_4
    const/4 p1, 0x0

    .line 529
    iput-object p1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 530
    iget-object p2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 531
    iget-object p2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 532
    iput v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 533
    iput-object p1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 534
    iput v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchFilterFlags:I

    .line 535
    iput-boolean v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 536
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_5
    return-void
.end method

.method private searchTopics(Ljava/lang/String;)V
    .locals 4

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 506
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    .line 508
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 509
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 510
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 511
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 3

    .line 932
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 933
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x0

    .line 934
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 935
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 936
    iget-object v0, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 937
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_1

    .line 938
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    .line 939
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_1

    .line 940
    :cond_1
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_2

    .line 941
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 944
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6

    .line 1036
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda36;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2421
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v0

    .line 2423
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 2424
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 1

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearRecentSearch()V
    .locals 7

    .line 870
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const-string v1, "1"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 871
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 872
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 873
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 874
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 875
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "did IN ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 878
    iget-wide v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 880
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 886
    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 889
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 898
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clickedSponsoredPeer(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2625
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;-><init>()V

    .line 2626
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->random_id:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;->random_id:[B

    .line 2627
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public filterRecent(Ljava/lang/String;)V
    .locals 7

    .line 2373
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 2374
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2376
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2377
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_f

    .line 2379
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-wide v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2382
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2386
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2387
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_f

    .line 2389
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v2, :cond_e

    .line 2390
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_4

    goto/16 :goto_5

    .line 2393
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 2397
    :cond_6
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_8

    .line 2398
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2399
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2400
    :goto_3
    iget-object v4, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    goto :goto_4

    .line 2401
    :cond_8
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_9

    .line 2402
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 2403
    iget-object v4, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_4

    .line 2404
    :cond_9
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 2405
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    move-object v4, v5

    goto :goto_4

    :cond_a
    move-object v3, v5

    move-object v4, v3

    :goto_4
    if-eqz v3, :cond_b

    .line 2407
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    if-eqz v4, :cond_d

    .line 2408
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2409
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_f
    :goto_6
    return-void
.end method

.method public getCurrentItemCount()I
    .locals 1

    .line 2369
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentItemCount:I

    return v0
.end method

.method public getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 12

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 1470
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1471
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1473
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1475
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-lez p1, :cond_2

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    .line 1482
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1483
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v0

    .line 1484
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-le p1, v0, :cond_8

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v0

    .line 1485
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 1486
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 1487
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_6

    .line 1488
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    return-object p1

    .line 1492
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_7

    .line 1493
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p1

    .line 1500
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1503
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    if-lez p1, :cond_a

    .line 1504
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1507
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1509
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-lez p1, :cond_c

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_c

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1513
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1515
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1516
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    .line 1517
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1518
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1519
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v7, v5, v6

    if-lez v7, :cond_10

    .line 1520
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v7

    if-gtz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    if-nez p1, :cond_f

    return-object v2

    :cond_f
    add-int/lit8 p1, p1, -0x1

    .line 1526
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_11

    .line 1527
    iget-boolean v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v9, :cond_11

    move v7, v8

    .line 1530
    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_12

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    move v8, v9

    goto :goto_1

    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v10, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v8, v10

    add-int/2addr v8, v1

    :goto_1
    const/4 v10, 0x4

    if-le v8, v10, :cond_13

    .line 1531
    iget-boolean v11, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v11, :cond_13

    move v8, v10

    :cond_13
    if-ltz p1, :cond_14

    if-ge p1, v5, :cond_14

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    sub-int/2addr p1, v5

    if-ltz p1, :cond_15

    if-ge p1, v6, :cond_15

    .line 1539
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    sub-int/2addr p1, v6

    if-ltz p1, :cond_16

    if-ge p1, v7, :cond_16

    .line 1543
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    sub-int/2addr p1, v7

    if-lez p1, :cond_18

    if-ge p1, v8, :cond_18

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_17

    .line 1548
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_17

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1551
    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr p1, v3

    if-ltz p1, :cond_19

    .line 1552
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_19

    .line 1553
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    sub-int/2addr p1, v8

    .line 1558
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v9

    goto :goto_2

    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    if-lez p1, :cond_1b

    .line 1559
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1562
    :cond_1b
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v3, :cond_1c

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    move v9, v1

    :cond_1c
    add-int/2addr v0, v9

    sub-int/2addr p1, v0

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3

    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :goto_3
    if-lez p1, :cond_1e

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1e

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    return-object v2
.end method

.method public getItemCount()I
    .locals 9

    .line 1398
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1405
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1406
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    return v0

    .line 1409
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1410
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 1411
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v4, :cond_3

    return v0

    .line 1415
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 1417
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 1419
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1420
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 1424
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 1426
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 1428
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, v2, :cond_6

    .line 1429
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v7, :cond_6

    move v6, v2

    .line 1432
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v2, :cond_7

    .line 1433
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v8, :cond_7

    move v7, v2

    :cond_7
    add-int/2addr v4, v5

    if-lez v4, :cond_9

    .line 1436
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v4

    if-gtz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    :cond_9
    if-eqz v6, :cond_a

    add-int/2addr v6, v3

    add-int/2addr v0, v6

    :cond_a
    if-eqz v7, :cond_b

    add-int/2addr v0, v7

    .line 1445
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_c

    add-int/2addr v4, v3

    .line 1447
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    xor-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1449
    :cond_c
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v4, :cond_d

    .line 1450
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 1452
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1453
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget-object v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    if-ne v5, v6, :cond_e

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz v5, :cond_10

    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1454
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz v4, :cond_f

    goto :goto_1

    :cond_f
    move v2, v3

    :goto_1
    move v4, v2

    .line 1456
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v2, :cond_11

    goto :goto_2

    :cond_11
    move v1, v4

    :goto_2
    if-eqz v1, :cond_12

    add-int/2addr v1, v3

    .line 1460
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1462
    :cond_12
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v1, :cond_13

    .line 1463
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 1465
    :cond_13
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentItemCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 11

    .line 2241
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x5

    return p1

    .line 2244
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 2247
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    const/16 p1, 0x9

    return p1

    .line 2248
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2250
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2251
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v0

    if-ge p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    if-ne p1, v0, :cond_6

    return v1

    .line 2258
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    return v2

    .line 2261
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2263
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_b

    if-nez p1, :cond_9

    return v1

    .line 2266
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_a

    return v3

    .line 2269
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 2272
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p1, :cond_c

    return v1

    .line 2275
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_d

    const/16 p1, 0x8

    return p1

    .line 2278
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 2280
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 2281
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2282
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v6, v4, v5

    if-lez v6, :cond_11

    .line 2283
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v6

    if-gtz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    :cond_f
    if-nez p1, :cond_10

    return v1

    :cond_10
    add-int/lit8 p1, p1, -0x1

    .line 2289
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_12

    .line 2290
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v7, :cond_12

    goto :goto_0

    :cond_12
    move v3, v6

    .line 2293
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    move v0, v2

    goto :goto_1

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    :goto_1
    const/4 v6, 0x4

    if-le v0, v6, :cond_14

    .line 2294
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v7, :cond_14

    move v0, v6

    .line 2297
    :cond_14
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_15

    move v7, v2

    goto :goto_2

    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    .line 2298
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget-object v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    const/4 v10, 0x2

    if-ne v8, v9, :cond_16

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz v8, :cond_18

    :cond_16
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2299
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz v7, :cond_17

    move v7, v6

    goto :goto_3

    :cond_17
    move v7, v10

    .line 2301
    :cond_18
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v8, :cond_19

    move v7, v2

    .line 2304
    :cond_19
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1a

    move v8, v2

    goto :goto_4

    :cond_1a
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v1

    :goto_4
    if-ltz p1, :cond_1b

    if-ge p1, v4, :cond_1b

    return v2

    :cond_1b
    sub-int/2addr p1, v4

    if-ltz p1, :cond_1c

    if-ge p1, v5, :cond_1c

    return v2

    :cond_1c
    sub-int/2addr p1, v5

    if-ltz p1, :cond_1f

    if-ge p1, v3, :cond_1f

    .line 2315
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 2316
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 2317
    check-cast p1, Ljava/lang/String;

    .line 2318
    const-string/jumbo v0, "section"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    :cond_1d
    const/4 p1, 0x7

    return p1

    :cond_1e
    return v2

    :cond_1f
    sub-int/2addr p1, v3

    if-ltz p1, :cond_21

    if-ge p1, v0, :cond_21

    if-nez p1, :cond_20

    return v1

    :cond_20
    return v2

    :cond_21
    sub-int/2addr p1, v0

    if-lez v8, :cond_26

    if-ltz p1, :cond_25

    .line 2336
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v0, :cond_22

    if-ge p1, v8, :cond_25

    goto :goto_5

    :cond_22
    if-gt p1, v8, :cond_25

    :goto_5
    if-nez p1, :cond_23

    return v1

    :cond_23
    if-ne p1, v8, :cond_24

    return v6

    :cond_24
    return v10

    .line 2345
    :cond_25
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    xor-int/2addr v0, v1

    add-int/2addr v8, v0

    sub-int/2addr p1, v8

    :cond_26
    if-ltz p1, :cond_2a

    if-ge p1, v7, :cond_2a

    if-nez p1, :cond_27

    return v1

    .line 2350
    :cond_27
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    return v6

    .line 2352
    :cond_28
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    if-eq p1, v9, :cond_29

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0xa

    return p1

    :cond_29
    return v10

    :cond_2a
    return v6
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentItemsCount()I
    .locals 2

    .line 1387
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    .line 1388
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRecentResultsCount()I
    .locals 1

    .line 1392
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_1

    .line 1393
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasRecentSearch()Z
    .locals 1

    .line 701
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1653
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isGlobalSearch(I)Z
    .locals 8

    .line 1572
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1575
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1578
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 1581
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1582
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v0

    .line 1583
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-le p1, v0, :cond_4

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v0

    .line 1584
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    return v1

    .line 1587
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1590
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1591
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    .line 1592
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1593
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1594
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_6

    .line 1595
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v7, :cond_6

    move v5, v6

    .line 1598
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v2

    :goto_1
    const/4 v6, 0x4

    if-le v0, v6, :cond_8

    .line 1599
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v7, :cond_8

    move v0, v6

    .line 1602
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    if-ltz p1, :cond_9

    if-ge p1, v6, :cond_9

    return v1

    :cond_9
    add-int/2addr v6, v2

    sub-int/2addr p1, v6

    :cond_a
    add-int v6, v4, v3

    if-lez v6, :cond_d

    .line 1609
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v6

    if-gtz v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_b
    if-nez p1, :cond_c

    return v1

    :cond_c
    add-int/lit8 p1, p1, -0x1

    :cond_d
    if-ltz p1, :cond_e

    if-ge p1, v4, :cond_e

    return v1

    :cond_e
    sub-int/2addr p1, v4

    if-ltz p1, :cond_f

    if-ge p1, v3, :cond_f

    return v1

    :cond_f
    sub-int/2addr p1, v3

    if-lez p1, :cond_10

    if-ge p1, v5, :cond_10

    return v1

    :cond_10
    sub-int/2addr p1, v5

    if-lez p1, :cond_11

    if-ge p1, v0, :cond_11

    return v2

    :cond_11
    sub-int/2addr p1, v0

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_2

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    if-lez p1, :cond_13

    if-ge p1, v0, :cond_13

    return v1

    .line 1636
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_3

    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1637
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    if-ne p1, v0, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz p1, :cond_16

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    :cond_16
    return v1
.end method

.method public isHashtagSearch()Z
    .locals 1

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMessagesSearchEndReached()Z
    .locals 4

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isRecentSearchDisplayed()Z
    .locals 2

    .line 721
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasRecentSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSearchWas()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    return v0
.end method

.method public isSearching()Z
    .locals 1

    .line 190
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadMoreSearchMessages()V
    .locals 4

    .line 379
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    return-void

    .line 388
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public loadRecentSearch()V
    .locals 3

    .line 725
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 728
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1769
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x10

    const-string v6, "+"

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    return-void

    .line 2217
    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v12, v0

    check-cast v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 2218
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/telegram/messenger/ContactsController$Contact;

    .line 2219
    iget-object v0, v13, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v2, v13, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2210
    :pswitch_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2211
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 2212
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v8, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2213
    sget v3, Lorg/telegram/messenger/R$string;->AddContactByPhone:I

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v2, v4, v11

    const-string v2, "AddContactByPhone"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 2205
    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 2206
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    div-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->setIndex(I)V

    return-void

    .line 2198
    :pswitch_4
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .line 2199
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2200
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v11, v12

    :cond_0
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setNeedDivider(Z)V

    return-void

    .line 2193
    :pswitch_5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TopicSearchCell;

    .line 2194
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TopicSearchCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void

    .line 2179
    :pswitch_6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    .line 2180
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2181
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v12

    if-eq v2, v3, :cond_1

    move v11, v12

    :cond_1
    iput-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 2182
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 2183
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2184
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v5, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    .line 2186
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    return-void

    :cond_2
    move-object v2, v0

    .line 2188
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v0, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    return-void

    .line 1977
    :pswitch_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1978
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1979
    sget v2, Lorg/telegram/messenger/R$string;->Hashtags:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void

    .line 1986
    :cond_3
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v2, :cond_4

    .line 1988
    sget v2, Lorg/telegram/messenger/R$string;->PublicPostsTabs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->PublicPostsMore:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v11, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void

    .line 1993
    :cond_4
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v12

    sub-int v3, v2, v3

    goto :goto_0

    :cond_5
    move v3, v2

    .line 1995
    :goto_0
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1996
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1997
    :cond_6
    invoke-direct {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1999
    sget v2, Lorg/telegram/messenger/R$string;->ChatHints:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    if-ne v3, v6, :cond_9

    .line 2001
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2002
    iget-boolean v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v2, :cond_8

    .line 2003
    sget v2, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void

    .line 2009
    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void

    .line 2016
    :cond_9
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v6

    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v11

    goto :goto_1

    :cond_a
    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v12

    :goto_1
    add-int/2addr v6, v8

    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v11

    goto :goto_2

    :cond_b
    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v12

    :goto_2
    add-int/2addr v6, v8

    if-ne v3, v6, :cond_c

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2017
    sget v2, Lorg/telegram/messenger/R$string;->SearchAllChatsShort:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2020
    :cond_c
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v6

    sub-int/2addr v3, v6

    .line 2023
    :cond_d
    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2024
    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2025
    iget-object v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v9, :cond_e

    .line 2026
    iget-boolean v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v14, :cond_e

    move v13, v9

    .line 2029
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    move v14, v11

    goto :goto_3

    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v12

    :goto_3
    if-le v14, v7, :cond_10

    .line 2030
    iget-boolean v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v15, :cond_10

    goto :goto_4

    :cond_10
    move v7, v14

    .line 2033
    :goto_4
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_11

    move v14, v11

    goto :goto_5

    :cond_11
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v14, v12

    .line 2034
    :goto_5
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_6

    :cond_12
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2035
    :goto_6
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget-object v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    if-ne v15, v10, :cond_13

    iget-boolean v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->forceLoadingMessages:Z

    if-eqz v10, :cond_14

    :cond_13
    iget-object v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2042
    :cond_14
    iget-object v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_16

    if-nez v3, :cond_15

    .line 2044
    sget v10, Lorg/telegram/messenger/R$string;->Topics:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    .line 2046
    :goto_7
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v12

    sub-int/2addr v3, v15

    goto :goto_8

    :cond_16
    const/4 v10, 0x0

    .line 2048
    :goto_8
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_18

    if-nez v3, :cond_17

    .line 2050
    sget v10, Lorg/telegram/messenger/R$string;->InviteToTelegramShort:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2052
    :cond_17
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v12

    sub-int/2addr v3, v15

    :cond_18
    if-nez v10, :cond_19

    add-int/2addr v6, v8

    sub-int/2addr v3, v6

    if-ltz v3, :cond_1a

    if-ge v3, v13, :cond_1a

    .line 2057
    sget v2, Lorg/telegram/messenger/R$string;->PhoneNumberSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2058
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v9, :cond_19

    .line 2059
    iget-boolean v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 2060
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V

    move-object v3, v10

    move-object v10, v2

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_19
    :goto_a
    move-object v3, v10

    const/4 v2, 0x0

    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_1a
    sub-int/2addr v3, v13

    if-ltz v3, :cond_1b

    if-ge v3, v7, :cond_1b

    .line 2069
    sget v3, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2070
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    if-le v3, v9, :cond_19

    .line 2071
    iget-boolean v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 2072
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v3, v1, v4, v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V

    move-object v2, v10

    move-object v10, v3

    move-object v3, v2

    goto :goto_9

    .line 2131
    :cond_1b
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v2, :cond_1e

    if-lez v14, :cond_1e

    sub-int v2, v3, v7

    if-gt v2, v12, :cond_1e

    .line 2132
    iget v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2133
    sget v3, Lorg/telegram/messenger/R$string;->SearchMessagesIn:I

    if-nez v2, :cond_1c

    const-string v2, "null"

    goto :goto_b

    :cond_1c
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v4, :cond_1d

    iget v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_1d
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_b
    new-array v4, v12, [Ljava/lang/Object;

    aput-object v2, v4, v11

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 2135
    :cond_1e
    iput v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSectionPosition:I

    .line 2136
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getFilterFromString(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2137
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V

    .line 2158
    sget v3, Lorg/telegram/messenger/R$string;->SearchMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v10

    move-object v10, v2

    move-object/from16 v2, v29

    :goto_c
    if-nez v10, :cond_1f

    .line 2164
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1f
    if-eqz v2, :cond_20

    .line 2167
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v4, v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x6

    .line 2168
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightTextMargin(I)V

    return-void

    :cond_20
    if-eqz v11, :cond_21

    .line 2171
    sget v2, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_d
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_21
    sget v2, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_d

    :goto_e
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v4, v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 2172
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightTextMargin(I)V

    return-void

    .line 1771
    :pswitch_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1772
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1773
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v13

    .line 1781
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v0

    .line 1784
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1786
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    if-eqz v10, :cond_25

    .line 1787
    move-object v15, v6

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    .line 1788
    invoke-virtual {v1, v15}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->seenSponsoredPeer(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V

    .line 1789
    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v18, v4

    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const-wide/16 v19, 0x0

    cmp-long v15, v4, v19

    if-ltz v15, :cond_23

    .line 1791
    iget v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 1793
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    .line 1794
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesQuery:Ljava/lang/String;

    invoke-static {v4, v15}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    move-object v15, v5

    const/4 v5, 0x0

    goto :goto_10

    :cond_22
    const/4 v5, 0x0

    :goto_f
    const/4 v15, 0x0

    const/16 v19, 0x0

    goto :goto_10

    .line 1797
    :cond_23
    iget v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 1799
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    .line 1800
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesQuery:Ljava/lang/String;

    invoke-static {v4, v15}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    move-object v15, v5

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_10

    :cond_24
    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_f

    :goto_10
    move/from16 p1, v12

    move-object v11, v15

    move-object/from16 v12, v19

    :goto_11
    const/16 v19, 0x0

    goto/16 :goto_13

    :cond_25
    move/from16 v18, v4

    .line 1803
    instance-of v4, v6, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_26

    .line 1804
    move-object v4, v6

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 1805
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    .line 1806
    iget-object v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesQuery:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move/from16 p1, v12

    move-object v11, v15

    move-object/from16 v12, v19

    const/4 v5, 0x0

    goto :goto_11

    .line 1807
    :cond_26
    instance-of v4, v6, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_28

    .line 1808
    iget v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object v5, v6

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    move v15, v12

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_12

    :cond_27
    move-object v5, v4

    .line 1812
    :goto_12
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    .line 1813
    iget-object v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesQuery:Ljava/lang/String;

    invoke-static {v5, v11}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move/from16 p1, v15

    move-object/from16 v12, v19

    const/4 v4, 0x0

    goto :goto_11

    :cond_28
    move v15, v12

    .line 1814
    instance-of v4, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_29

    .line 1815
    iget v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object v5, v6

    check-cast v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    .line 1816
    iget v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    move-object/from16 v19, v4

    move-object v4, v5

    move/from16 p1, v15

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_13

    :cond_29
    move/from16 p1, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_11

    .line 1819
    :goto_13
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2a

    .line 1820
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    sub-int/2addr v2, v15

    .line 1822
    :cond_2a
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 1823
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v15

    if-ge v2, v15, :cond_2c

    .line 1824
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v2, v15, :cond_2b

    move/from16 v15, p1

    goto :goto_14

    :cond_2b
    const/4 v15, 0x0

    :goto_14
    iput-boolean v15, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    move/from16 v15, p1

    goto :goto_15

    :cond_2c
    const/4 v15, 0x0

    .line 1827
    :goto_15
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v20

    sub-int v2, v2, v20

    goto :goto_16

    :cond_2d
    const/4 v15, 0x0

    .line 1829
    :goto_16
    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1830
    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v2, v8

    .line 1832
    :cond_2e
    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v8

    .line 1833
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v7

    .line 1834
    iget-object v9, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v23, v0

    .line 1835
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v25, v9, v0

    if-lez v25, :cond_30

    .line 1836
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v25

    move/from16 p2, v0

    if-gtz v25, :cond_2f

    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_30
    move/from16 p2, v0

    .line 1839
    :cond_31
    :goto_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v25, v6

    const/4 v6, 0x3

    if-le v0, v6, :cond_32

    .line 1840
    iget-boolean v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v6, :cond_32

    const/4 v0, 0x3

    :cond_32
    if-lez v0, :cond_33

    add-int/lit8 v6, v0, -0x1

    .line 1844
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_33

    add-int/lit8 v6, v0, -0x2

    goto :goto_18

    :cond_33
    move v6, v0

    .line 1847
    :goto_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_34

    const/4 v7, 0x0

    :goto_19
    const/4 v8, 0x4

    goto :goto_1a

    :cond_34
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :goto_1a
    if-le v7, v8, :cond_35

    .line 1848
    iget-boolean v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v8, :cond_35

    const/4 v7, 0x4

    :cond_35
    if-nez v15, :cond_37

    .line 1853
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v8

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v21

    sub-int v8, v8, v21

    add-int/lit8 v8, v8, -0x1

    if-eq v2, v8, :cond_36

    add-int/2addr v6, v9

    add-int v6, v6, p2

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_36

    add-int/2addr v9, v7

    add-int/2addr v9, v0

    add-int v9, v9, p2

    add-int/lit8 v9, v9, -0x1

    if-eq v2, v9, :cond_36

    move/from16 v0, p1

    goto :goto_1b

    :cond_36
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 1858
    :cond_37
    const-string v0, "@"

    if-ltz v2, :cond_39

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_39

    if-nez v4, :cond_39

    .line 1859
    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1860
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_38

    if-eqz v4, :cond_38

    if-eqz v6, :cond_38

    .line 1862
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    :goto_1c
    const/4 v6, 0x0

    goto :goto_1d

    :cond_38
    move-object v6, v2

    const/4 v2, 0x0

    goto :goto_1d

    :cond_39
    const/4 v2, 0x0

    goto :goto_1c

    :goto_1d
    if-nez v2, :cond_4e

    if-eqz v15, :cond_3a

    .line 1869
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    goto :goto_1e

    :cond_3a
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v7

    .line 1870
    :goto_1e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4e

    if-eqz v4, :cond_3b

    .line 1874
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f

    :cond_3b
    if-eqz v5, :cond_3d

    .line 1876
    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v8, :cond_3c

    .line 1877
    iget v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f

    .line 1879
    :cond_3c
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1f

    :cond_3d
    const/4 v8, 0x0

    :goto_1f
    if-eqz v8, :cond_3f

    .line 1882
    invoke-static {v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v21, v2

    const/4 v2, -0x1

    if-eq v9, v2, :cond_3e

    .line 1883
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1884
    new-instance v2, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v2, v8}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v9

    move/from16 v26, v10

    const/16 v10, 0x21

    invoke-virtual {v6, v2, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_21

    :cond_3e
    :goto_20
    move/from16 v26, v10

    goto :goto_21

    :cond_3f
    move-object/from16 v21, v2

    goto :goto_20

    :goto_21
    if-eqz v11, :cond_47

    .line 1887
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v8, p1

    if-le v2, v8, :cond_47

    .line 1889
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1890
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_22
    move v8, v15

    goto :goto_23

    :cond_40
    move-object v2, v7

    goto :goto_22

    .line 1892
    :goto_23
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_24
    if-ge v10, v9, :cond_43

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, v27

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_username;

    move-object/from16 v27, v6

    .line 1893
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v6, :cond_42

    :cond_41
    move-object/from16 v6, v27

    goto :goto_24

    .line 1894
    :cond_42
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1895
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_25

    :cond_43
    move-object/from16 v27, v6

    const/4 v6, 0x0

    :goto_25
    if-nez v6, :cond_46

    .line 1900
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v9, :cond_46

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v10, v10, 0x1

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_username;

    move-object/from16 v28, v6

    .line 1901
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v6, :cond_45

    :cond_44
    move-object/from16 v6, v28

    goto :goto_26

    .line 1902
    :cond_45
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1903
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_27

    :cond_46
    move-object/from16 v28, v6

    move-object/from16 v6, v28

    :goto_27
    if-eqz v6, :cond_48

    move-object v12, v6

    goto :goto_28

    :cond_47
    move-object/from16 v27, v6

    move v8, v15

    :cond_48
    :goto_28
    if-eqz v12, :cond_4d

    if-eqz v4, :cond_49

    if-eqz v23, :cond_4d

    .line 1913
    :cond_49
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v15, 0x1

    .line 1914
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1917
    :cond_4a
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1918
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1919
    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1920
    invoke-static {v12, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4c

    .line 1922
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v0, :cond_4b

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    .line 1928
    :goto_29
    new-instance v7, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    add-int/2addr v6, v0

    const/16 v10, 0x21

    invoke-virtual {v2, v7, v0, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2a

    :catch_0
    move-exception v0

    goto :goto_2c

    :cond_4c
    :goto_2a
    move-object/from16 v6, v27

    :goto_2b
    const/4 v7, 0x0

    goto :goto_2d

    .line 1933
    :goto_2c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v12

    goto :goto_2a

    :cond_4d
    move-object/from16 v2, v21

    goto :goto_2a

    :cond_4e
    move-object/from16 v21, v2

    move/from16 v26, v10

    move v8, v15

    move-object/from16 v2, v21

    goto :goto_2b

    .line 1938
    :goto_2d
    invoke-virtual {v3, v7, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    if-eqz v4, :cond_4f

    .line 1940
    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->selfUserId:J

    cmp-long v0, v9, v11

    if-nez v0, :cond_4f

    iget v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v7, 0x10

    if-eq v0, v7, :cond_4f

    .line 1941
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v23, 0x1

    :goto_2e
    move-object/from16 v20, v6

    goto :goto_2f

    :cond_4f
    const/16 v23, 0x0

    goto :goto_2e

    .line 1945
    :goto_2f
    const-string v0, ", "

    if-eqz v5, :cond_53

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v6, :cond_53

    .line 1947
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_50

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_50

    .line 1948
    const-string v6, "Subscribers"

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_30

    .line 1950
    :cond_50
    const-string v6, "Members"

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1952
    :goto_30
    instance-of v7, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_51

    .line 1953
    move-object v7, v2

    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_31

    .line 1954
    :cond_51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52

    const/4 v7, 0x3

    .line 1955
    new-array v7, v7, [Ljava/lang/CharSequence;

    const/16 v24, 0x0

    aput-object v2, v7, v24

    const/4 v15, 0x1

    aput-object v0, v7, v15

    aput-object v6, v7, v18

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_31

    :cond_52
    move-object v2, v6

    :goto_31
    move-object/from16 v21, v2

    const/4 v15, 0x1

    const/16 v24, 0x0

    goto :goto_33

    :cond_53
    if-eqz v4, :cond_54

    .line 1959
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_54

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-eqz v6, :cond_54

    .line 1960
    const-string v7, "BotUsersShort"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1961
    instance-of v7, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_55

    .line 1962
    move-object v7, v2

    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_54
    const/4 v15, 0x1

    const/16 v24, 0x0

    goto :goto_32

    .line 1963
    :cond_55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_56

    const/4 v7, 0x3

    .line 1964
    new-array v7, v7, [Ljava/lang/CharSequence;

    const/16 v24, 0x0

    aput-object v2, v7, v24

    const/4 v15, 0x1

    aput-object v0, v7, v15

    aput-object v6, v7, v18

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_32
    move-object/from16 v21, v2

    goto :goto_33

    :cond_56
    const/4 v15, 0x1

    const/16 v24, 0x0

    move-object/from16 v21, v6

    .line 1969
    :goto_33
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v3, v8, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowBotOpenButton(ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1970
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setOnSponsoredOptionsClick(Lorg/telegram/messenger/Utilities$Callback2;)V

    if-eqz v26, :cond_57

    .line 1971
    move-object/from16 v10, v25

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;

    goto :goto_34

    :cond_57
    const/4 v10, 0x0

    :goto_34
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setAd(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V

    if-eqz v4, :cond_58

    move-object/from16 v18, v4

    goto :goto_35

    :cond_58
    move-object/from16 v18, v5

    :goto_35
    const/16 v22, 0x1

    move-object/from16 v17, v3

    .line 1972
    invoke-virtual/range {v17 .. v23}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    move-object/from16 v2, v17

    .line 1973
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->isSelected(J)Z

    move-result v0

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v3

    cmp-long v3, v13, v3

    if-nez v3, :cond_59

    move v11, v15

    goto :goto_36

    :cond_59
    move/from16 v11, v24

    :goto_36
    invoke-virtual {v2, v0, v11}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 p1, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1750
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x10

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    :goto_0
    move-object v2, p0

    goto/16 :goto_3

    .line 1738
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesEmptyLayout:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$EmptyLayout;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 1735
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1691
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1700
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/16 v3, 0x9

    .line 1701
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1702
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1703
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1704
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1710
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1711
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1713
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-ne v3, p1, :cond_0

    move v9, v0

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    iget-object v10, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1714
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1725
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1732
    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object p1, v2

    goto :goto_0

    .line 1688
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/HashtagSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1682
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 1683
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1684
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto/16 :goto_0

    .line 1679
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/TopicSearchCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1671
    :pswitch_7
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    move-object p1, v1

    goto :goto_3

    :pswitch_8
    move-object v2, p0

    .line 1667
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :pswitch_9
    move-object v2, p0

    .line 1664
    new-instance v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v4, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    iget v4, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-ne v4, p1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlock(Z)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object p1

    :goto_3
    const/4 v0, 0x5

    const/4 v1, -0x1

    if-ne p2, v0, :cond_2

    .line 1754
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42ac0000    # 86.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 1756
    :cond_2
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    :goto_4
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract openBotApp(Lorg/telegram/tgnet/TLRPC$User;)V
.end method

.method protected abstract openPublicPosts()V
.end method

.method protected abstract openSponsoredOptions(Lorg/telegram/ui/Cells/ProfileSearchCell;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
.end method

.method public putRecentSearch(JLorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 844
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 849
    iput-wide p1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 850
    iput-object p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p3, v1

    iput p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 852
    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 854
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeAd(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 7

    .line 2536
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2537
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    goto/16 :goto_3

    .line 2540
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchPosition()I

    move-result v0

    .line 2541
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto/16 :goto_3

    .line 2543
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2549
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p1

    .line 2550
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 2552
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr p1, v2

    const/4 v2, 0x3

    if-le p1, v2, :cond_3

    .line 2554
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_6

    if-le v1, v2, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    if-le p1, v2, :cond_5

    move p1, v5

    goto :goto_2

    :cond_5
    move p1, v4

    :goto_2
    if-eq v6, p1, :cond_6

    .line 2559
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    if-gtz v3, :cond_7

    .line 2563
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    .line 2564
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz p1, :cond_8

    add-int/lit8 p1, v0, 0x2

    .line 2565
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public removeAllAds()V
    .locals 10

    .line 2570
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2572
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchPosition()I

    move-result v0

    .line 2573
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto/16 :goto_3

    .line 2575
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2581
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2582
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    .line 2583
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2585
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v0, 0x1

    .line 2586
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 2588
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v4, :cond_3

    .line 2590
    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-lez v6, :cond_6

    const/4 v8, 0x1

    if-le v1, v4, :cond_4

    move v9, v8

    goto :goto_1

    :cond_4
    move v9, v7

    :goto_1
    if-le v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move v8, v7

    :goto_2
    if-eq v9, v8, :cond_6

    .line 2595
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    if-gtz v6, :cond_7

    .line 2599
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    .line 2600
    :cond_7
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v5, :cond_8

    rsub-int/lit8 v5, v2, 0x3

    add-int/2addr v0, v5

    .line 2601
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr v3, v5

    sub-int/2addr v1, v4

    .line 2602
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public removeRecentSearch(J)V
    .locals 2

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 914
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 915
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 916
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 917
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 918
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetFilter()V
    .locals 1

    .line 115
    sget-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentMessagesFilter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    return-void
.end method

.method public searchDialogs(Ljava/lang/String;IZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_0

    .line 1138
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    if-eq v2, v3, :cond_1b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_c

    .line 1141
    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 1142
    iput v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    .line 1143
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1144
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1145
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1147
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 1148
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1149
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 1151
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 1152
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1153
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRunnable:Ljava/lang/Runnable;

    .line 1155
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    const/4 v4, 0x1

    if-ltz v2, :cond_4

    .line 1156
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    invoke-virtual {v2, v5, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v2, -0x1

    .line 1157
    iput v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRequest:I

    :cond_4
    if-eqz v1, :cond_5

    .line 1161
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v3

    .line 1165
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 1166
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredQuery:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_9

    .line 1167
    iput-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredQuery:Ljava/lang/String;

    .line 1168
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredPeers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1169
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredReqId:I

    if-eqz v5, :cond_6

    .line 1170
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredReqId:I

    invoke-virtual {v5, v7, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1171
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredReqId:I

    :cond_6
    if-eqz v2, :cond_8

    .line 1173
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-lt v5, v7, :cond_8

    const-string v5, "hide_ads"

    invoke-static {v5, v6}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getBooleanConfigValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->isSponsoredDisabled()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    .line 1176
    :cond_7
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_contacts_getSponsoredPeers;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getSponsoredPeers;-><init>()V

    .line 1177
    iput-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredQuery:Ljava/lang/String;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_contacts_getSponsoredPeers;->q:Ljava/lang/String;

    .line 1178
    iget v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v7, v5, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredReqId:I

    goto :goto_2

    .line 1174
    :cond_8
    :goto_1
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->sponsoredQuery:Ljava/lang/String;

    .line 1195
    :cond_9
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_13

    .line 1196
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 1197
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->unloadRecentHashtags()V

    .line 1198
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1199
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1200
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1201
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsTotalCount:I

    .line 1202
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsLastRate:I

    .line 1203
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsHashtag:Ljava/lang/String;

    .line 1204
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1205
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1206
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_10

    .line 1207
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/16 v5, 0xb

    if-eq v1, v5, :cond_a

    move v12, v4

    goto :goto_3

    :cond_a
    move v12, v6

    :goto_3
    if-eq v1, v5, :cond_b

    move v13, v4

    goto :goto_4

    :cond_b
    move v13, v6

    :goto_4
    if-eq v1, v7, :cond_d

    if-ne v1, v5, :cond_c

    goto :goto_5

    :cond_c
    move v14, v6

    goto :goto_6

    :cond_d
    :goto_5
    move v14, v4

    :goto_6
    if-nez v1, :cond_e

    move/from16 v17, v4

    goto :goto_7

    :cond_e
    move/from16 v17, v6

    .line 1218
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v9

    :goto_8
    move-wide/from16 v20, v9

    goto :goto_9

    :cond_f
    const-wide/16 v9, 0x0

    goto :goto_8

    :goto_9
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1207
    invoke-virtual/range {v8 .. v21}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    .line 1221
    :cond_10
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 1222
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 1223
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1224
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1225
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1226
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_11

    .line 1227
    invoke-interface {v1, v6, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1229
    :cond_11
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-eq v1, v2, :cond_12

    .line 1230
    invoke-direct {v0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics(Ljava/lang/String;)V

    .line 1231
    invoke-direct {v0, v3, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    .line 1232
    invoke-direct {v0, v3, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    .line 1234
    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1235
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1236
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 1237
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v1, :cond_1b

    .line 1238
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-interface {v1, v6, v3, v2, v6}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    .line 1241
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1242
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsTotalCount:I

    .line 1243
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsLastRate:I

    .line 1244
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsHashtag:Ljava/lang/String;

    .line 1245
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1246
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v5, v7, :cond_15

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_15

    .line 1247
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    .line 1248
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1249
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1250
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1251
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v5

    move v7, v6

    .line 1252
    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_14

    .line 1253
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1255
    :cond_14
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1256
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1257
    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1258
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1259
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v5, :cond_16

    .line 1260
    invoke-interface {v5, v6, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    goto :goto_b

    .line 1264
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1267
    :cond_16
    :goto_b
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    const/4 v7, 0x3

    .line 1269
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1270
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1271
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1272
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1273
    iget-object v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v7, :cond_17

    .line 1274
    invoke-interface {v7, v4, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    :cond_17
    if-eqz p3, :cond_1a

    if-eqz v2, :cond_1a

    .line 1279
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1280
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v4, :cond_1a

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-eq v8, v9, :cond_18

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x24

    if-ne v6, v8, :cond_1a

    :cond_18
    const/16 v3, 0x40

    .line 1281
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1282
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-ltz v3, :cond_19

    add-int/2addr v3, v4

    .line 1284
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_19
    move-object v3, v6

    .line 1298
    :cond_1a
    sget-object v6, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0, v2, v5, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v6, v7, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    if-eqz v3, :cond_1b

    .line 1340
    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    add-int/2addr v6, v4

    iput v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1341
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0, v5, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;)V

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchHashtagRunnable:Ljava/lang/Runnable;

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1b
    :goto_c
    return-void
.end method

.method public seenSponsoredPeer(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2609
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->seenSponsoredPeers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2610
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->random_id:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 2617
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->seenSponsoredPeers:Ljava/util/HashSet;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->random_id:[B

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2618
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_viewSponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_viewSponsoredMessage;-><init>()V

    .line 2619
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->random_id:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_viewSponsoredMessage;->random_id:[B

    .line 2620
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    return-void
.end method

.method public setFilterDialogIds(Ljava/util/ArrayList;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterDialogIds:Ljava/util/ArrayList;

    return-void
.end method

.method public setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V
    .locals 3

    .line 2362
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2364
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, p2, v0}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
