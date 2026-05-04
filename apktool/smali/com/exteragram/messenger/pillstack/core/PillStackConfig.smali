.class public abstract Lcom/exteragram/messenger/pillstack/core/PillStackConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;
    }
.end annotation


# static fields
.field public static activePills:Ljava/util/ArrayList;

.field public static btcTargetCurrency:Ljava/lang/String;

.field static configLoaded:Z

.field public static customWeatherAddress:Ljava/lang/String;

.field public static customWeatherLocation:Ljava/lang/String;

.field public static editor:Landroid/content/SharedPreferences$Editor;

.field public static hiddenPills:Ljava/util/ArrayList;

.field public static infiniteScrolling:Z

.field public static lastActivePillId:I

.field private static final pendingUpdates:Ljava/util/HashSet;

.field public static preferences:Landroid/content/SharedPreferences;

.field private static final sync:Ljava/lang/Object;

.field public static tonTargetCurrency:Ljava/lang/String;

.field public static usdTargetCurrency:Ljava/lang/String;

.field public static useCurrentLocation:Z


# direct methods
.method public static synthetic $r8$lambda$hBfHdAf5DsD2ujd_6KmJ5EV3it4(Ljava/lang/Integer;)Z
    .locals 0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->isRegistered(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$rvgM_l39IHfryNI4iwSTAnCjpR4(Ljava/lang/Integer;)Z
    .locals 0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->isRegistered(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 59
    sput v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->lastActivePillId:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->sync:Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->loadConfig()V

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->pendingUpdates:Ljava/util/HashSet;

    return-void
.end method

.method public static checkAndClearPendingUpdate(I)Z
    .locals 1

    .line 194
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->pendingUpdates:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getDefaultActivePills()Ljava/util/ArrayList;
    .locals 1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static loadConfig()V
    .locals 6

    .line 100
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-boolean v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->configLoaded:Z

    if-eqz v1, :cond_0

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 105
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "pillstackconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 108
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "useCurrentLocation"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->useCurrentLocation:Z

    .line 109
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "customWeatherLocation"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->customWeatherLocation:Ljava/lang/String;

    .line 110
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "customWeatherAddress"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->customWeatherAddress:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "infiniteScrolling"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    .line 112
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "lastActivePillId"

    const/4 v5, -0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->lastActivePillId:I

    .line 113
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "tonTargetCurrency"

    const-string v5, "AUTO"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->tonTargetCurrency:Ljava/lang/String;

    .line 114
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "btcTargetCurrency"

    const-string v5, "AUTO"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->btcTargetCurrency:Ljava/lang/String;

    .line 115
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "usdTargetCurrency"

    const-string v5, "AUTO"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->usdTargetCurrency:Ljava/lang/String;

    .line 117
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "activePills"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    sget-object v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "hiddenPills"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 121
    invoke-static {v1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->parsePillsList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 123
    invoke-static {v2}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->parsePillsList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    goto :goto_1

    .line 125
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    goto :goto_1

    .line 128
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    .line 131
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->getDefaultActivePills()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->getRegisteredPills()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;

    .line 133
    sget-object v4, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    sget-object v4, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->savePillsLayout()V

    .line 140
    :goto_1
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->sanitizePills()V

    .line 142
    sput-boolean v3, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->configLoaded:Z

    .line 143
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs notifySettingsChanged([I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 176
    array-length v1, p0

    if-lez v1, :cond_2

    .line 177
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 178
    sget-object v4, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->pendingUpdates:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 182
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->getRegisteredPills()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;

    .line 187
    sget-object v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->pendingUpdates:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 189
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static parsePillsList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "[\\[\\]\"]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 77
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 79
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static sanitizePills()V
    .locals 5

    .line 147
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    new-instance v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    .line 148
    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    new-instance v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 150
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->getRegisteredPills()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;

    .line 151
    sget-object v3, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 158
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->savePillsLayout()V

    :cond_2
    return-void
.end method

.method public static saveLastActivePillId(I)V
    .locals 2

    .line 169
    sput p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->lastActivePillId:I

    .line 170
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "lastActivePillId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static savePillsLayout()V
    .locals 3

    .line 163
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->serializePillsList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activePills"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->serializePillsList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hiddenPills"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static serializePillsList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 89
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static varargs shouldUpdatePill([Ljava/lang/Object;[I)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    .line 198
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_5

    .line 199
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_2

    .line 200
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 201
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 202
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 203
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget v7, p1, v6

    if-ne v4, v7, :cond_2

    return v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v0
.end method
