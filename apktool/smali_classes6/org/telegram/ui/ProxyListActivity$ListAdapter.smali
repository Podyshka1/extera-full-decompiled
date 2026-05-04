.class Lorg/telegram/ui/ProxyListActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProxyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProxyListActivity;


# direct methods
.method public static synthetic $r8$lambda$qpOKhu4vpyVJ2fSGHKdC4SSLStA(I)V
    .locals 0

    .line 958
    sput p0, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    .line 959
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 849
    iput-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 851
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private checkActionMode()V
    .locals 4

    const/4 v0, 0x2

    .line 881
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 876
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProxyListActivity;->access$000(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-lez v1, :cond_0

    .line 878
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedCountTextView(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    if-nez v2, :cond_1

    .line 880
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->access$100(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 884
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->access$200(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 885
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearSelected()V
    .locals 3

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 871
    invoke-direct {p0}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->checkActionMode()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyShadowRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1060
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyShadowRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const-wide/16 v0, -0x2

    return-wide v0

    .line 1062
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyAddRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-wide/16 v0, -0x3

    return-wide v0

    .line 1064
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const-wide/16 v0, -0x4

    return-wide v0

    .line 1066
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const-wide/16 v0, -0xc

    return-wide v0

    .line 1068
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const-wide/16 v0, -0x5

    return-wide v0

    .line 1070
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetconnectionsHeaderRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const-wide/16 v0, -0x6

    return-wide v0

    .line 1072
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetdeleteAllRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const-wide/16 v0, -0x8

    return-wide v0

    .line 1074
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const-wide/16 v0, -0x9

    return-wide v0

    .line 1076
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationTimeoutRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const-wide/16 v0, -0xa

    return-wide v0

    .line 1078
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationTimeoutInfoRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const-wide/16 v0, -0xb

    return-wide v0

    .line 1080
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-lt p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyList(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_b
    const-wide/16 v0, -0x7

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyShadowRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyShadowRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1091
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyAddRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetdeleteAllRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1093
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetconnectionsHeaderRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    return p1

    .line 1097
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationTimeoutRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x6

    return p1

    .line 1099
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ge p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    const/4 p1, 0x4

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1015
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyAddRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetdeleteAllRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 896
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 950
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationTimeoutRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 951
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/SlideChooseView;

    .line 952
    new-instance p2, Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/messenger/ProxyRotationController;->ROTATION_TIMEOUTS:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 953
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v3

    .line 954
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 955
    sget v4, Lorg/telegram/messenger/R$string;->ProxyRotationTimeoutSeconds:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :cond_0
    new-instance p2, Lorg/telegram/ui/ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 961
    sget p2, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    return-void

    .line 941
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyList(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 943
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    .line 944
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-ne v1, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setChecked(Z)V

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyList(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v4

    sub-int/2addr p2, v4

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setItemSelected(ZZ)V

    .line 946
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setSelectionEnabled(ZZ)V

    return-void

    .line 932
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsDetailRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 934
    sget p2, Lorg/telegram/messenger/R$string;->UseProxyForCallsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 935
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationTimeoutInfoRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 936
    sget p2, Lorg/telegram/messenger/R$string;->ProxyRotationTimeoutInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 919
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 921
    sget p2, Lorg/telegram/messenger/R$string;->UseProxySettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxySettings(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 922
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 923
    sget p2, Lorg/telegram/messenger/R$string;->ProxyDoNotUseWithVPN:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v4

    if-eq v4, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 924
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 925
    sget p2, Lorg/telegram/messenger/R$string;->UseProxyForCalls:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyForCalls(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 926
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 927
    sget p2, Lorg/telegram/messenger/R$string;->UseProxyRotation:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    invoke-virtual {p1, p2, v0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 912
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetconnectionsHeaderRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 914
    sget p2, Lorg/telegram/messenger/R$string;->ProxyConnections:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 901
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 902
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyAddRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 904
    sget p2, Lorg/telegram/messenger/R$string;->AddProxy:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetdeleteAllRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 905
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetdeleteAllRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 906
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 907
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAllProxies:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 4

    .line 971
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    const/4 v0, 0x1

    .line 973
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyList(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setItemSelected(ZZ)V

    :cond_0
    const/4 p2, 0x2

    .line 976
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 977
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setSelectionEnabled(ZZ)V

    return-void

    .line 979
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 980
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 981
    iget-object p3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 982
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxySettings(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 983
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 984
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 985
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result p3

    if-ne p2, p3, :cond_4

    .line 986
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyForCalls(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 987
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result p3

    if-ne p2, p3, :cond_5

    .line 988
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_5
    return-void

    .line 991
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 1047
    new-instance p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;-><init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V

    .line 1048
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1042
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 1043
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1039
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1035
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1036
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1031
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1032
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1027
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1028
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1024
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1051
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1052
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 997
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 999
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1000
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1001
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxySettings(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1003
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyReactToVpnRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1004
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1005
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcallsRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1006
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxyForCalls(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1007
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetrotationRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1008
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public toggleSelected(I)V
    .locals 2

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyEndRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 858
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyList(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetproxyStartRow(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 859
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetselectedItems(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    .line 864
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 865
    invoke-direct {p0}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->checkActionMode()V

    :cond_2
    :goto_1
    return-void
.end method
