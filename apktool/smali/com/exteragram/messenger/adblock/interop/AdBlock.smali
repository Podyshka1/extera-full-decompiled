.class public Lcom/exteragram/messenger/adblock/interop/AdBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static enginePtr:J

.field private static filterSetPtr:J

.field private static final lock:Ljava/lang/Object;

.field private static final queue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public static synthetic $r8$lambda$SrkwfasH49b3Koy0_f99c2F0mmE()V
    .locals 6

    .line 30
    sget-object v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-wide v1, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 32
    invoke-static {v1, v2}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->destroyEngine(J)V

    .line 33
    sput-wide v3, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    sget-wide v1, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 38
    sput-wide v3, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    .line 40
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic $r8$lambda$izUs8blSAW4dbII3p0uS4hFwS4A()V
    .locals 5

    .line 20
    sget-object v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-wide v1, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 22
    invoke-static {}, Lcom/exteragram/messenger/adblock/interop/AdBlock;->initializeInner()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "adblock"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->queue:Lorg/telegram/messenger/DispatchQueue;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->lock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 15
    sput-wide v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    .line 16
    sput-wide v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 2

    .line 29
    sget-object v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/adblock/interop/AdBlock$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/adblock/interop/AdBlock$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getBlockResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/BlockResult;
    .locals 4

    .line 98
    sget-wide v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    invoke-static {v0, v1, p0, p1, p2}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->shouldBlock(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/BlockResult;

    move-result-object p0

    return-object p0
.end method

.method public static getCosmeticResources(Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/UrlCosmeticResources;
    .locals 4

    .line 105
    sget-wide v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    invoke-static {v0, v1, p0}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->getCosmeticResources(JLjava/lang/String;)Lcom/exteragram/messenger/adblock/data/UrlCosmeticResources;

    move-result-object p0

    return-object p0
.end method

.method public static getHiddenSelectors([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 112
    sget-wide v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    invoke-static {v0, v1, p0, p1, p2}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->getHiddenSelectors(J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize()V
    .locals 2

    .line 19
    sget-object v0, Lcom/exteragram/messenger/adblock/interop/AdBlock;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/adblock/interop/AdBlock$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/adblock/interop/AdBlock$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static initializeInner()V
    .locals 12

    const/4 v0, 0x0

    .line 50
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->createFilterSet([Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    .line 52
    invoke-static {}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->getInstance()Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->iterSubscriptions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_2

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    .line 58
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v5, 0x1

    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x7d0

    if-lt v7, v8, :cond_1

    .line 61
    sget-wide v7, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->addFilters(J[Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/FilterListMetadata;

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ge v6, v4, :cond_3

    .line 67
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    sget-wide v4, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->addFilters(J[Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/FilterListMetadata;

    goto :goto_0

    .line 74
    :cond_4
    sget-wide v1, Lcom/exteragram/messenger/adblock/interop/AdBlock;->filterSetPtr:J

    invoke-static {v1, v2}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->createEngine(J)J

    move-result-wide v3

    .line 76
    invoke-static {}, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager;->getInstance()Lcom/exteragram/messenger/adblock/backend/ScriptletsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager;->iterScriptlets()Ljava/util/Collection;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 78
    new-array v5, v2, [Ljava/lang/String;

    .line 79
    new-array v6, v2, [[Ljava/lang/String;

    .line 80
    new-array v7, v2, [Ljava/lang/String;

    .line 81
    new-array v8, v2, [Ljava/lang/String;

    .line 84
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager$Scriptlet;

    .line 85
    iget-object v10, v9, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager$Scriptlet;->filename:Ljava/lang/String;

    aput-object v10, v5, v2

    .line 86
    iget-object v10, v9, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager$Scriptlet;->aliases:Ljava/util/List;

    if-eqz v10, :cond_5

    new-array v11, v0, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    goto :goto_3

    :cond_5
    new-array v10, v0, [Ljava/lang/String;

    :goto_3
    aput-object v10, v6, v2

    .line 87
    iget-object v10, v9, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager$Scriptlet;->filename:Ljava/lang/String;

    invoke-static {v10}, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v2

    .line 88
    iget-object v9, v9, Lcom/exteragram/messenger/adblock/backend/ScriptletsManager$Scriptlet;->content:Ljava/lang/String;

    aput-object v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_6
    invoke-static/range {v3 .. v8}, Lcom/exteragram/messenger/adblock/interop/NativeAdBlock;->useResources(J[Ljava/lang/String;[[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    sput-wide v3, Lcom/exteragram/messenger/adblock/interop/AdBlock;->enginePtr:J

    return-void
.end method

.method public static reload()V
    .locals 0

    .line 45
    invoke-static {}, Lcom/exteragram/messenger/adblock/interop/AdBlock;->destroy()V

    .line 46
    invoke-static {}, Lcom/exteragram/messenger/adblock/interop/AdBlock;->initialize()V

    return-void
.end method
