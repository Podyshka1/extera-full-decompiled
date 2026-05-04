.class public Lcom/exteragram/messenger/plugins/ui/PluginsActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

.field private infoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private isSwitchingEngineState:Z

.field private query:Ljava/lang/String;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searching:Z


# direct methods
.method public static synthetic $r8$lambda$0K5nZ-NNaoJcnMj0HtnaVA6wbbA(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Lcom/exteragram/messenger/plugins/Plugin;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->lambda$fillItems$1(Lcom/exteragram/messenger/plugins/Plugin;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CUaFsDtkmsUtBs8KUkgWMlSo8yU(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->lambda$togglePluginsEngine$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$DWeE9fXRO2304tS941GbvdRX6Tg(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->lambda$togglePluginsEngine$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$G0I5wWJklWJAhOI90R0tXRsF5OM(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetinfoItem(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->infoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputquery(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->query:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->isSwitchingEngineState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method private createPluginItem(Lcom/exteragram/messenger/plugins/Plugin;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 188
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Lcom/exteragram/messenger/plugins/Plugin;)V

    invoke-static {p1, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;->asPlugin(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 100
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$1(Lcom/exteragram/messenger/plugins/Plugin;)Z
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private synthetic lambda$togglePluginsEngine$2()V
    .locals 5

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 308
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 309
    iput-boolean v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->isSwitchingEngineState:Z

    return-void
.end method

.method private synthetic lambda$togglePluginsEngine$3()V
    .locals 1

    .line 300
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private togglePluginsEngine(Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V
    .locals 3

    .line 291
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->isSwitchingEngineState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->isSwitchingEngineState:Z

    .line 295
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    const-string v2, "pluginsEngine"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 297
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    iput-boolean v0, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 298
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz p2, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    .line 300
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V

    .line 311
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz p2, :cond_2

    .line 312
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->init(Ljava/lang/Runnable;)V

    return-void

    .line 314
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->shutdown(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 65
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v3, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;

    invoke-direct {v3, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 96
    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v3

    iget-object v3, v3, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->infoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 100
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$2;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$2;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 111
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 341
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginsUpdated:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_1

    .line 342
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p2, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 343
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 344
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    if-ne p1, p2, :cond_2

    .line 345
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 346
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginIsNotResponding:I

    if-ne p1, p2, :cond_3

    .line 347
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_3
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/UItem;",
            ">;",
            "Lorg/telegram/ui/Components/UniversalAdapter;",
            ")V"
        }
    .end annotation

    .line 121
    iget-boolean p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 122
    sget p2, Lorg/telegram/messenger/R$string;->EnablePluginsEngine:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRippleCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-nez p2, :cond_1

    return-void

    .line 128
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 130
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    const/4 v3, 0x1

    .line 131
    iput-boolean v3, v2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    .line 132
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->query:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v4, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V

    invoke-static {v2, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 138
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 139
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    if-nez p2, :cond_3

    .line 140
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    .line 142
    :cond_3
    iget-boolean p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    const-string v0, "100_100"

    const-string v1, "AnimatedEmojies"

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    .line 143
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_7

    .line 144
    :cond_4
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v4, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;->getBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v4

    const-string v5, "\ud83d\udd0e"

    invoke-virtual {p2, v4, v1, v5, v0}, Lorg/telegram/messenger/MediaDataController;->setPlaceholderImage(Lorg/telegram/ui/Components/BackupImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    sget v0, Lorg/telegram/messenger/R$string;->PluginsNotFound:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_5
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_7

    .line 150
    :cond_6
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v4, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;->getBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v4

    const-string v5, "\ud83d\udcc2"

    invoke-virtual {p2, v4, v1, v5, v0}, Lorg/telegram/messenger/MediaDataController;->setPlaceholderImage(Lorg/telegram/ui/Components/BackupImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    sget v0, Lorg/telegram/messenger/R$string;->PluginsInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->emptyView:Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;

    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    mul-int/lit8 v2, v2, 0x4a

    int-to-float v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2, v0, v3}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;IZ)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/UItem;->setTransparent(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 157
    :cond_9
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->pinnedPlugins:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 158
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->pinnedPlugins:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 160
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/exteragram/messenger/plugins/Plugin;

    if-nez v4, :cond_b

    goto :goto_2

    .line 164
    :cond_b
    invoke-direct {p0, v4}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->createPluginItem(Lcom/exteragram/messenger/plugins/Plugin;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {v2, p2}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    if-ge v0, p2, :cond_e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    check-cast v4, Lcom/exteragram/messenger/plugins/Plugin;

    .line 174
    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginPinned(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_3

    .line 177
    :cond_d
    invoke-direct {p0, v4}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->createPluginItem(Lcom/exteragram/messenger/plugins/Plugin;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    :goto_4
    const/high16 p2, 0x40800000    # 4.0f

    .line 182
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 183
    iput-boolean v3, p2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    .line 184
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 320
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 116
    sget v0, Lorg/telegram/messenger/R$string;->Plugins:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->searching:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 357
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 283
    iget p3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 p4, 0x9

    if-ne p3, p4, :cond_0

    .line 284
    invoke-direct {p0, p2, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->togglePluginsEngine(Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 325
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 326
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 327
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginIsNotResponding:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 328
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 334
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 335
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginIsNotResponding:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 336
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
