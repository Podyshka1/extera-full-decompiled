.class public Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;
    }
.end annotation


# static fields
.field private static final cachedIconItems:Ljava/util/ArrayList;

.field private static isIconsLoaded:Z

.field private static isLoading:Z


# instance fields
.field private iconPack:Lcom/exteragram/messenger/icons/IconPack;

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private query:Ljava/lang/String;

.field private searchRunnable:Ljava/lang/Runnable;

.field private searching:Z


# direct methods
.method public static synthetic $r8$lambda$LNIhCaN2G3BXKQ-K6K9eD2STGzw(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->lambda$loadIconsAsync$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PqthS2Oi3Am4xhT6pHvU2ANZHHs(Lorg/telegram/ui/Components/UItem;)Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VQ_WiVR4ruXwBbj1aVUTNpUhLpY(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->lambda$loadIconsAsync$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeticonPack(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)Lcom/exteragram/messenger/icons/IconPack;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetotherItem(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchRunnable(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->searchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputquery(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->query:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchRunnable(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->searchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAdapter(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->updateAdapter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->cachedIconItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isIconsLoaded:Z

    .line 67
    sput-boolean v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isLoading:Z

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    return-void
.end method

.method private synthetic lambda$loadIconsAsync$1(Ljava/util/ArrayList;)V
    .locals 1

    .line 193
    sget-object v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->cachedIconItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 195
    sput-boolean p1, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isIconsLoaded:Z

    const/4 p1, 0x0

    .line 196
    sput-boolean p1, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isLoading:Z

    .line 197
    invoke-direct {p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->updateAdapter()V

    return-void
.end method

.method private synthetic lambda$loadIconsAsync$2()V
    .locals 9

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x5dc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    sget-object v1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconManager;->getSystemIcons()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 167
    const-class v2, Lorg/telegram/messenger/R$drawable;

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 168
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 170
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 171
    sget-object v8, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v8, v7}, Lcom/exteragram/messenger/icons/IconManager;->isBlacklisted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 183
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v4, v2, v3}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;->asIcon(ILjava/lang/CharSequence;Ljava/lang/Object;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    :cond_2
    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadIconsAsync()V
    .locals 2

    .line 154
    sget-boolean v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isIconsLoaded:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->cachedIconItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    sget-boolean v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isLoading:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 160
    sput-boolean v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isLoading:Z

    .line 162
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAdapter()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    const/4 v0, 0x0

    .line 80
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v2, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$1;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$1;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x3

    .line 112
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 113
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v2, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 115
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    sget v1, Lorg/telegram/messenger/R$string;->IconPickerSaveAndExit:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    .line 117
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 120
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 242
    sget p2, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    if-ne p1, p2, :cond_4

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    if-eqz p1, :cond_2

    .line 246
    sget-object p2, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/icons/IconManager;->findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 248
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 255
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 256
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 258
    :goto_1
    invoke-direct {p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->updateAdapter()V

    if-eqz p1, :cond_4

    .line 259
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 260
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 5

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 213
    :cond_0
    sget-boolean p2, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->isIconsLoaded:Z

    if-nez p2, :cond_1

    goto :goto_2

    .line 217
    :cond_1
    sget-object p2, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->cachedIconItems:Ljava/util/ArrayList;

    .line 218
    iget-boolean v0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->searching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    iget-object p2, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->query:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 221
    :goto_0
    sget-object v3, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->cachedIconItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 222
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/UItem;

    .line 223
    iget-object v4, v3, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object p2, v0

    .line 229
    :cond_4
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 230
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/UItem;

    .line 231
    iget v2, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iget-object v0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-static {v2, v0, v3}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;->asIcon(ILjava/lang/CharSequence;Ljava/lang/Object;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->NewIconPack:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->searching:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 351
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 237
    sget-object p2, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget-object p4, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {p2, p3, p1, p4}, Lcom/exteragram/messenger/icons/IconManager;->showReplaceAlert(Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 148
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 149
    invoke-direct {p0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->loadIconsAsync()V

    .line 150
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method
