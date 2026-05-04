.class public Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareSearchAdapter"
.end annotation


# instance fields
.field categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

.field categoryListView:Landroidx/recyclerview/widget/RecyclerView;

.field private context:Landroid/content/Context;

.field firstEmptyViewCell:I

.field hintsCell:I

.field internalDialogsIsSearching:Z

.field itemsCount:I

.field lastFilledItem:I

.field private lastGlobalSearchId:I

.field lastItemCont:I

.field private lastLocalSearchId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field recentDialogsStartRow:I

.field resentTitleCell:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;

.field searchResultsStartRow:I

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchRunnable2:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$1bGLfrwAAt1v4YfooAiAfnQU9Xg(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$updateSearchResults$2(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRIrbXa-K-Sfp5PmfTnaAZTYg6s(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogs$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L96UGBN3h-V2z4gDzPdl7rMx30s(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogsInternal$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N2leCj1fsSDLiXy7aIlYyot2xnY(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3477
    check-cast p0, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3478
    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3479
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    iget p1, p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

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

.method public static synthetic $r8$lambda$YpQNtdwmkUE2_3YLdF7aSpIRhCA(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$onCreateViewHolder$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ypqdu1vkjoaE2VBVrCjU_hBse8E(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogs$4(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlastLocalSearchId(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastLocalSearchId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchId(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdapterHelper(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastGlobalSearchId(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastGlobalSearchId:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 1

    .line 3270
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3258
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    .line 3259
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    .line 3260
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    .line 3261
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    .line 3262
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResultsStartRow:I

    .line 3263
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    const/4 v0, 0x0

    .line 3302
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    .line 3271
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    .line 3272
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ZLorg/telegram/ui/Components/ShareAlert;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 3278
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Landroid/view/View;I)V
    .locals 6

    .line 3742
    check-cast p1, Lorg/telegram/ui/Cells/HintDialogCell;

    .line 3743
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$7500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 3744
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 3748
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 3750
    :cond_0
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    :goto_0
    neg-long v1, v1

    goto :goto_1

    .line 3752
    :cond_1
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 3755
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HintDialogCell;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3756
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2, p1, v1, v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mshowPremiumBlockedToast(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;J)V

    return-void

    .line 3759
    :cond_3
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 3760
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v3, 0x0

    invoke-static {p2, v3, v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mselectDialog(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 3761
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    const/4 v0, 0x1

    if-ltz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/HintDialogCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$3(ILjava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 3569
    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 3570
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 3573
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v12, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$4(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3566
    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 3567
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    .line 3568
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$1(Ljava/lang/String;I)V
    .locals 20

    move-object/from16 v1, p0

    .line 3306
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 3308
    iput v3, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 3309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_18

    .line 3312
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3313
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    add-int/2addr v7, v4

    .line 3316
    new-array v8, v7, [Ljava/lang/String;

    .line 3317
    aput-object v0, v8, v6

    if-eqz v2, :cond_4

    .line 3319
    aput-object v2, v8, v4

    .line 3322
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3326
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 3327
    iget-object v10, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$7800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10

    .line 3328
    :cond_5
    :goto_1
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3329
    invoke-virtual {v10, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 3330
    new-instance v13, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    invoke-direct {v13}, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;-><init>()V

    .line 3331
    invoke-virtual {v10, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    iput v14, v13, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    .line 3332
    invoke-virtual {v9, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3334
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3335
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 3336
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3338
    :cond_6
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v13

    if-eqz v13, :cond_5

    neg-long v11, v11

    .line 3339
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 3340
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3344
    :cond_7
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3346
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ";;;"

    const-string v12, ","

    const-string v13, "@"

    const-string v15, " "

    if-nez v10, :cond_14

    .line 3347
    :try_start_1
    iget-object v10, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$7900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v0, v14, v6

    invoke-static {v5, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    move v3, v6

    .line 3348
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    .line 3349
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    .line 3350
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3351
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v5, 0x0

    .line 3355
    :cond_8
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v4, -0x1

    if-eq v14, v4, :cond_9

    add-int/lit8 v14, v14, 0x3

    .line 3357
    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    move v14, v6

    :goto_4
    if-ge v6, v7, :cond_12

    move/from16 v17, v3

    .line 3360
    aget-object v3, v8, v6

    .line 3361
    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    move/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v5, :cond_a

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_d

    .line 3363
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v14, 0x2

    goto :goto_6

    :cond_b
    move/from16 v18, v6

    :cond_c
    :goto_5
    const/4 v14, 0x1

    :cond_d
    :goto_6
    if-eqz v14, :cond_11

    const/4 v6, 0x0

    .line 3367
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 3369
    invoke-virtual {v4, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v4, v5, v6}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 3370
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move-object v6, v11

    .line 3371
    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3372
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v10, :cond_e

    move-object/from16 v19, v6

    const/4 v11, 0x1

    .line 3373
    invoke-virtual {v0, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v10, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_7

    :cond_e
    move-object/from16 v19, v6

    const/4 v11, 0x1

    :goto_7
    if-ne v14, v11, :cond_f

    .line 3376
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v10, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_8

    .line 3378
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v6, v10, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 3380
    :goto_8
    iput-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 3381
    iget-object v3, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    add-int/lit8 v3, v17, 0x1

    goto :goto_b

    :cond_10
    :goto_9
    move-object/from16 v19, v11

    goto :goto_a

    :cond_11
    move-object/from16 v19, v11

    add-int/lit8 v6, v18, 0x1

    move/from16 v3, v17

    goto/16 :goto_4

    :cond_12
    move/from16 v17, v3

    goto :goto_9

    :goto_a
    move/from16 v3, v17

    :goto_b
    move-object/from16 v11, v19

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_13
    move/from16 v17, v3

    move-object/from16 v19, v11

    .line 3388
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move/from16 v3, v17

    goto :goto_c

    :cond_14
    move-object/from16 v19, v11

    const/4 v3, 0x0

    .line 3391
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3392
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$8000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT data, name FROM chats WHERE uid IN(%s)"

    invoke-static {v12, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3393
    :cond_15
    :goto_d
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v11, 0x1

    .line 3394
    invoke-virtual {v0, v11}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 3395
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3396
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v4, 0x0

    :cond_16
    const/4 v5, 0x0

    :goto_e
    if-ge v5, v7, :cond_15

    .line 3400
    aget-object v6, v8, v5

    .line 3401
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_17

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    if-eqz v4, :cond_18

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_17

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    :cond_17
    const/4 v10, 0x0

    goto :goto_f

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3402
    :goto_f
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 3404
    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    invoke-static {v2, v4, v10}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 3405
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v4, :cond_15

    .line 3406
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_1a

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v2, :cond_19

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_1a

    :cond_19
    iget-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_15

    .line 3407
    :cond_1a
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3408
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 3409
    iput-object v4, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 3410
    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 3418
    :cond_1b
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3421
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 3422
    :goto_10
    invoke-virtual {v9}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 3423
    invoke-virtual {v9, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3424
    iget-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    .line 3425
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3429
    :cond_1e
    iget-object v2, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 3430
    :goto_11
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x3

    .line 3431
    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v3

    .line 3432
    invoke-virtual {v9, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v5, 0x2

    .line 3435
    invoke-virtual {v2, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 3436
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3437
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v10, 0x0

    :cond_20
    move-object/from16 v6, v19

    .line 3441
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v11, -0x1

    if-eq v4, v11, :cond_21

    add-int/lit8 v4, v4, 0x3

    .line 3443
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_21
    const/4 v4, 0x0

    :goto_12
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v7, :cond_27

    .line 3446
    aget-object v5, v8, v14

    .line 3447
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_23

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_23

    if-eqz v10, :cond_22

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_22

    goto :goto_14

    :cond_22
    if-eqz v4, :cond_24

    .line 3449
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    const/4 v12, 0x2

    goto :goto_15

    :cond_23
    :goto_14
    const/4 v12, 0x1

    :cond_24
    :goto_15
    if-eqz v12, :cond_28

    const/4 v11, 0x0

    .line 3453
    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 3455
    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    invoke-static {v3, v4, v11}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 3456
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3457
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    invoke-direct {v3}, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;-><init>()V

    .line 3458
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v10, :cond_25

    const/4 v14, 0x1

    .line 3459
    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3461
    :cond_25
    iget-object v10, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    move-object/from16 v19, v6

    move v11, v7

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 3462
    iput-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    const/4 v6, 0x1

    if-ne v12, v6, :cond_26

    .line 3464
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    goto :goto_16

    .line 3466
    :cond_26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 3468
    :goto_16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    move-object/from16 v19, v6

    move v11, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_17

    :cond_28
    move-object/from16 v19, v6

    move v11, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    add-int/lit8 v14, v14, 0x1

    move v7, v11

    move-object/from16 v6, v19

    const/4 v5, 0x2

    const/4 v11, -0x1

    goto/16 :goto_13

    :goto_17
    move v7, v11

    goto/16 :goto_11

    .line 3474
    :cond_29
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3476
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move/from16 v2, p2

    .line 3487
    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 3489
    :goto_18
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$2(ILjava/util/ArrayList;)V
    .locals 4

    .line 3496
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 3499
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    const/4 v0, 0x0

    .line 3500
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    .line 3501
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastLocalSearchId:I

    .line 3502
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastGlobalSearchId:I

    if-eq v1, p1, :cond_1

    .line 3503
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 3505
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 3506
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ShareAlert;I)V

    .line 3507
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    move p1, v0

    .line 3509
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_5

    .line 3510
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3511
    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    .line 3512
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 3513
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_1

    .line 3514
    :cond_3
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_4

    .line 3515
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3516
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3519
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v0

    .line 3520
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    :cond_7
    if-eqz p1, :cond_8

    .line 3522
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ShareAlert;I)V

    .line 3524
    :cond_8
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 3525
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3526
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    .line 3527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p2

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    if-nez p2, :cond_9

    .line 3528
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_3

    .line 3530
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 3532
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3533
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mcheckCurrentList(Lorg/telegram/ui/Components/ShareAlert;Z)V

    return-void
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 2

    .line 3304
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;I)V
    .locals 1

    .line 3495
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 3

    .line 3616
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    if-ltz v0, :cond_3

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 3618
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3621
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 3622
    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 3623
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 3624
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 3625
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-object v0

    .line 3626
    :cond_1
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_2

    .line 3627
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-object v0

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_4

    return-object v1

    .line 3637
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 3638
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    .line 3640
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3642
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 3643
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 3644
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 3645
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 3646
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    .line 3647
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-object v0

    .line 3648
    :cond_6
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_7

    .line 3649
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    return-object v0

    :cond_7
    return-object v1
.end method

.method public getItemCount()I
    .locals 5

    const/4 v0, 0x0

    .line 3584
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    const/4 v1, -0x1

    .line 3585
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    .line 3586
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    .line 3587
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    .line 3588
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResultsStartRow:I

    .line 3589
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    .line 3591
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3592
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    add-int/lit8 v0, v0, 0x2

    .line 3593
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3596
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    .line 3597
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    .line 3598
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    .line 3600
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    .line 3601
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v1

    .line 3603
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    .line 3604
    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResultsStartRow:I

    .line 3605
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    .line 3607
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    .line 3608
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 3610
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    .line 3612
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 3879
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 3881
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3883
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 3885
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 3888
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x5

    return p1
.end method

.method public getSpanSize(II)I
    .locals 1

    .line 3896
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3899
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemViewType(I)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 3660
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3789
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 3871
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne v2, v4, :cond_11

    .line 3872
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 3797
    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_a

    .line 3798
    iget v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    const-wide/16 v10, 0x0

    if-ltz v3, :cond_6

    if-lt v2, v3, :cond_6

    sub-int v3, v2, v3

    .line 3800
    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 3801
    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 3802
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v13, :cond_2

    .line 3803
    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 3804
    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3805
    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 3806
    :cond_2
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v13, :cond_3

    .line 3807
    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3808
    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    .line 3809
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    .line 3810
    :cond_3
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v13, :cond_4

    .line 3811
    move-object v12, v3

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    .line 3813
    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ShareAlert;->access$7200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v13

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 3815
    iget-wide v10, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3816
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v13}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3819
    :cond_4
    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v13

    .line 3820
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    if-eqz v6, :cond_5

    .line 3822
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eq v14, v7, :cond_5

    .line 3823
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3824
    new-instance v6, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move/from16 v17, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$7300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v6, v15, v4}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v14

    invoke-virtual {v7, v6, v14, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v19, v3

    move-object/from16 v21, v7

    :goto_2
    move-object/from16 v20, v12

    goto :goto_3

    :cond_5
    move/from16 v17, v4

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    goto :goto_2

    :cond_6
    move/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v19

    goto :goto_2

    .line 3829
    :goto_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_8

    .line 3830
    move-object/from16 v18, v3

    check-cast v18, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v24}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 3831
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_7

    move v8, v9

    :cond_7
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    return-void

    :cond_8
    move-object/from16 v6, v21

    .line 3832
    instance-of v1, v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v1, :cond_11

    .line 3833
    check-cast v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v10, v11}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_9

    move v8, v9

    :cond_9
    invoke-virtual {v3, v10, v11, v8, v6}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    return-void

    :cond_a
    move/from16 v17, v4

    add-int/2addr v2, v7

    .line 3838
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 3839
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3840
    iget-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 3841
    iget-object v3, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object v13, v3

    :goto_4
    move-object v11, v6

    goto :goto_7

    .line 3843
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 3844
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    .line 3845
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    .line 3846
    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_c

    .line 3847
    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 3848
    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3849
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 3851
    :cond_c
    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3852
    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    .line 3853
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 3855
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v4

    .line 3856
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    if-eqz v3, :cond_d

    .line 3858
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-eq v13, v7, :cond_d

    .line 3859
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3860
    new-instance v3, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ShareAlert;->access$7400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v13

    invoke-virtual {v7, v3, v13, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v13, v7

    :goto_6
    move-wide v4, v10

    goto :goto_4

    :cond_d
    move-object v13, v3

    goto :goto_6

    .line 3865
    :goto_7
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v6, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v6, :cond_f

    .line 3866
    move-object v10, v3

    check-cast v10, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 3867
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_e

    move v8, v9

    :cond_e
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    return-void

    .line 3868
    :cond_f
    instance-of v1, v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v1, :cond_11

    .line 3869
    check-cast v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_10

    move v8, v9

    :cond_10
    invoke-virtual {v3, v4, v5, v8, v13}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const/4 p1, 0x1

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    const/4 v2, -0x1

    if-eq p2, v0, :cond_1

    .line 3682
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3683
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetdarkTheme(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetlinkToCopy(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42da0000    # 109.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42600000    # 56.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object v3, p0

    goto/16 :goto_2

    .line 3672
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3673
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3775
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$6;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$6;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;)V

    goto :goto_1

    .line 3767
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$7000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3768
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setTextColor(I)V

    .line 3769
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$7100(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3770
    sget p1, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3687
    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3696
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    .line 3697
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 3698
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 3699
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;)V

    .line 3705
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 3706
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3707
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v3, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3741
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_2

    :cond_5
    move-object v3, p0

    .line 3677
    new-instance p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, v3, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v1, v3, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->useCustomPaints()Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlock(Z)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object p2

    .line 3784
    :goto_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_0

    .line 3539
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3542
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 3543
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3544
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 3545
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 3547
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 3548
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3549
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 3551
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3552
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 3553
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 3554
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3555
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mcheckCurrentList(Lorg/telegram/ui/Components/ShareAlert;Z)V

    .line 3557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3558
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ShareAlert;I)V

    const/4 p1, -0x1

    .line 3559
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 3560
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    goto :goto_0

    .line 3562
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    .line 3563
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 3564
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 3565
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 3577
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mcheckCurrentList(Lorg/telegram/ui/Components/ShareAlert;Z)V

    return-void
.end method
