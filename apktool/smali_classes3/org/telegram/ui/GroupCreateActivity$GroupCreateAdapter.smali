.class public Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCreateAdapter"
.end annotation


# instance fields
.field private final contacts:Ljava/util/ArrayList;

.field private final context:Landroid/content/Context;

.field private createCallLinkRow:I

.field private currentItemsCount:I

.field private firstSectionRow:I

.field private inviteViaLink:I

.field private miniAppsRow:I

.field private noContactsStubRow:I

.field private premiumRow:I

.field private final searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;

.field private searchResultNames:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field private searching:Z

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;

.field private userTypesHeaderRow:I

.field private usersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$OIySeqS4ewPstYVlDemwkgnTaxk(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->lambda$searchDialogs$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qo7b59WIAM7iHRoIMZMdUXwGSRg(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->lambda$searchDialogs$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RH3IAntsBIY-51eLkygd5x5rY20(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->lambda$searchDialogs$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSC6Gel0kDnRp5tYVozyIfmOTR0(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j6JNJrPLz8Niyd9O99j8ZgedbAk(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pjaTpKsIzaiIVjjBCCA6M-dkQsY(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->lambda$updateSearchResults$5(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcreateCallLinkRow(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->createCallLinkRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstSectionRow(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinviteViaLink(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnoContactsStubRow(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->noContactsStubRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearching(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 8

    .line 1434
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 1412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 1417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    .line 1435
    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    .line 1437
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1438
    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    .line 1439
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1440
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1441
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1444
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1447
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisNeverShare(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisAlwaysShare(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisCall(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1448
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 1449
    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisCall(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1450
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_b

    .line 1451
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1452
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 1455
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1456
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 1459
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    iget-wide v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1463
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v2, v1

    :goto_4
    if-ge v2, p2, :cond_b

    .line 1464
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1465
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    .line 1468
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1469
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez v4, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_9

    goto :goto_5

    .line 1472
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1475
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/GroupCreateActivity$Comparator;

    invoke-direct {p2}, Lorg/telegram/ui/GroupCreateActivity$Comparator;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    move p2, v1

    .line 1477
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    if-eqz p1, :cond_c

    .line 1479
    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->-$$Nest$smgetName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->-$$Nest$smgetName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1480
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/GroupCreateActivity$Letter;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->-$$Nest$smgetName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/GroupCreateActivity$Letter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d
    add-int/lit8 p2, p2, 0x1

    move-object p1, v0

    goto :goto_6

    .line 1486
    :cond_e
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 1487
    new-instance p2, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method private firstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1498
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$0(I)V
    .locals 2

    .line 1488
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->currentItemsCount:I

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mshowItemsAnimated(Lorg/telegram/ui/GroupCreateActivity;I)V

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1492
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 1

    .line 1653
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputselectedPremium(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 1654
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1655
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetspansContainer(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeAllSpans(Z)V

    .line 1656
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckVisibleRows(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 1657
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mupdateEditTextHint(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$2(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1847
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1848
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1849
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 1852
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1853
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

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

    .line 1856
    new-array v7, v6, [Ljava/lang/String;

    .line 1857
    aput-object v1, v7, v3

    if-eqz v2, :cond_4

    .line 1859
    aput-object v2, v7, v5

    .line 1862
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    .line 1865
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 1866
    iget-object v9, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 1871
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v10, :cond_5

    .line 1872
    move-object v11, v9

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1873
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v12, v13}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 1874
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 1875
    :cond_5
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v11, :cond_e

    .line 1876
    move-object v11, v9

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1877
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1878
    invoke-static {v11}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v11

    .line 1882
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1883
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v13, 0x0

    :cond_6
    move v14, v3

    move v15, v14

    :goto_3
    if-ge v14, v6, :cond_e

    .line 1888
    aget-object v3, v7, v14

    .line 1889
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v13, :cond_7

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_9

    .line 1891
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v15, 0x2

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v15, 0x1

    :cond_9
    :goto_5
    if-eqz v15, :cond_d

    const/4 v4, 0x1

    if-ne v15, v4, :cond_c

    if-eqz v10, :cond_b

    .line 1898
    move-object v5, v9

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 1899
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    const/4 v10, 0x0

    goto :goto_7

    .line 1900
    :cond_b
    instance-of v5, v9, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_a

    .line 1901
    move-object v5, v9

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1902
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5, v10, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1905
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v5, v10, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    :goto_7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    goto :goto_8

    :cond_d
    const/4 v4, 0x1

    const/16 v16, 0x0

    add-int/lit8 v14, v14, 0x1

    move v5, v4

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_e
    move v4, v5

    const/16 v16, 0x0

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1912
    :cond_f
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$3(Ljava/lang/String;)V
    .locals 12

    .line 1845
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisAlwaysShare(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisNeverShare(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 1846
    sget-object p1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$searchDialogs$4(Ljava/lang/String;)V
    .locals 1

    .line 1844
    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$5(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1920
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1923
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1924
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1925
    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 1926
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 1927
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->currentItemsCount:I

    invoke-static {p1, p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mshowItemsAnimated(Lorg/telegram/ui/GroupCreateActivity;I)V

    .line 1928
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 1929
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 1930
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1919
    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 9

    const/4 v0, -0x1

    .line 1547
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->noContactsStubRow:I

    .line 1548
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->userTypesHeaderRow:I

    .line 1549
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->createCallLinkRow:I

    .line 1550
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstSectionRow:I

    .line 1551
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->premiumRow:I

    .line 1552
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->miniAppsRow:I

    .line 1553
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1555
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1556
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v2

    if-eqz v3, :cond_0

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 1561
    :cond_0
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->currentItemsCount:I

    return v0

    .line 1565
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisCall(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1566
    iput v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->createCallLinkRow:I

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1568
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetallowPremium(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 1569
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstSectionRow:I

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->userTypesHeaderRow:I

    add-int/lit8 v0, v0, 0x2

    .line 1570
    iput v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->premiumRow:I

    goto :goto_1

    .line 1571
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetallowMiniApps(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    .line 1572
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstSectionRow:I

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->userTypesHeaderRow:I

    add-int/lit8 v0, v0, 0x2

    .line 1573
    iput v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->miniAppsRow:I

    goto :goto_1

    .line 1575
    :cond_4
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstSectionRow:I

    .line 1577
    :goto_1
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    .line 1578
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1579
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetaddToGroup(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1580
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/GroupCreateActivity;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 1581
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/GroupCreateActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1582
    invoke-static {v3, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    iput v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    goto :goto_3

    .line 1583
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetchannelId(Lorg/telegram/ui/GroupCreateActivity;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-eqz v3, :cond_7

    .line 1584
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetchannelId(Lorg/telegram/ui/GroupCreateActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1585
    invoke-static {v3, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x2

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iput v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    goto :goto_3

    .line 1587
    :cond_7
    iput v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    .line 1589
    :goto_3
    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    if-eqz v3, :cond_8

    .line 1590
    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    add-int/lit8 v0, v0, 0x1

    :cond_8
    if-nez v0, :cond_9

    .line 1595
    iput v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->noContactsStubRow:I

    add-int/lit8 v0, v0, 0x1

    .line 1599
    :cond_9
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->currentItemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1775
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1776
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 1781
    :cond_1
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->createCallLinkRow:I

    const/4 v3, 0x2

    if-ne p1, v0, :cond_2

    return v3

    .line 1784
    :cond_2
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->userTypesHeaderRow:I

    if-ne p1, v0, :cond_3

    return v2

    .line 1787
    :cond_3
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->premiumRow:I

    if-eq p1, v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->miniAppsRow:I

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 1790
    :cond_4
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    return v3

    .line 1793
    :cond_5
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->noContactsStubRow:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x3

    return p1

    .line 1796
    :cond_6
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    sub-int v3, p1, v0

    if-ltz v3, :cond_7

    sub-int v0, p1, v0

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 1797
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/GroupCreateActivity$Letter;

    if-eqz p1, :cond_7

    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 5

    .line 1511
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    if-lt p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1514
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 1517
    instance-of v0, p1, Lorg/telegram/ui/GroupCreateActivity$Letter;

    if-eqz v0, :cond_1

    .line 1518
    check-cast p1, Lorg/telegram/ui/GroupCreateActivity$Letter;

    iget-object p1, p1, Lorg/telegram/ui/GroupCreateActivity$Letter;->letter:Ljava/lang/String;

    return-object p1

    .line 1519
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 1520
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1521
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1522
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 1524
    :cond_2
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1525
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object p1, v1

    .line 1528
    :goto_0
    sget v2, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 1529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1530
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1531
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1532
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1535
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1536
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1537
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1538
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    .line 1806
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 1807
    aput p2, p3, p1

    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 1819
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1820
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetignoreUsers(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v0, :cond_2

    .line 1821
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 1822
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object p1

    .line 1823
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 1824
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetignoreUsers(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-gez p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1430
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mupdateEditTextHint(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 1638
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_c

    .line 1757
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1758
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->createCallLinkRow:I

    if-ne p2, v0, :cond_1

    .line 1759
    sget p2, Lorg/telegram/messenger/R$string;->GroupCallCreateLink:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_link_create2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1760
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    return-void

    .line 1761
    :cond_1
    iget p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->inviteViaLink:I

    if-ne p2, v1, :cond_2

    .line 1762
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1763
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    return-void

    .line 1765
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1766
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    return-void

    .line 1664
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 1668
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1670
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1671
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz p2, :cond_4

    if-ge p2, v0, :cond_4

    .line 1674
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    :cond_4
    if-lt p2, v0, :cond_5

    add-int v6, v5, v0

    if-ge p2, v6, :cond_5

    .line 1676
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    sub-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    :cond_5
    add-int v6, v0, v5

    if-le p2, v6, :cond_6

    add-int/2addr v4, v0

    add-int/2addr v4, v5

    if-gt p2, v4, :cond_6

    .line 1678
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    sub-int v6, p2, v0

    sub-int/2addr v6, v5

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    :cond_6
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_c

    .line 1684
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_7

    .line 1685
    move-object v5, v4

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_1

    .line 1686
    :cond_7
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1d

    .line 1687
    move-object v5, v4

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    .line 1691
    :goto_1
    const-string v6, "@"

    if-ge p2, v0, :cond_8

    .line 1692
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_d

    .line 1693
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1694
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v9, v3

    move-object v3, p2

    move-object p2, v9

    goto :goto_3

    :cond_8
    if-le p2, v0, :cond_c

    .line 1699
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1700
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object p2

    .line 1701
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1702
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1706
    :cond_9
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1707
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1708
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1709
    invoke-static {v5, p2}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    .line 1710
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez v6, :cond_a

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 1716
    :goto_2
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr p2, v6

    const/16 v8, 0x21

    invoke-virtual {v0, v7, v6, p2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    move-object p2, v3

    move-object v3, v0

    goto :goto_3

    :catch_0
    move-object p2, v3

    move-object v3, v5

    goto :goto_3

    :cond_c
    move-object p2, v3

    :cond_d
    :goto_3
    move-object v9, v3

    move-object v3, p2

    move-object p2, v9

    goto :goto_6

    .line 1725
    :cond_e
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->premiumRow:I

    if-ne p2, v0, :cond_10

    .line 1726
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setPremium()V

    .line 1727
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedPremium(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object p2

    if-eqz p2, :cond_f

    goto :goto_4

    :cond_f
    move v1, v2

    :goto_4
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    return-void

    .line 1729
    :cond_10
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->miniAppsRow:I

    if-ne p2, v0, :cond_12

    .line 1730
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setMiniapps()V

    .line 1731
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedMiniApps(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object p2

    if-eqz p2, :cond_11

    goto :goto_5

    :cond_11
    move v1, v2

    :goto_5
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    return-void

    .line 1734
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    sub-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    move-object p2, v3

    .line 1736
    :goto_6
    invoke-virtual {p1, v4, v3, p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1738
    instance-of p2, v4, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v5, 0x0

    if-eqz p2, :cond_13

    .line 1739
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_7

    .line 1740
    :cond_13
    instance-of p2, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_14

    .line 1741
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    goto :goto_7

    :cond_14
    move-wide v3, v5

    :goto_7
    cmp-long p2, v3, v5

    if-eqz p2, :cond_1d

    .line 1746
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetignoreUsers(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetignoreUsers(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_15

    .line 1747
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1748
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto/16 :goto_c

    .line 1750
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_16

    move p2, v1

    goto :goto_8

    :cond_16
    move p2, v2

    :goto_8
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1751
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto/16 :goto_c

    .line 1640
    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1641
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-eqz v0, :cond_18

    .line 1642
    sget v0, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1643
    :cond_18
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->userTypesHeaderRow:I

    if-ne p2, v0, :cond_19

    .line 1644
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyUserTypes:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1645
    :cond_19
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    sub-int v2, p2, v0

    if-ltz v2, :cond_1a

    sub-int v0, p2, v0

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->usersStartRow:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    .line 1647
    instance-of v2, v0, Lorg/telegram/ui/GroupCreateActivity$Letter;

    if-eqz v2, :cond_1a

    .line 1648
    check-cast v0, Lorg/telegram/ui/GroupCreateActivity$Letter;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$Letter;->letter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    :cond_1a
    :goto_9
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->firstSectionRow:I

    if-ne p2, v0, :cond_1d

    .line 1652
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedPremium(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_a

    :cond_1b
    const-string p2, ""

    goto :goto_b

    :cond_1c
    :goto_a
    sget p2, Lorg/telegram/messenger/R$string;->DeselectAll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_b
    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)V

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    :cond_1d
    :goto_c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1630
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1615
    :cond_0
    new-instance p2, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v1, v2, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Landroid/content/Context;Landroid/view/View;I)V

    .line 1622
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoContacts:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 1612
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1, v0, p1, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 1609
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1633
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1812
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v0, :cond_0

    .line 1813
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 14

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1833
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1834
    iput-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1837
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1838
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1839
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 1840
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisAlwaysShare(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetisNeverShare(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 1841
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 1843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1844
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public setSearching(Z)V
    .locals 1

    .line 1502
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1505
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    .line 1506
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    return-void
.end method
