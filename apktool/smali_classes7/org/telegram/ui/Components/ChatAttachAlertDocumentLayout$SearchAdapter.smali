.class public Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private clearCurrentResultsRunnable:Ljava/lang/Runnable;

.field private currentDataQuery:Ljava/lang/String;

.field private currentSearchDialogId:J

.field private currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field private currentSearchFilters:Ljava/util/ArrayList;

.field private currentSearchMaxDate:J

.field private currentSearchMinDate:J

.field private endReached:Z

.field private firstLoading:Z

.field private isLoading:Z

.field private lastMessagesSearchString:Ljava/lang/String;

.field private lastSearchFilterQueryString:Ljava/lang/String;

.field private localSearchRunnable:Ljava/lang/Runnable;

.field private localTipChats:Ljava/util/ArrayList;

.field private localTipDates:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;

.field private final messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

.field public messages:Ljava/util/ArrayList;

.field public messagesById:Landroid/util/SparseArray;

.field private nextSearchRate:I

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private requestIndex:I

.field private searchResult:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field public sectionArrays:Ljava/util/HashMap;

.field public sections:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;


# direct methods
.method public static synthetic $r8$lambda$3063dzi9bMD_UISt2_IsffygYwE(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$searchGlobal$4(JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4PXWLWw74bAiZGlojxMgBZplQfo(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$searchGlobal$3(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7r8urnWo32cUu-6M3ybulMVmot0(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$search$0(Ljava/lang/String;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RJGWkF24QKT8CGx6vxK6pgUTuaA(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$updateSearchResults$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TE0O6Pa_kQjBrXFUgVcwfvNfT1w(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$searchGlobal$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcp64mL-mncofSO5a-mWQvu0JFc(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$search$1(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSearchFilters(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoading(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageHashIdTmp(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddSearchFilter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V
    .locals 3

    .line 1556
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1510
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1522
    new-instance p1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 1528
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    .line 1529
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    .line 1531
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    .line 1532
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messagesById:Landroid/util/SparseArray;

    .line 1533
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    .line 1534
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    .line 1536
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 1540
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->firstLoading:Z

    .line 1541
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 1544
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    .line 1557
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 2

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1663
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1664
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isSameType(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1671
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchFieldText(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1672
    invoke-direct {p0, p1, v0, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$search$0(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 8

    .line 1581
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1583
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 1586
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1587
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    add-int/2addr v4, v3

    .line 1590
    new-array v5, v4, [Ljava/lang/String;

    .line 1591
    aput-object v0, v5, v2

    if-eqz v1, :cond_4

    .line 1593
    aput-object v1, v5, v3

    .line 1596
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_9

    move p2, v2

    .line 1599
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_9

    .line 1600
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    .line 1601
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_8

    .line 1605
    aget-object v6, v5, v3

    .line 1608
    iget-object v7, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 1609
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    if-eqz v6, :cond_7

    .line 1612
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1619
    :cond_9
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$search$1(Ljava/lang/String;)V
    .locals 4

    .line 1575
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->-$$Nest$fgetitems(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1576
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->-$$Nest$fgethistory(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->-$$Nest$fgetrecentItems(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1579
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1580
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;ZLjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$searchGlobal$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    move-object/from16 v1, p12

    .line 1875
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1878
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 1880
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1882
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1883
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void

    .line 1887
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 1889
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1890
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->nextSearchRate:I

    .line 1891
    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, v4, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1892
    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1893
    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-nez p5, :cond_2

    .line 1895
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1896
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1897
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1898
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 1900
    :cond_2
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 1901
    iput-object p6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentDataQuery:Ljava/lang/String;

    .line 1902
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v3, p1

    :goto_0
    if-ge v3, p3, :cond_4

    move-object/from16 v4, p7

    .line 1904
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 1905
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 1907
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1911
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1915
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_5

    .line 1916
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1918
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p2, :cond_6

    move p2, v2

    goto :goto_1

    :cond_6
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->endReached:Z

    .line 1920
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1921
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentDataQuery:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-wide/16 v3, 0x0

    cmp-long p2, p8, v3

    if-nez p2, :cond_7

    cmp-long p2, p10, v3

    if-nez p2, :cond_7

    .line 1922
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1923
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleFiles:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1926
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1928
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    if-nez p5, :cond_e

    .line 1933
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_9

    .line 1935
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1937
    :cond_9
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x3

    if-lt p2, v1, :cond_d

    sget p2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "saved messages"

    invoke-virtual {p2, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_a
    move p2, p1

    .line 1939
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_c

    .line 1940
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b

    .line 1941
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1947
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1950
    :cond_d
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1951
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1952
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentDataQuery:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1954
    :cond_e
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->firstLoading:Z

    const/4 p2, 0x0

    const/4 v0, -0x1

    :goto_5
    if-ge p1, p3, :cond_10

    .line 1958
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1959
    instance-of v3, v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_f

    .line 1961
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    move v0, p2

    move-object p2, v1

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    if-eqz p2, :cond_11

    .line 1966
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1968
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetloadingView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-le p1, v2, :cond_13

    :cond_12
    if-eqz p2, :cond_14

    .line 1970
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    invoke-direct {p3, p0, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Landroid/view/View;I)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2021
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$searchGlobal$3(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    .line 1863
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p12, :cond_0

    .line 1865
    move-object/from16 v0, p11

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1866
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1868
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v2, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v7, p2

    .line 1869
    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p2

    .line 1874
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object/from16 v5, p1

    move/from16 v2, p3

    move/from16 v6, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v4, p11

    move-object/from16 v3, p12

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchGlobal$4(JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-object/from16 v10, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    const/16 v4, 0x14

    const/4 v5, 0x0

    const-wide/16 v16, 0x3e8

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    .line 1799
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1800
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1801
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1802
    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1803
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    cmp-long v4, p5, v2

    if-lez v4, :cond_0

    .line 1805
    div-long v11, p5, v16

    long-to-int v4, v11

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    :cond_0
    cmp-long v2, p7, v2

    if-lez v2, :cond_1

    .line 1808
    div-long v2, p7, v16

    long-to-int v2, v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_date:I

    :cond_1
    if-eqz p9, :cond_2

    .line 1810
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1811
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1812
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    goto :goto_0

    .line 1814
    :cond_2
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :goto_0
    move-object v12, v0

    goto/16 :goto_3

    .line 1818
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1819
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1820
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1821
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object v8, v11

    .line 1825
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 1826
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 1827
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 1828
    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    cmp-long v4, p5, v2

    if-lez v4, :cond_5

    .line 1830
    div-long v11, p5, v16

    long-to-int v4, v11

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    :cond_5
    cmp-long v4, p7, v2

    if-lez v4, :cond_6

    .line 1833
    div-long v11, p7, v16

    long-to-int v4, v11

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->max_date:I

    :cond_6
    if-eqz p9, :cond_9

    .line 1835
    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1836
    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1837
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 1838
    iget v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->nextSearchRate:I

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 1840
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, v11, v2

    if-eqz v5, :cond_7

    :goto_1
    neg-long v2, v11

    goto :goto_2

    .line 1842
    :cond_7
    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v11, v2

    if-eqz v2, :cond_8

    goto :goto_1

    .line 1845
    :cond_8
    iget-wide v2, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1847
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_0

    .line 1849
    :cond_9
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 1850
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 1851
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_0

    .line 1856
    :goto_3
    iput-object v10, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 1857
    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastSearchFilterQueryString:Ljava/lang/String;

    .line 1860
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0, v11}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1862
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda3;

    move-object/from16 v2, p4

    move/from16 v5, p9

    move/from16 v4, p11

    move-object v3, v10

    move-object v10, v8

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v13, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$updateSearchResults$5(Ljava/util/ArrayList;)V
    .locals 2

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2032
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2035
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2036
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private searchGlobal(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v0, p7

    .line 1745
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget v12, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v5, 0x1

    aput-object v10, v13, v5

    const/4 v10, 0x2

    aput-object v11, v13, v10

    const/4 v15, 0x3

    aput-object v12, v13, v15

    const/4 v10, 0x4

    aput-object p8, v13, v10

    const-string v10, "%d%d%d%d%s"

    invoke-static {v4, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1746
    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastSearchFilterQueryString:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    if-nez v10, :cond_1

    if-eqz p9, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v14

    .line 1748
    :goto_1
    iget-wide v12, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchDialogId:J

    cmp-long v12, v2, v12

    if-nez v12, :cond_2

    iget-wide v12, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMinDate:J

    cmp-long v12, v12, v6

    if-nez v12, :cond_2

    iget-wide v12, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMaxDate:J

    cmp-long v12, v12, v8

    .line 1749
    :cond_2
    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 1750
    iput-wide v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchDialogId:J

    .line 1751
    iput-wide v6, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMinDate:J

    .line 1752
    iput-wide v8, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMaxDate:J

    .line 1753
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1754
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1756
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v10, :cond_4

    if-eqz p9, :cond_4

    return-void

    :cond_4
    if-eqz v4, :cond_6

    .line 1761
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1762
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1763
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1764
    iput-boolean v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    .line 1765
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 1766
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    .line 1767
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    add-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    .line 1768
    iput-boolean v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->firstLoading:Z

    .line 1769
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1770
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1772
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1773
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1775
    :cond_6
    iput-boolean v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    .line 1776
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    if-nez v10, :cond_7

    .line 1779
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1780
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    xor-int/lit8 v4, p9, 0x1

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1783
    :cond_7
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1784
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1785
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1786
    invoke-direct {v1, v14, v0, v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    .line 1789
    :cond_8
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    add-int/lit8 v12, v0, 0x1

    iput v12, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    .line 1792
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    .line 1794
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda2;

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v10, :cond_9

    .line 2024
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_9
    const-wide/16 v2, 0x15e

    .line 1794
    :goto_2
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2025
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetloadingView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void
.end method

.method private updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1680
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ge v1, v5, :cond_3

    .line 1681
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isMedia()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v7

    goto :goto_1

    .line 1683
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v5, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-ne v5, v6, :cond_1

    move v3, v7

    goto :goto_1

    .line 1685
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v5, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    move v4, v7

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 1691
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v1, v7

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    const/4 v5, 0x0

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_b

    if-eqz p2, :cond_8

    .line 1694
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move-object p2, v5

    :goto_3
    if-eqz p3, :cond_9

    .line 1695
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    move-object p3, v5

    :goto_4
    if-nez p2, :cond_a

    if-eqz p3, :cond_b

    .line 1698
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Adapters/FiltersView;->setUsersAndDates(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    move p1, v7

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v0

    :goto_6
    if-nez p1, :cond_c

    .line 1702
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2, v5, v5, v0}, Lorg/telegram/ui/Adapters/FiltersView;->setUsersAndDates(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1704
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_d

    .line 1705
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_e

    :cond_d
    if-nez p1, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_f

    :cond_e
    return-void

    .line 1708
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    if-eqz p1, :cond_10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_10
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1709
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 1710
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_11
    const/4 p2, 0x0

    const/high16 p3, 0x42300000    # 44.0f

    if-eqz p4, :cond_17

    if-eqz p1, :cond_12

    .line 1714
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p4

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1716
    :cond_12
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fputfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/animation/AnimatorSet;)V

    .line 1717
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz p1, :cond_13

    .line 1718
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    goto :goto_7

    :cond_13
    move v3, p2

    :goto_7
    new-array v4, v7, [F

    aput v3, v4, v0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v3

    if-eqz p1, :cond_14

    move v4, p2

    goto :goto_8

    .line 1719
    :cond_14
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    :goto_8
    new-array v5, v7, [F

    aput v4, v5, v0

    invoke-static {v3, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetloadingView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v4

    if-eqz p1, :cond_15

    .line 1720
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_9

    :cond_15
    move v5, p2

    :goto_9
    new-array v8, v7, [F

    aput v5, v8, v0

    invoke-static {v4, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    if-eqz p1, :cond_16

    .line 1721
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p2, p1

    :cond_16
    new-array p1, v7, [F

    aput p2, p1, v0

    invoke-static {v5, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v6, [Landroid/animation/Animator;

    aput-object v1, p2, v0

    aput-object v3, p2, v7

    const/4 p3, 0x2

    aput-object v4, p2, p3

    const/4 p3, 0x3

    aput-object p1, p2, p3

    .line 1717
    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1722
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1731
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1732
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1733
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersViewAnimator(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1735
    :cond_17
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1736
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    if-eqz p1, :cond_18

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_a

    :cond_18
    move v1, p2

    :goto_a
    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1737
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p4

    if-eqz p1, :cond_19

    move v1, p2

    goto :goto_b

    :cond_19
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :goto_b
    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1738
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetloadingView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p4

    if-eqz p1, :cond_1a

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_c

    :cond_1a
    move v1, p2

    :goto_c
    invoke-virtual {p4, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1739
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p4

    if-eqz p1, :cond_1b

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    :cond_1b
    invoke-virtual {p4, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1740
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetfiltersView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    if-eqz p1, :cond_1c

    goto :goto_d

    :cond_1c
    move v0, v6

    :goto_d
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 2029
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    if-nez p1, :cond_0

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2082
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_3

    .line 2083
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2085
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    return v0

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 2058
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 2059
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2063
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 2066
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    sub-int/2addr p2, p1

    if-ltz p2, :cond_2

    .line 2067
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 2068
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2229
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->getSectionCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 2233
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-nez p1, :cond_2

    .line 2234
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x2

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    .line 2256
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 2257
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 3

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->endReached:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    .line 2095
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    if-nez v0, :cond_0

    .line 2097
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2098
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    const v2, -0xd000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2100
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 2105
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2106
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2107
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2108
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 2110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_2

    .line 2112
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2113
    sget p1, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2115
    :cond_2
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    .line 2117
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 2101
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-object v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 0

    .line 2042
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public loadMore()V
    .locals 11

    .line 1647
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->endReached:Z

    if-nez v0, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    if-nez v8, :cond_0

    goto :goto_0

    .line 1650
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchDialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMinDate:J

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMaxDate:J

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchGlobal(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 2245
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 2246
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$mupdateEmptyView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    return-void
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 2154
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto/16 :goto_3

    .line 2178
    :cond_1
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-nez p1, :cond_4

    .line 2180
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    .line 2181
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2182
    iget v9, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    if-eqz v9, :cond_2

    .line 2183
    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2185
    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2186
    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    iget-object v8, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2188
    :goto_0
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz p2, :cond_3

    .line 2189
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    return-void

    .line 2191
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {v4, v1, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    return-void

    :cond_4
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_5

    .line 2195
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    add-int/lit8 p2, p2, -0x1

    .line 2198
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2199
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_7

    goto/16 :goto_3

    .line 2203
    :cond_7
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2204
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_8

    move v4, v3

    goto :goto_1

    :cond_8
    move v4, v1

    .line 2205
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v3

    if-ne p2, p3, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    if-eqz p1, :cond_a

    :cond_9
    move v1, v3

    :cond_a
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2206
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$4;

    invoke-direct {p2, p0, v0, v2, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/ui/Cells/SharedDocumentCell;Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_b
    add-int/lit8 p1, p1, -0x1

    .line 2161
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_c

    goto :goto_3

    .line 2166
    :cond_c
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_d

    .line 2168
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 2169
    sget p1, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2171
    :cond_d
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    .line 2173
    :goto_2
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    .line 2144
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p2, -0x8100

    .line 2145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 2137
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x3

    .line 2138
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 2139
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto :goto_0

    .line 2132
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    if-ne p2, v0, :cond_2

    move p1, v0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, p1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    .line 2133
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDrawDownloadIcon(Z)V

    move-object p1, v1

    goto :goto_0

    .line 2128
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2148
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2149
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 13

    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localSearchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1562
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1563
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localSearchRunnable:Ljava/lang/Runnable;

    .line 1565
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1567
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1569
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1572
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1574
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1624
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetcanSelectOnlyImageFiles(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->-$$Nest$fgethistory(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move-wide v6, v4

    move-wide v8, v6

    .line 1628
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 1630
    iget v1, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 1631
    iget-object v0, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_4

    .line 1632
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_2
    move-wide v4, v0

    goto :goto_3

    .line 1633
    :cond_4
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_6

    .line 1634
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    goto :goto_2

    :cond_5
    const/4 v3, 0x6

    if-ne v1, v3, :cond_6

    .line 1637
    iget-object v0, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

    iget-wide v6, v0, Lorg/telegram/ui/Adapters/FiltersView$DateData;->minDate:J

    .line 1638
    iget-wide v0, v0, Lorg/telegram/ui/Adapters/FiltersView$DateData;->maxDate:J

    move-wide v8, v0

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1642
    :cond_7
    sget-object v0, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    const/4 v1, 0x2

    aget-object v10, v0, v1

    move-object v3, p0

    move-object v11, p1

    move v12, p2

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchGlobal(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method
