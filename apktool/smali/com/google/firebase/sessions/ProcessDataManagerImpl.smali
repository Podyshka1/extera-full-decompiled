.class public final Lcom/google/firebase/sessions/ProcessDataManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/ProcessDataManager;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private hasGeneratedSession:Z

.field private final myPid:I

.field private final myProcessDetails$delegate:Lkotlin/Lazy;

.field private final myProcessName$delegate:Lkotlin/Lazy;

.field private final myUuid$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$67jLber-fsQV4Gp3r7jMmg4UtGA(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)Lcom/google/firebase/sessions/ProcessDetails;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myProcessDetails_delegate$lambda$2(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)Lcom/google/firebase/sessions/ProcessDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_UeSF9Hfqk5X0TmWVjAr-kv5nKY(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myProcessName_delegate$lambda$0(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cs14fneC4A25JpcnwPq0DmKyQWk(Lcom/google/firebase/sessions/UuidGenerator;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myUuid_delegate$lambda$1(Lcom/google/firebase/sessions/UuidGenerator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/sessions/UuidGenerator;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uuidGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->appContext:Landroid/content/Context;

    .line 60
    new-instance p1, Lcom/google/firebase/sessions/ProcessDataManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myProcessName$delegate:Lkotlin/Lazy;

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myPid:I

    .line 64
    new-instance p1, Lcom/google/firebase/sessions/ProcessDataManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/google/firebase/sessions/ProcessDataManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/sessions/UuidGenerator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myUuid$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p1, Lcom/google/firebase/sessions/ProcessDataManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myProcessDetails$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAppProcessDetails()Ljava/util/List;
    .locals 2

    .line 105
    sget-object v0, Lcom/google/firebase/sessions/ProcessDetailsProvider;->INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;

    iget-object v1, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getAppProcessDetails(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getMyProcessDetails()Lcom/google/firebase/sessions/ProcessDetails;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myProcessDetails$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/ProcessDetails;

    return-object v0
.end method

.method private final isProcessStale(Lcom/google/firebase/sessions/ProcessDetails;Lcom/google/firebase/sessions/ProcessData;)Z
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/sessions/ProcessDetails;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/google/firebase/sessions/ProcessDetails;->getPid()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/firebase/sessions/ProcessData;->getPid()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/sessions/ProcessData;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 120
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/sessions/ProcessDetails;->getPid()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/firebase/sessions/ProcessData;->getPid()I

    move-result p2

    if-eq p1, p2, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private static final myProcessDetails_delegate$lambda$2(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)Lcom/google/firebase/sessions/ProcessDetails;
    .locals 1

    .line 66
    sget-object v0, Lcom/google/firebase/sessions/ProcessDetailsProvider;->INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;

    iget-object p0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getMyProcessDetails(Landroid/content/Context;)Lcom/google/firebase/sessions/ProcessDetails;

    move-result-object p0

    return-object p0
.end method

.method private static final myProcessName_delegate$lambda$0(Lcom/google/firebase/sessions/ProcessDataManagerImpl;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyProcessDetails()Lcom/google/firebase/sessions/ProcessDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDetails;->getProcessName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final myUuid_delegate$lambda$1(Lcom/google/firebase/sessions/UuidGenerator;)Ljava/lang/String;
    .locals 1

    .line 64
    invoke-interface {p0}, Lcom/google/firebase/sessions/UuidGenerator;->next()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public generateProcessDataMap()Ljava/util/Map;
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/google/firebase/sessions/ProcessDataManager$DefaultImpls;->generateProcessDataMap(Lcom/google/firebase/sessions/ProcessDataManager;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMyPid()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myPid:I

    return v0
.end method

.method public getMyProcessName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myProcessName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMyUuid()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->myUuid$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isColdStart(Ljava/util/Map;)Z
    .locals 6

    const-string/jumbo v0, "processDataMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->hasGeneratedSession:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getAppProcessDetails()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 132
    check-cast v3, Lcom/google/firebase/sessions/ProcessDetails;

    .line 79
    invoke-virtual {v3}, Lcom/google/firebase/sessions/ProcessDetails;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/sessions/ProcessData;

    if-eqz v4, :cond_2

    .line 80
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 132
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    return v0

    .line 138
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v1

    :cond_5
    if-ge v3, p1, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lkotlin/Pair;

    .line 83
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/sessions/ProcessDetails;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/sessions/ProcessData;

    invoke-direct {p0, v5, v4}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->isProcessStale(Lcom/google/firebase/sessions/ProcessDetails;Lcom/google/firebase/sessions/ProcessData;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_6
    return v0
.end method

.method public isMyProcessStale(Ljava/util/Map;)Z
    .locals 3

    const-string/jumbo v0, "processDataMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/ProcessData;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/sessions/ProcessData;->getPid()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/sessions/ProcessData;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public onSessionGenerated()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->hasGeneratedSession:Z

    return-void
.end method

.method public updateProcessDataMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    if-eqz p1, :cond_0

    .line 99
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/sessions/ProcessData;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/sessions/ProcessData;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyProcessName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/sessions/ProcessData;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->getMyUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/ProcessData;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
