.class public Lcom/exteragram/messenger/plugins/PluginsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;,
        Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;,
        Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;,
        Lcom/exteragram/messenger/plugins/PluginsController$HookResult;,
        Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;
    }
.end annotation


# static fields
.field public static final PREF_PLUGIN_ENABLED_KEY_PREFIX:Ljava/lang/String;

.field public static final engines:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile exactMatchEventHooksCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hooks:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/exteragram/messenger/plugins/hooks/HookRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile hooksCacheDirty:Z

.field private final hooksCacheLock:Ljava/lang/Object;

.field private final interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final menuItemsByMenuType:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final plugins:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field public pluginsDir:Ljava/io/File;

.field public preferences:Landroid/content/SharedPreferences;

.field public final settings:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile substringMatchEventHooksCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final updateNotificationRunnable:Ljava/lang/Runnable;

.field public final watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;


# direct methods
.method public static synthetic $r8$lambda$0MKBwYBnp1INQdsep3RmAg-7Dyg(Ljava/lang/String;Lcom/exteragram/messenger/plugins/hooks/HookRecord;)Z
    .locals 1

    .line 624
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getHookName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$2T_HsgrQdEtmqHDS2N1sX9ZXZts(Ljava/lang/String;)V
    .locals 4

    .line 495
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6EGnt44zm7CY9OWCwdu-W9lSSwQ(Ljava/lang/String;ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 0

    .line 921
    invoke-interface {p2, p0, p1, p3, p4}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->executeUpdateHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C1spfK_dE_DDlAtaG7xq-AaFmko(Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-nez p2, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getPriority()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getPriority()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D7iuh79ccD5yYXeFej0RROjlm5A(Lde/robv/android/xposed/XC_MethodHook$Unhook;Lcom/exteragram/messenger/plugins/hooks/HookRecord;)Z
    .locals 1

    .line 640
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/exteragram/messenger/plugins/hooks/HookRecord;->matches(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$FYukyw-YKGo_wPdhFkDnrIRWDhw(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 580
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$GxNqH3Tn3T0wowPL10edJkONHf4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 326
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$H7B-ctnIeRlcfmGp4zow9zoemRQ(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$getInterestedPluginIds$27(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J4Q7oAMZibqdYmPlqB0gtk5ZZs0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 871
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$KInBKozus1HdyjPzxLY8Oh1bXFM(ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 0

    .line 931
    invoke-interface {p1, p0, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->executeSendMessageHook(ILorg/telegram/messenger/SendMessagesHelper$SendMessageParams;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NfM87wwcI2lE4X8t5VSSVsPLmEE(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;)Z
    .locals 0

    .line 680
    iget-object p1, p1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    iget-object p0, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O3H6fwJps35kKTF00Ed94Te_LEw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$QHAWdjg_nos3ztw400vtKLSsL5c()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Rghq_G_pJLYBjuuBNY5w2Zx4URE(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    if-nez p2, :cond_0

    .line 677
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 679
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 680
    new-instance p2, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda29;-><init>(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;)V

    invoke-static {p1, p2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 682
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda30;

    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {p0}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 684
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$VKyTjcUa8vHl1EDhCProY1e7Hi4(Ljava/lang/String;ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 0

    .line 911
    invoke-interface {p2, p0, p1, p3, p4}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->executePreRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VWJSPTrWHU_4QBrY45-ZFA1ctaM(Ljava/lang/String;ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 6

    .line 916
    iget-object v3, p3, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;->response:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p3, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    move-object v1, p0

    move v2, p1

    move-object v0, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YOPMpuWiirQjXba47S0iLwHp4B8(Lcom/exteragram/messenger/plugins/PluginsController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$restart$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$_DAz5Y80ABRPBGww0lHECuP1mmc(Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-nez p2, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getPriority()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getPriority()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_Eg9DLlVzcL2GapKmkTt3lrGdxY()V
    .locals 2

    .line 306
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet;

    invoke-direct {v1, v0}, Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$aWF4oNFKmMWFbhhdEDlCwumUpsg(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$shutdown$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4-UZpx3nWzNShmhdIX8ST6qcpc()V
    .locals 4

    .line 776
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginsUpdated:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 777
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginMenuItemsUpdated:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dt-UFfZgHdsfkWLqL7tMudaXt8I(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$deletePlugin$9(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f2OGsh-LdTdZhPSutR9HkdXXYAE(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$shutdown$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f3t-8dpW7S-Ir1LNRN7r2Mwkf-M(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 431
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$fkOEc2l7S3Khbq5IvdTb1K9rydw(Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 794
    invoke-interface {p1, p0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->executeOnAppEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$hg_MKD1G1oNqNF7PDGhdxwklajM(Ljava/lang/String;ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 0

    .line 926
    invoke-interface {p2, p0, p1, p3, p4}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->executeUpdatesHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jGDfh3GP87IKbgkjJ7tnmc9dDvk(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;)I
    .locals 0

    .line 683
    iget p0, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->priority:I

    return p0
.end method

.method public static synthetic $r8$lambda$jT6R58b4ndRPtp01zwJMqhVnYxo(Ljava/lang/String;)V
    .locals 4

    .line 471
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRKL1lufHaVrW3xAN-Rd1NtNMM0(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$loadPluginSettings$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oBZHDd32O9sFqH2KwjebyzDHZxw(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    .line 829
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static synthetic $r8$lambda$pajHmibdT0cnvx-MRTAtqHq_Kmc()V
    .locals 3

    .line 687
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginMenuItemsUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qt7KC-lUxpz-qaQ5rC93CgfxZIA()V
    .locals 3

    .line 709
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginMenuItemsUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMwo1UMN_22rfuljTctXpO1Iocs()V
    .locals 2

    const-wide v0, -0x531327f11c0974dbL    # -2.7655816413723473E-92

    .line 371
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xD6aglQR5rQffahgXlgyHqS3vBI(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController;->lambda$setPluginEnabled$8(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-wide v0, -0x531328241c0974dbL    # -2.7655070271554444E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->PREF_PLUGIN_ENABLED_KEY_PREFIX:Ljava/lang/String;

    .line 80
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const-wide v1, -0x531328341c0974dbL    # -2.765483618773671E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;

    invoke-direct {v2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;-><init>()V

    .line 81
    invoke-static {v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsByMenuType:Lj$/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    .line 101
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-wide v1, -0x531324871c0974dbL    # -2.7668603242267226E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    .line 108
    new-instance v0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;)V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    .line 775
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda18;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->updateNotificationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private addHook(Ljava/lang/String;Lcom/exteragram/messenger/plugins/hooks/HookRecord;Ljava/lang/String;)V
    .locals 2

    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v0, p1, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 581
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 582
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p1, 0x1

    .line 584
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyArtOpts()V
    .locals 1

    .line 133
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsDisableArtOpts:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->disableProfileSaver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 137
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static applyBlacklist()V
    .locals 4

    const-wide v0, -0x531324bb1c0974dbL    # -2.766784246985959E-92

    .line 143
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x531324d21c0974dbL    # -2.7667505974371595E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x531324ef1c0974dbL    # -2.766708169745195E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->setBlacklist([Ljava/lang/String;)V

    return-void
.end method

.method private executeGenericHook(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 883
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getInterestedPluginIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 886
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p2

    .line 890
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 891
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 893
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v2, v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V

    .line 895
    :try_start_0
    invoke-interface {p3, v1, p2, v0}, Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;->call(Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Ljava/lang/Object;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p2

    .line 896
    iget-object v1, p2, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;->result:Ljava/lang/Object;

    .line 898
    iget-boolean v2, p2, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 901
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 899
    :cond_3
    :try_start_1
    iget-boolean p2, p2, Lcom/exteragram/messenger/plugins/PluginsController$HookResult;->isFinal:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 901
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    return-object v1

    :cond_4
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    move-object p2, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 902
    throw p1

    :cond_5
    return-object p2
.end method

.method public static getInstance()Lcom/exteragram/messenger/plugins/PluginsController;
    .locals 1

    .line 105
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginEngine(Ljava/io/File;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 165
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    .line 166
    invoke-interface {v2, p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->isPlugin(Ljava/io/File;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static isPlugin(Ljava/io/File;Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 157
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    .line 158
    invoke-interface {v2, p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->isPlugin(Ljava/io/File;Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isPlugin(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    .line 151
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/exteragram/messenger/plugins/PluginsController;->isPlugin(Ljava/io/File;Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPluginEngineAvailable()Z
    .locals 5

    .line 115
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    if-eqz v2, :cond_1

    .line 121
    :try_start_0
    invoke-interface {v2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->isEngineAvailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    const-wide v3, -0x531324971c0974dbL    # -2.7668369158449492E-92

    .line 125
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static isPluginEngineSupported()Z
    .locals 2

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPluginPinned(Ljava/lang/String;)Z
    .locals 1

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->pinnedPlugins:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$deletePlugin$9(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 395
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->deletePlugin(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getInterestedPluginIds$27(Ljava/lang/String;)Z
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p1, :cond_0

    .line 839
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$loadPluginSettings$12(Ljava/lang/String;)V
    .locals 3

    .line 460
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-interface {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->loadPluginSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 465
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->invalidatePluginSettings(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531327d11c0974dbL    # -2.7656284581358943E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 471
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 473
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 474
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->invalidatePluginSettings(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$restart$7()V
    .locals 1

    .line 370
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->init(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPluginEnabled$8(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 385
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    .line 388
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shutdown$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    .line 349
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 350
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->stop()V

    .line 351
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 352
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide v0, -0x5313280b1c0974dbL    # -2.7655436027519655E-92

    .line 353
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 356
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shutdown$5(Ljava/lang/Runnable;)V
    .locals 2

    .line 346
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 348
    new-instance v1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    .line 361
    sget-object p1, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    .line 362
    invoke-interface {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->shutdown(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static openPluginSettings(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->openPluginSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openPluginSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 183
    :cond_1
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 184
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->error:I

    sget p1, Lorg/telegram/messenger/R$string;->PluginEngineNotEnabled:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget p0, Lorg/telegram/messenger/R$string;->Enable:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda19;

    invoke-direct {v9, v0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v8, 0xabe

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 188
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    if-nez v1, :cond_3

    .line 190
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const-wide v0, -0x5313250f1c0974dbL    # -2.7666613529816482E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PluginNotFound:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 193
    :cond_3
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettings(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 194
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    const-wide v4, -0x531325151c0974dbL    # -2.7666525748384832E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PluginHasNoSettings:I

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 197
    :cond_4
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    .line 200
    invoke-interface {v1, p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->openPluginSettings(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 202
    :cond_5
    invoke-interface {v1, p0, p1, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->openPluginSetting(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private rebuildHooksCacheIfNeeded()V
    .locals 8

    .line 855
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    iget-boolean v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    if-nez v1, :cond_1

    .line 860
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 862
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    iget-object v3, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 866
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/exteragram/messenger/plugins/hooks/HookRecord;

    .line 867
    instance-of v6, v5, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    .line 868
    invoke-virtual {v5}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->isMatchSubstring()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 869
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 871
    :cond_4
    invoke-virtual {v5}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getHookName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda25;

    invoke-direct {v7}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {v1, v6, v7}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 876
    :cond_5
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->exactMatchEventHooksCache:Ljava/util/Map;

    .line 877
    iput-object v2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->substringMatchEventHooksCache:Ljava/util/List;

    const/4 v1, 0x0

    .line 878
    iput-boolean v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    .line 879
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeHook(Ljava/lang/String;Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/exteragram/messenger/plugins/hooks/HookRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 593
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 597
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 598
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/exteragram/messenger/plugins/hooks/HookRecord;

    .line 600
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 608
    new-instance p2, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda21;

    invoke-direct {p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v2, p2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 610
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 611
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 613
    :cond_3
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 617
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p1, 0x1

    .line 618
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static runOnPluginsQueue(Ljava/lang/Runnable;)V
    .locals 4

    .line 263
    sget-object v0, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    :cond_0
    const-class v0, Lcom/exteragram/messenger/plugins/PluginsController;

    monitor-enter v0

    .line 265
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-wide v2, -0x531325291c0974dbL    # -2.7666233143612663E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 268
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_3
    sget-object v0, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 268
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setPluginPinned(Ljava/lang/String;Z)V
    .locals 3

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->pinnedPlugins:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-nez p1, :cond_1

    .line 240
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :goto_0
    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->pinnedPlugins:Ljava/util/Set;

    .line 246
    sget-object p0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x5313251b1c0974dbL    # -2.766643796695318E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->notifyPluginsChanged()V

    return-void
.end method

.method private showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 424
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isActivityRunning(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-nez v1, :cond_1

    .line 431
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$raw;->error:I

    sget p2, Lorg/telegram/messenger/R$string;->PluginNotEnabled:I

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget p2, Lorg/telegram/messenger/R$string;->Enable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda13;

    invoke-direct {v7, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xabe

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 435
    :cond_1
    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/io/File;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 438
    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addEventHook(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    .line 589
    new-instance v0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531325eb1c0974dbL    # -2.766339487732263E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x531325fe1c0974dbL    # -2.766311690278907E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->addHook(Ljava/lang/String;Lcom/exteragram/messenger/plugins/hooks/HookRecord;Ljava/lang/String;)V

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Lcom/chaquo/python/PyObject;)Ljava/lang/String;
    .locals 5

    .line 658
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 662
    :cond_0
    :try_start_0
    new-instance v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;-><init>(Ljava/lang/String;Lcom/chaquo/python/PyObject;)V

    .line 663
    iget-object p2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    if-nez p2, :cond_1

    return-object v1

    .line 667
    :cond_1
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    if-eqz p2, :cond_2

    .line 668
    iget-object v2, p2, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-wide v2, -0x531326a01c0974dbL    # -2.766074680413451E-92

    .line 669
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    return-object v1

    .line 673
    :cond_2
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsByMenuType:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    new-instance v3, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;)V

    invoke-static {p2, v2, v3}, Lj$/util/concurrent/ConcurrentMap$-EL;->compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531326eb1c0974dbL    # -2.7659649536238878E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x531326fd1c0974dbL    # -2.7659386191943926E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x5313270a1c0974dbL    # -2.7659195998842017E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 687
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 688
    iget-object p1, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public addXposedHook(Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .locals 3

    .line 628
    new-instance v0, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;-><init>(Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531326401c0974dbL    # -2.7662151307040916E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->addHook(Ljava/lang/String;Lcom/exteragram/messenger/plugins/hooks/HookRecord;Ljava/lang/String;)V

    return-void
.end method

.method public addXposedHooks(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    .line 634
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 635
    invoke-virtual {p0, p1, v2}, Lcom/exteragram/messenger/plugins/PluginsController;->addXposedHook(Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public checkDevServers()V
    .locals 2

    .line 339
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    .line 340
    invoke-interface {v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->checkDevServer()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method cleanupPlugin(Ljava/lang/String;)V
    .locals 0

    .line 403
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->removeHooksByPluginId(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->invalidatePluginSettings(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->removeMenuItemsByPluginId(Ljava/lang/String;)V

    return-void
.end method

.method public clearPluginSettingsPreferences(Ljava/lang/String;)V
    .locals 3

    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 504
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    invoke-interface {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->clearPluginSettings(Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_1
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    .line 509
    invoke-interface {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->clearPluginSettings(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    goto :goto_2

    .line 516
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531325db1c0974dbL    # -2.7663628961140366E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 517
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_2
    return-void
.end method

.method public deletePlugin(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda36;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnAppEvent(Ljava/lang/String;)V
    .locals 3

    .line 786
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x5313276f1c0974dbL    # -2.7657718344742567E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 792
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;
    .locals 1

    .line 916
    new-instance v0, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;

    invoke-direct {v0, p3, p4}, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    new-instance p3, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda12;

    invoke-direct {p3, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p3}, Lcom/exteragram/messenger/plugins/PluginsController;->executeGenericHook(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;

    return-object p1
.end method

.method public executePreRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 911
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda26;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->executeGenericHook(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1
.end method

.method public executeSendMessageHook(ILorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 2

    const-wide v0, -0x531327bf1c0974dbL    # -2.7656547925653894E-92

    .line 931
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda20;-><init>(I)V

    invoke-direct {p0, v0, p2, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->executeGenericHook(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    return-object p1
.end method

.method public executeUpdateHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Update;)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 1

    .line 921
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->executeGenericHook(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Update;

    return-object p1
.end method

.method public executeUpdatesHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Updates;)Lorg/telegram/tgnet/TLRPC$Updates;
    .locals 1

    .line 926
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->executeGenericHook(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    return-object p1
.end method

.method getInterestedPluginIds(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    .line 807
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->rebuildHooksCacheIfNeeded()V

    .line 809
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 811
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->exactMatchEventHooksCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 813
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    .line 814
    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getPluginId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda31;

    invoke-direct {v4, v2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda31;-><init>(Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;)V

    invoke-static {v0, v3, v4}, Lj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->substringMatchEventHooksCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    .line 819
    invoke-virtual {v2, p1}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->getPluginId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda32;

    invoke-direct {v4, v2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda32;-><init>(Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;)V

    invoke-static {v0, v3, v4}, Lj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_1

    .line 824
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 825
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    .line 827
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 828
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda33;-><init>()V

    invoke-static {v1, v0}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 835
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda34;-><init>()V

    .line 836
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda35;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;)V

    .line 837
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 841
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 844
    :goto_2
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x5313278d1c0974dbL    # -2.7657279437584315E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x531327bb1c0974dbL    # -2.7656606446608328E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public getMenuItemsForLocation(Ljava/lang/String;Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;",
            ")",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 733
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->getMenuItemsForLocation(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 735
    :cond_0
    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->getMenuItemsForLocation(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMenuItemsForLocation(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;",
            ">;"
        }
    .end annotation

    .line 739
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 742
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 743
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsByMenuType:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 744
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-wide v1, -0x531327591c0974dbL    # -2.7658040209991952E-92

    .line 747
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 748
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsByMenuType:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide v1, -0x531327631c0974dbL    # -2.7657893907605868E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-virtual {p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 751
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 752
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 755
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 756
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 758
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 759
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    .line 760
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v2, :cond_4

    .line 761
    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v2

    if-nez v2, :cond_4

    .line 762
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    iget-object v3, v1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionStarted(Ljava/lang/String;)V

    .line 764
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->checkCondition(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 765
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 768
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    iget-object v0, v1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->onPluginExecutionFinished(Ljava/lang/String;)V

    .line 769
    throw p1

    :cond_6
    return-object p1

    .line 740
    :cond_7
    :goto_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    if-nez p1, :cond_1

    return-object v0

    .line 215
    :cond_1
    iget-object v1, p1, Lcom/exteragram/messenger/plugins/Plugin;->cachedEngine:Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    if-eqz v1, :cond_2

    return-object v1

    .line 218
    :cond_2
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getEngine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 222
    :cond_3
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    if-eqz v0, :cond_4

    .line 224
    iput-object v0, p1, Lcom/exteragram/messenger/plugins/Plugin;->cachedEngine:Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getPluginPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 412
    invoke-interface {v1, p1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPluginSettingBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 536
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->getPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 539
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 540
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getPluginSettingInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 558
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->getPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 561
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    .line 562
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getPluginSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 547
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->getPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public getPluginSettingsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getPluginSettingsPreferences(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    invoke-interface {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->getAllPluginSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasPluginSettings(Ljava/lang/String;)Z
    .locals 1

    .line 488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasPluginSettingsPreferences(Ljava/lang/String;)Z
    .locals 0

    .line 531
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingsPreferences(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 532
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->init(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->init(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public init(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->init(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public init(ZLjava/lang/Runnable;)V
    .locals 8

    .line 274
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 281
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/utils/NativeCrashHandler;->checkAndHandleNativeCrash()V

    .line 283
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->start()V

    .line 285
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 288
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-wide v2, -0x531325361c0974dbL    # -2.7666042950510754E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    .line 292
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    const-wide v2, -0x531325461c0974dbL    # -2.766580886669302E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 293
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    const-wide v3, -0x531325501c0974dbL    # -2.7665662564306935E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-wide v4, -0x531325621c0974dbL    # -2.7665399220011984E-92

    .line 294
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    move v4, v3

    goto :goto_0

    :cond_4
    move v4, v1

    .line 296
    :goto_0
    iget-object v5, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-wide v6, -0x5313256a1c0974dbL    # -2.7665282178103117E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-wide v6, -0x531325741c0974dbL    # -2.7665135875717032E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    .line 300
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x531325861c0974dbL    # -2.766487253142208E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 302
    :cond_5
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v5, -0x531325961c0974dbL    # -2.7664638447604346E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    if-nez v4, :cond_7

    .line 305
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda3;-><init>()V

    const-wide/16 v2, 0x320

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 313
    :cond_6
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v2, -0x531325a61c0974dbL    # -2.7664404363786612E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    sput-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    :cond_7
    :goto_2
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    const-wide v2, -0x531325b61c0974dbL    # -2.7664170279968877E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_8

    .line 320
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 323
    :cond_8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 325
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    .line 333
    sget-object p1, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    .line 334
    invoke-interface {p2, v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->init(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz p2, :cond_a

    .line 276
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public invalidatePluginSettings(Ljava/lang/String;)V
    .locals 1

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->settings:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadPluginSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->loadPluginSettings(Ljava/lang/String;)V

    return-void
.end method

.method public loadPluginSettings(Ljava/lang/String;)V
    .locals 3

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getError()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 450
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->loadPluginSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->invalidatePluginSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    .line 458
    :cond_3
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda15;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;)V

    .line 478
    sget-object p1, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p1, :cond_4

    sget-object p1, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 479
    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 480
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    sget-object v1, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 481
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 483
    :cond_4
    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyPluginsChanged()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 782
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->updateNotificationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public removeEventHook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 624
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x5313260c1c0974dbL    # -2.7662912079448554E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x531326321c0974dbL    # -2.7662356130381434E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->removeHook(Ljava/lang/String;Ljava/util/function/Predicate;Ljava/lang/String;)V

    return-void
.end method

.method public removeHooksByPluginId(Ljava/lang/String;)V
    .locals 4

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 647
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/hooks/HookRecord;

    .line 648
    invoke-interface {v2}, Lcom/exteragram/messenger/plugins/hooks/HookRecord;->cleanup()V

    goto :goto_0

    .line 650
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x5313267e1c0974dbL    # -2.7661244232247195E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v2, -0x5313268c1c0974dbL    # -2.7661039408906677E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->interestedPluginsCache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p1, 0x1

    .line 652
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->hooksCacheDirty:Z

    :cond_1
    return-void
.end method

.method public removeMenuItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 695
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    if-eqz v0, :cond_3

    .line 699
    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 700
    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsByMenuType:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_2

    .line 706
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 708
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531327141c0974dbL    # -2.7659049696455933E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x531327281c0974dbL    # -2.7658757091683764E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 709
    new-instance p1, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public removeMenuItemsByPluginId(Ljava/lang/String;)V
    .locals 4

    .line 716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 719
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PluginsController;->menuItemsById:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    .line 721
    iget-object v3, v2, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    iget-object v2, v2, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 726
    invoke-virtual {p0, p1, v3}, Lcom/exteragram/messenger/plugins/PluginsController;->removeMenuItem(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 728
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531327351c0974dbL    # -2.7658566898581855E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public removeXposedHook(Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .locals 3

    .line 640
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda10;-><init>(Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x5313265e1c0974dbL    # -2.7661712399882664E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->removeHook(Ljava/lang/String;Ljava/util/function/Predicate;Ljava/lang/String;)V

    return-void
.end method

.method public restart()V
    .locals 2

    const-wide v0, -0x531325be1c0974dbL    # -2.766405323806001E-92

    .line 368
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda11;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;)V

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->shutdown(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda14;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 569
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-interface {v0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->loadPluginSettings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Z)V
    .locals 1

    .line 420
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;

    invoke-direct {v0, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    return-void
.end method

.method public showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 416
    invoke-static {p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->of(Lorg/telegram/messenger/MessageObject;)Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    return-void
.end method

.method public shutdown(Ljava/lang/Runnable;)V
    .locals 1

    .line 345
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda27;-><init>(Lcom/exteragram/messenger/plugins/PluginsController;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method
