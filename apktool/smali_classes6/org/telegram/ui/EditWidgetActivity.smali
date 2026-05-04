.class public Lorg/telegram/ui/EditWidgetActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/EditWidgetActivity$ListAdapter;,
        Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;,
        Lorg/telegram/ui/EditWidgetActivity$TouchHelperCallback;,
        Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;
    }
.end annotation


# instance fields
.field private chatsEndRow:I

.field private chatsStartRow:I

.field private currentWidgetId:I

.field private delegate:Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

.field private infoRow:I

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private listAdapter:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private previewImageView:Landroid/widget/ImageView;

.field private previewRow:I

.field private rowCount:I

.field private selectChatsRow:I

.field private selectedDialogs:Ljava/util/ArrayList;

.field private widgetPreviewCell:Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

.field private widgetType:I


# direct methods
.method public static synthetic $r8$lambda$F5mmdFkYH5KZw4tbCCE7dccoYMA(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/EditWidgetActivity;->lambda$createView$1(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TlEk8lkaKP_GRPRHsOAntdmzobg(Lorg/telegram/ui/EditWidgetActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/EditWidgetActivity;->lambda$createView$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchatsEndRow(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->chatsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatsStartRow(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->chatsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentWidgetId(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->currentWidgetId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->delegate:Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinfoRow(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->infoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/telegram/ui/EditWidgetActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->listAdapter:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->previewImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewRow(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->previewRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectChatsRow(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectChatsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwidgetPreviewCell(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetPreviewCell:Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwidgetType(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity;->previewImageView:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwidgetPreviewCell(Lorg/telegram/ui/EditWidgetActivity;Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetPreviewCell:Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishActivity(Lorg/telegram/ui/EditWidgetActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/EditWidgetActivity;->finishActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/EditWidgetActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/EditWidgetActivity;->updateRows()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 729
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    .line 730
    iput p1, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetType:I

    .line 731
    iput p2, p0, Lorg/telegram/ui/EditWidgetActivity;->currentWidgetId:I

    .line 732
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 733
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 734
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/EditWidgetActivity;->currentWidgetId:I

    iget v3, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetType:I

    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->getWidgetDialogIds(IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 735
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v5, p2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 736
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 737
    invoke-direct {p0}, Lorg/telegram/ui/EditWidgetActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/EditWidgetActivity;)I
    .locals 0

    .line 87
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private finishActivity()V
    .locals 3

    .line 900
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 904
    new-instance v0, Lorg/telegram/ui/EditWidgetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/EditWidgetActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EditWidgetActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$createView$0(Ljava/util/ArrayList;)V
    .locals 1

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 847
    invoke-direct {p0}, Lorg/telegram/ui/EditWidgetActivity;->updateRows()V

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetPreviewCell:Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    if-eqz p1, :cond_0

    .line 849
    invoke-virtual {p1}, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->updateDialogs()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8

    .line 842
    iget p2, p0, Lorg/telegram/ui/EditWidgetActivity;->selectChatsRow:I

    if-ne p3, p2, :cond_0

    .line 843
    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;-><init>(Landroid/content/Context;ILandroidx/collection/LongSparseArray;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 844
    new-instance p1, Lorg/telegram/ui/EditWidgetActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/EditWidgetActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/EditWidgetActivity;)V

    iget-object p2, v6, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->setDelegate(Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;Ljava/util/ArrayList;)V

    .line 852
    iget-object p1, v6, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->setSelectedContacts(Ljava/util/ArrayList;)V

    .line 853
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_0
    move-object v6, p0

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 749
    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->previewRow:I

    const/4 v0, 0x1

    add-int v1, v0, v0

    .line 750
    iput v1, p0, Lorg/telegram/ui/EditWidgetActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectChatsRow:I

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 752
    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->chatsStartRow:I

    .line 753
    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->chatsEndRow:I

    goto :goto_0

    .line 755
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EditWidgetActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->chatsStartRow:I

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->rowCount:I

    .line 757
    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->chatsEndRow:I

    .line 759
    :goto_0
    iget v0, p0, Lorg/telegram/ui/EditWidgetActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/EditWidgetActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/EditWidgetActivity;->infoRow:I

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->listAdapter:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 774
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 778
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EditWidgetActivity;->widgetType:I

    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->WidgetChats:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->WidgetShortcuts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 783
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 784
    sget v2, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/EditWidgetActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/EditWidgetActivity$1;-><init>(Lorg/telegram/ui/EditWidgetActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 827
    new-instance v0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;-><init>(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->listAdapter:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    .line 829
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 830
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 831
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 833
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 834
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 835
    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 836
    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/EditWidgetActivity;->listAdapter:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 837
    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 838
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/EditWidgetActivity$TouchHelperCallback;

    invoke-direct {v1, p0}, Lorg/telegram/ui/EditWidgetActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/EditWidgetActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 840
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/EditWidgetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/EditWidgetActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 856
    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/EditWidgetActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/EditWidgetActivity$2;-><init>(Lorg/telegram/ui/EditWidgetActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29

    move-object/from16 v0, p0

    .line 1060
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lorg/telegram/ui/Cells/TextCell;

    aput-object v12, v5, v11

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    move/from16 v9, v20

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v15, v2, v3

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v10, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v11

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v10, [Ljava/lang/Class;

    const-class v13, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v13, v5, v11

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v10, [Ljava/lang/Class;

    aput-object v13, v2, v11

    const-string v3, "textView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v10, [Ljava/lang/Class;

    aput-object v12, v4, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/EditWidgetActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move/from16 v28, v23

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity;->delegate:Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1051
    invoke-direct {p0}, Lorg/telegram/ui/EditWidgetActivity;->finishActivity()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1054
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 742
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->loadDialogs(Lorg/telegram/messenger/AccountInstance;)V

    .line 743
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    .line 744
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public setDelegate(Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity;->delegate:Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

    return-void
.end method
