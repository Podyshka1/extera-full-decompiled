.class public Lorg/telegram/ui/ProxyListActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProxyListActivity$ListAdapter;,
        Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;
    }
.end annotation


# instance fields
.field private callsDetailRow:I

.field private callsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private connectionsHeaderRow:I

.field private currentConnectionState:I

.field private deleteAllRow:I

.field private deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private proxyAddRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private proxyEndRow:I

.field private proxyList:Ljava/util/List;

.field private proxyReactToVpnRow:I

.field private proxyShadowRow:I

.field private proxyStartRow:I

.field private rotationRow:I

.field private rotationTimeoutInfoRow:I

.field private rotationTimeoutRow:I

.field private rowCount:I

.field private selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedItems:Ljava/util/List;

.field private shareMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private useProxyForCalls:Z

.field private useProxyRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private useProxySettings:Z

.field private useProxyShadowRow:I

.field private wasCheckedAllList:Z


# direct methods
.method public static synthetic $r8$lambda$5pbN7G-OeBs-h_eBQYt4oGxgPw4(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 3

    .line 740
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const/4 v0, 0x0

    .line 741
    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 743
    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/16 p1, 0x0

    .line 744
    iput-wide p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    goto :goto_0

    .line 746
    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 747
    iput-boolean v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    .line 749
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Am53lbAaQ-5Se33vlbtVLH5cXLQ(Lorg/telegram/ui/ProxyListActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CLEmxyRvj05gnPRqC9RSzO2kR6k(Lorg/telegram/ui/ProxyListActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity;->lambda$didReceivedNotification$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F0ntdD2Sew06w0Fb3gFNj5r5cho(ZLorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 10

    .line 681
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-wide/16 v1, 0x0

    const-wide/32 v3, -0x30d40

    if-ne v0, p1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    move-wide v5, v1

    .line 682
    :goto_0
    iget-boolean v7, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/32 v8, 0x186a0

    if-nez v7, :cond_1

    add-long/2addr v5, v8

    :cond_1
    if-ne v0, p2, :cond_2

    move-wide v1, v3

    .line 686
    :cond_2
    iget-boolean v3, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v3, :cond_3

    add-long/2addr v1, v8

    :cond_3
    const-wide/16 v3, 0x2710

    if-eqz p0, :cond_4

    if-eq p1, v0, :cond_4

    .line 689
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v5, p1

    mul-long/2addr v5, v3

    goto :goto_1

    :cond_4
    iget-wide v7, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr v5, v7

    :goto_1
    if-eqz p0, :cond_5

    .line 690
    sget-object p0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eq p2, p0, :cond_5

    sget-object p0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v3

    goto :goto_2

    :cond_5
    iget-wide p0, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr p0, v1

    .line 689
    :goto_2
    invoke-static {v5, v6, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Zr3C7Q5IHK0x6b6GyBefJfhAwP0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 547
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$fKUpFekaDNgcoZmQND-nbUv6U20(Lorg/telegram/ui/ProxyListActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h5zabSx3CbhuYDougxr6SeiuRKk(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 1

    .line 739
    new-instance v0, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iwbWUZq1kVjpDPspaBgi41lKSh0(Lorg/telegram/ui/ProxyListActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallsDetailRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->callsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionsHeaderRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->connectionsHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentConnectionState(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteAllRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ProxyListActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyAddRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyAddRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyList(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyReactToVpnRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyShadowRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrotationTimeoutInfoRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrotationTimeoutRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedCountTextView(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseProxyForCalls(Lorg/telegram/ui/ProxyListActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseProxySettings(Lorg/telegram/ui/ProxyListActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseProxyShadowRow(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputuseProxyForCalls(Lorg/telegram/ui/ProxyListActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuseProxySettings(Lorg/telegram/ui/ProxyListActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/ProxyListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private checkProxyList()V
    .locals 11

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 734
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 735
    iget-boolean v3, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 738
    iput-boolean v3, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    .line 739
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v6, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v7, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v8, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v9, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    new-instance v10, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda5;

    invoke-direct {v10, v2}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->proxyCheckPingId:J

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    const/4 p1, 0x0

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 511
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->deleteProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    goto :goto_0

    .line 513
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 514
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 515
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 516
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 517
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 p1, 0x1

    .line 518
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    .line 519
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 520
    iget v0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->clearSelected()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 396
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    const-string v3, "proxy_enabled"

    const-string v4, "proxy_secret"

    const-string v5, "proxy_port"

    const-string v6, "proxy_user"

    const-string v7, "proxy_pass"

    const-string v8, "proxy_ip"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v1, v2, :cond_5

    .line 397
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v1, :cond_1

    .line 398
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 401
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    if-nez v1, :cond_1

    .line 402
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    .line 403
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 404
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 408
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 412
    :cond_0
    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 416
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    xor-int/2addr v1, v10

    iput-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 417
    invoke-direct {v0, v10}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    .line 419
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    .line 421
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 422
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 423
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    if-nez v1, :cond_3

    .line 424
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 427
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 429
    :cond_2
    iput-boolean v9, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 432
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 433
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    iget-boolean v10, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v11, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v12, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v13, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v14, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v15, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static/range {v10 .. v15}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 438
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 439
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 441
    iget v1, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    :goto_1
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge v1, v2, :cond_11

    .line 442
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_4

    .line 444
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 445
    invoke-virtual {v2}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 448
    :cond_5
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    if-ne v1, v2, :cond_6

    .line 449
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    xor-int/2addr v1, v10

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    .line 450
    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 451
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 452
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 454
    invoke-direct {v0, v10}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return-void

    .line 455
    :cond_6
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyReactToVpnRow:I

    if-ne v1, v2, :cond_7

    .line 456
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    xor-int/2addr v2, v10

    sput-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    const-string v3, "doNotUseProxyWithVpn"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 458
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 459
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkProxyForVpnState()V

    return-void

    .line 460
    :cond_7
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    const-string v11, "proxy_enabled_calls"

    if-ne v1, v2, :cond_8

    .line 461
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    xor-int/2addr v1, v10

    iput-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 462
    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 463
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 464
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 465
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    invoke-interface {v1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 467
    :cond_8
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    if-lt v1, v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge v1, v2, :cond_f

    .line 468
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 469
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->toggleSelected(I)V

    return-void

    .line 472
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    iget v12, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    sub-int/2addr v1, v12

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 473
    iput-boolean v10, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 474
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 475
    iget-object v12, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    iget-object v8, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    iget-object v7, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    iget v6, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    iget-object v5, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-boolean v4, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    iget-object v3, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 482
    iput-boolean v9, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 483
    invoke-interface {v2, v11, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    :cond_a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 487
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    :goto_2
    iget v3, v0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge v2, v3, :cond_d

    .line 488
    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v3, :cond_c

    .line 490
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 491
    invoke-static {v3}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcurrentInfo(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object v4

    if-ne v4, v1, :cond_b

    move v4, v10

    goto :goto_3

    :cond_b
    move v4, v9

    :goto_3
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setChecked(Z)V

    .line 492
    invoke-virtual {v3}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 495
    :cond_d
    invoke-direct {v0, v9}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_e

    .line 498
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 499
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 501
    :cond_e
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v3, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v4, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v5, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 502
    :cond_f
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyAddRow:I

    if-ne v1, v2, :cond_10

    .line 503
    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 504
    :cond_10
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    if-ne v1, v2, :cond_11

    .line 505
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAllProxiesConfirm:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 507
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 508
    sget v2, Lorg/telegram/messenger/R$string;->DeleteProxyTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 509
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 525
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v2, -0x1

    .line 527
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 529
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)Z
    .locals 0

    .line 534
    iget p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge p2, p1, :cond_0

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->toggleSelected(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$didReceivedNotification$7(Landroid/view/View;)V
    .locals 2

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 772
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    if-eqz v0, :cond_1

    .line 773
    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 774
    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcurrentInfo(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setChecked(Z)V

    .line 775
    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    :cond_1
    return-void
.end method

.method private reloadSettingsFromPreferences()V
    .locals 3

    .line 632
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 633
    const-string v1, "proxy_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 634
    const-string v1, "proxy_enabled_calls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    return-void
.end method

.method private updateRows(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 639
    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    const/4 v1, 0x1

    add-int v2, v1, v1

    .line 640
    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyReactToVpnRow:I

    .line 641
    iget-boolean v2, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 642
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    .line 643
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, v2, 0x2

    .line 644
    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    add-int/lit8 v2, v2, 0x3

    .line 645
    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    goto :goto_0

    .line 647
    :cond_0
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    .line 648
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    goto :goto_0

    .line 651
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    .line 652
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    .line 653
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    .line 655
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    if-ne v2, v3, :cond_2

    .line 656
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyShadowRow:I

    goto :goto_1

    .line 658
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyShadowRow:I

    .line 660
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->connectionsHeaderRow:I

    if-eqz p1, :cond_8

    .line 663
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 664
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-boolean v2, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    if-nez v2, :cond_6

    .line 668
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 669
    iget-boolean v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v5, :cond_4

    iget-wide v4, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez v2, :cond_7

    .line 675
    iput-boolean v1, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    goto :goto_3

    :cond_6
    move v2, v0

    .line 680
    :cond_7
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    new-instance v5, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 694
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 695
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    .line 696
    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    .line 697
    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    goto :goto_4

    .line 699
    :cond_9
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    .line 700
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    .line 702
    :goto_4
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyAddRow:I

    const/4 v5, 0x2

    add-int/2addr v2, v5

    .line 703
    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    .line 704
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    .line 713
    :cond_a
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 714
    :cond_b
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    .line 715
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->callsDetailRow:I

    if-nez p1, :cond_e

    if-eqz v0, :cond_e

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_6

    .line 705
    :cond_c
    :goto_5
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    if-ne v2, v3, :cond_d

    move v0, v1

    .line 706
    :cond_d
    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    add-int/2addr v2, v5

    .line 707
    iput v2, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->callsDetailRow:I

    if-nez p1, :cond_e

    if-eqz v0, :cond_e

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 721
    :cond_e
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_f

    .line 722
    iget v0, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    goto :goto_7

    .line 724
    :cond_f
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    .line 726
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/ProxyListActivity;->checkProxyList()V

    if-eqz p1, :cond_10

    .line 727
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    if-eqz p1, :cond_10

    .line 728
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_10
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ProxySettings:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProxyListActivity$1;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 380
    new-instance v0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    .line 382
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 383
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 386
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 387
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 388
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 389
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 390
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 391
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 392
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lorg/telegram/ui/ProxyListActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 393
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 542
    new-instance v3, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v4, 0x12

    .line 543
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 544
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 545
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 546
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x48

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v4, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 549
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_share:I

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ProxyListActivity;->shareMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 550
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ProxyListActivity$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ProxyListActivity$2;-><init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 769
    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 770
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    .line 779
    invoke-direct {p0, v1}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return-void

    .line 780
    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 781
    invoke-direct {p0}, Lorg/telegram/ui/ProxyListActivity;->reloadSettingsFromPreferences()V

    .line 782
    invoke-direct {p0, v2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return-void

    .line 783
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, v0, :cond_3

    .line 784
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 785
    iget p2, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    if-eq p2, p1, :cond_9

    .line 786
    iput p1, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    sget-object p1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz p1, :cond_9

    .line 788
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 790
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_2

    .line 792
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 793
    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    .line 797
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 798
    invoke-direct {p0, v2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return-void

    .line 802
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    if-ne p1, p2, :cond_9

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    .line 804
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 805
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 807
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_4

    .line 809
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 810
    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    .line 815
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    if-nez p1, :cond_8

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 817
    iget-boolean p3, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez p3, :cond_6

    iget-wide p2, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    :cond_6
    move v1, v2

    :cond_7
    if-nez v1, :cond_8

    .line 823
    iput-boolean v2, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    :cond_8
    if-nez v1, :cond_9

    .line 827
    invoke-direct {p0, v2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    :cond_9
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 39

    move-object/from16 v0, p0

    .line 1109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v11, v5, v10

    const/4 v12, 0x1

    const-class v13, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v13, v5, v12

    const/4 v6, 0x2

    const-class v14, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v14, v5, v6

    const/4 v6, 0x3

    const-class v15, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v15, v5, v6

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v10

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v24, v29

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v6

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v18, v3, v6

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v6

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v18, v3, v6

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v24, v38

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v6

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v18, v3, v6

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v6

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v18, v3, v6

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v15, v3, v10

    const-string v6, "checkImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v12, [Ljava/lang/Class;

    aput-object v13, v2, v10

    const-string v3, "checkBox"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v13, v5, v10

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v10

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v12, [Ljava/lang/Class;

    aput-object v5, v2, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->clearSelected()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 628
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 756
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 336
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 338
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadProxyList()V

    .line 339
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    .line 341
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 343
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 344
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 346
    invoke-direct {p0}, Lorg/telegram/ui/ProxyListActivity;->reloadSettingsFromPreferences()V

    const/4 v0, 0x1

    .line 348
    invoke-direct {p0, v0}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 355
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 357
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 358
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 359
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 761
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
