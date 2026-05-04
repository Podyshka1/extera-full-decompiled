.class Lorg/telegram/ui/DialogsActivity$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createSearchViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$Y-OjtIOa4OkFcNzHjwydbggUieo(Lorg/telegram/ui/DialogsActivity$49;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$49;->lambda$needClearList$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gNcaJ49DW0H3kRCsb7UHyS9yXN4(Lorg/telegram/ui/DialogsActivity$49;JLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity$49;->lambda$needRemoveHint$0(JLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcqYk4xvLXk4911OyxlpN-IzFE8(Lorg/telegram/ui/DialogsActivity$49;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$49;->lambda$needClearList$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 12885
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$needClearList$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 12978
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    return-void
.end method

.method private synthetic lambda$needClearList$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 12984
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12985
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    return-void

    .line 12987
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentHashtags()V

    return-void
.end method

.method private synthetic lambda$needRemoveHint$0(JLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 12961
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MediaDataController;->removePeer(J)V

    return-void
.end method


# virtual methods
.method public didPressedBlockedDialog(Landroid/view/View;J)V
    .locals 1

    .line 12905
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mshowPremiumBlockedToast(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;J)V

    return-void
.end method

.method public didPressedOnSubDialog(J)V
    .locals 7

    .line 12910
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetonlySelect(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12911
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mvalidateSlowModeDialog(Lorg/telegram/ui/DialogsActivity;J)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 12914
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12915
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/DialogsActivity;->addOrRemoveSelectedDialog(JLandroid/view/View;)Z

    move-result v0

    .line 12916
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mfindAndUpdateCheckBox(Lorg/telegram/ui/DialogsActivity;JZ)V

    .line 12917
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateSelectedCount(Lorg/telegram/ui/DialogsActivity;)V

    .line 12918
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 12920
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JJZZ)V

    return-void

    :cond_2
    move-wide v1, p1

    .line 12923
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 12924
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12925
    const-string/jumbo p2, "user_id"

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 12927
    :cond_3
    const-string p2, "chat_id"

    neg-long v3, v1

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 12929
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcloseSearch(Lorg/telegram/ui/DialogsActivity;)V

    .line 12930
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    if-eqz p2, :cond_5

    move p2, v0

    .line 12931
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    array-length v3, v3

    if-ge p2, v3, :cond_4

    .line 12932
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetopenedDialogId(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v4

    iput-wide v1, v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 12934
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateVisibleRows(Lorg/telegram/ui/DialogsActivity;I)V

    .line 12936
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchString(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 12937
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12938
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 12939
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 12942
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12943
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public getSearchForumDialogId()J
    .locals 2

    .line 13014
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/TopicsFragment;

    if-eqz v0, :cond_0

    .line 13015
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSelected(J)Z
    .locals 1

    .line 13009
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public needClearList()V
    .locals 4

    .line 12973
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12974
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearchWas()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12975
    sget v1, Lorg/telegram/messenger/R$string;->ClearSearchAlertPartialTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12976
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentResultsCount()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ClearSearchAlertPartial"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12977
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 12981
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->ClearSearchAlertTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12982
    sget v1, Lorg/telegram/messenger/R$string;->ClearSearchAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12983
    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12991
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12992
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 12993
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 12994
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 12996
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public needRemoveHint(J)V
    .locals 5

    .line 12951
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12954
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 12958
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12959
    sget v2, Lorg/telegram/messenger/R$string;->ChatHintsDeleteAlertTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12960
    sget v2, Lorg/telegram/messenger/R$string;->ChatHintsDeleteAlert:I

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "ChatHintsDeleteAlert"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12961
    sget v0, Lorg/telegram/messenger/R$string;->StickersRemove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$49;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12962
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12963
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 12964
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 12965
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 12967
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public runResultsEnterAnimation()V
    .locals 1

    .line 13002
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13003
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager;->runResultsEnterAnimation()V

    :cond_0
    return-void
.end method

.method public searchStateChanged(ZZ)V
    .locals 2

    .line 12888
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move p2, v1

    .line 12891
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchWas(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 12892
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12895
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    .line 12893
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 12898
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 12899
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->cancelEnterAnimation()V

    :cond_4
    return-void
.end method
