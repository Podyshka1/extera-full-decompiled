.class public final Lcom/exteragram/messenger/icons/ui/picker/IconObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/icons/ui/picker/IconObserver;

.field private static final iconSources:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;

    invoke-direct {v0}, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->INSTANCE:Lcom/exteragram/messenger/icons/ui/picker/IconObserver;

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->iconSources:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 46
    sget-object v0, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->iconSources:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 48
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getUsedIcons()Ljava/util/Set;
    .locals 5

    .line 37
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getVisibleFragments()Ljava/util/List;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->iconSources:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 39
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1461
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 40
    sget-object v4, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->iconSources:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1462
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1

    throw v0
.end method

.method public final log(I)V
    .locals 3

    .line 12
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 19
    invoke-static {v1, v2}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    .line 22
    :cond_3
    sget-object v1, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->iconSources:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 382
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 24
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 385
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 23
    :cond_4
    :goto_2
    check-cast v2, Ljava/util/Set;

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1

    throw p1
.end method

.method public final removeSource(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->iconSources:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
