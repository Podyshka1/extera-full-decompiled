.class public Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$SingletonHolder;,
        Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;
    }
.end annotation


# static fields
.field private static final categoriesIcons:Ljava/util/Map;

.field public static newFeatures:Ljava/util/List;


# instance fields
.field private entriesFetched:Z

.field private final entriesStringAlias:Lj$/util/concurrent/ConcurrentHashMap;

.field private final preparedEntries:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static synthetic $r8$lambda$5BgUDgfoi8XV0nRdEnZiS39v1xo(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->initiateFragment(Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SyXtQzmTfhU1wD-1sJKZt7kETcE(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 248
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Uq61hhP3TlTJmft55hT5WjpJsx0(I)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 216
    new-array p0, p0, [Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZSV5le-9Aoe5iKUSpyrFZhUOY0I(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->scrollToItem(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p4BQB7CEiJF3IYJpUIO4QjqPKlE(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 204
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->-$$Nest$fgetguid(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$u4Vru8P-2Kf-KU8n6Gmuv_2EbMk(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 215
    invoke-virtual {p1, p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->toSearchResult(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCategoryIcon(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;Ljava/lang/Class;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getCategoryIcon(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenActivity(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;Ljava/lang/Class;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->openActivity(Ljava/lang/Class;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgenerateGUIDForUItem(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->generateGUIDForUItem(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 20

    .line 55
    sget v0, Lorg/telegram/messenger/R$drawable;->extera_outline:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_media:I

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_theme:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_plugins:I

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_list:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 55
    const-class v1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity;

    const-class v3, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;

    const-class v5, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;

    const-class v7, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

    const-class v9, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;

    const-class v11, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;

    const-class v13, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity;

    const-class v15, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;

    invoke-static/range {v1 .. v16}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->categoriesIcons:Ljava/util/Map;

    .line 66
    const-string/jumbo v18, "pluginsDisableArtOpts"

    const-string v19, "Plugins-Python-SDK"

    const-string/jumbo v1, "translationTargetLanguage"

    const-string/jumbo v2, "relativeLastSeen"

    const-string v3, "hideArchiveFolder"

    const-string v4, "hideReactions"

    const-string v5, "disableGreetingSticker"

    const-string/jumbo v6, "showOnlineStatus"

    const-string/jumbo v7, "showResultsBeforeVoting"

    const-string v8, "Chats-MessageMenu-Repeat"

    const-string v9, "Camera-ExtendedSettings-SeamlessSwitching"

    const-string v10, "hideFloatingButton"

    const-string v11, "appNavigationSettings"

    const-string/jumbo v12, "pillStack"

    const-string/jumbo v13, "md3Styles"

    const-string/jumbo v14, "predictiveBackAnimation"

    const-string v15, "bottomNavigationBarMode"

    const-string/jumbo v16, "predictiveBackAnimation"

    const-string/jumbo v17, "navigationDrawer"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->newFeatures:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->preparedEntries:Lj$/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesStringAlias:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private createEntriesIfNeeded()V
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesFetched:Z

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    const-string v0, "[Extera] Initialising activities..."

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->categoriesIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesFetched:Z

    return-void
.end method

.method private static generateGUIDForUItem(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)I
    .locals 2

    .line 261
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private getCategoryIcon(Ljava/lang/Class;)I
    .locals 1

    .line 220
    sget-object v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->categoriesIcons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static getInstance()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;
    .locals 1

    .line 98
    invoke-static {}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;

    move-result-object v0

    return-object v0
.end method

.method private initiateFragment(Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    const/4 v0, 0x0

    .line 225
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 230
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 231
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 234
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static isValidForLinkAliases(Lorg/telegram/ui/Components/UItem;)Z
    .locals 9

    .line 113
    iget v0, p0, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v5, p0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object p0, v7, v1

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    aput-object v2, v5, v1

    aput-object v3, v5, v6

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object p0, v5, v0

    .line 114
    const-string p0, "[Extera] Cannot set link aliases for UItems with ID 0. (UItem ID: %s; View type: %s; View: %s; Text: %s; Subtext: %s)"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v8

    :cond_1
    return v1
.end method

.method public static isValidForSearch(Lorg/telegram/ui/Components/UItem;)Z
    .locals 9

    .line 102
    iget v0, p0, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 103
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v5, p0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object p0, v7, v1

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    aput-object v2, v5, v1

    aput-object v3, v5, v6

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object p0, v5, v0

    .line 103
    const-string p0, "[Extera] UItems with ID 0 or empty text cannot be added as search result. (UItem ID: %s; View type: %s; View: %s; Text: %s; Subtext: %s)"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return v8
.end method

.method public static markAsNewFeature(Ljava/lang/String;)Z
    .locals 7

    .line 135
    sget-object v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->newFeatures:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->doNotMarkAsNew:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 137
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 138
    const-string/jumbo v2, "newFeaturesShowedAt"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 142
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    sget-object v4, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->doNotMarkAsNew:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object p0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->doNotMarkAsNew:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "doNotMarkAsNew"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    .line 139
    :cond_2
    :goto_0
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method private openActivity(Ljava/lang/Class;Ljava/lang/Integer;)V
    .locals 2

    .line 240
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->initiateFragment(Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    new-instance v1, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_2

    .line 249
    instance-of v0, p1, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;

    .line 250
    new-instance v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;Ljava/lang/Integer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addLinkAliasForOption(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)V
    .locals 3

    .line 153
    invoke-static {p3}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->isValidForLinkAliases(Lorg/telegram/ui/Components/UItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->markAsNewFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p3, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p3, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p3, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    .line 157
    iget-object v0, p3, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesStringAlias:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[Extera] Key \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already linked to an entry."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->generateGUIDForUItem(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)I

    move-result v0

    .line 165
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->preparedEntries:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;

    if-nez v0, :cond_3

    .line 167
    invoke-static {p2, p3}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->fromUItem(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;

    move-result-object v0

    :cond_3
    const/4 p2, 0x2

    .line 169
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    aput-object v0, p2, v1

    const-string p3, "[Extera] Added link alias %s for an entry %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesStringAlias:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSearchEntry(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)V
    .locals 1

    .line 124
    invoke-static {p2}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->isValidForSearch(Lorg/telegram/ui/Components/UItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {p1, p2}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->fromUItem(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->generateGUIDForUItem(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)I

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->preparedEntries:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[Extera] Added an entry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->preparedEntries:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->-$$Nest$fgetguid(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFirstSettingLink(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)Ljava/lang/String;
    .locals 1

    .line 202
    invoke-static {p1, p2}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->generateGUIDForUItem(Ljava/lang/Class;Lorg/telegram/ui/Components/UItem;)I

    move-result p1

    .line 203
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesStringAlias:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda1;-><init>(I)V

    .line 204
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    .line 206
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    return-object p2

    .line 209
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://t.me/exteraSettings?s="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSearchResults(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->createEntriesIfNeeded()V

    .line 214
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->preparedEntries:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    .line 215
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticLambda3;-><init>()V

    .line 216
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    return-object p1
.end method

.method public handleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Extera] Setting link handler called with alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {p2, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->openPluginSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->createEntriesIfNeeded()V

    .line 182
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->entriesStringAlias:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;

    if-nez p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->onSettingNotFound()V

    return-void

    .line 188
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Extera] Found entry for alias: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 189
    const-string p2, "[Extera] Opening fragment..."

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->-$$Nest$fgetfragmentClass(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;->-$$Nest$fgetitemId(Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$Entry;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->openActivity(Ljava/lang/Class;Ljava/lang/Integer;)V

    return-void
.end method

.method public onSettingNotFound()V
    .locals 1

    .line 194
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->onSettingNotFound(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onSettingNotFound(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 198
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->NoSuchSetting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\ud83e\udd37\u200d\u2642\ufe0f"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
