.class public final Lcom/exteragram/messenger/badges/source/ApiBadgeSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cache:Lj$/util/concurrent/ConcurrentHashMap;

.field private final profileDao:Lcom/exteragram/messenger/api/db/ProfileDao;


# direct methods
.method public static synthetic $r8$lambda$1RlpGWty-giJJAOo0oCe1OhlcXM(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/Long;Lcom/exteragram/messenger/badges/source/BadgeInfo;)Lcom/exteragram/messenger/badges/source/BadgeInfo;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->updateLocalBadge$lambda$0(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/Long;Lcom/exteragram/messenger/badges/source/BadgeInfo;)Lcom/exteragram/messenger/badges/source/BadgeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k56Kf1gLoZpo2cEpNa8MMgWDGfI(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/exteragram/messenger/badges/source/BadgeInfo;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->updateLocalBadge$lambda$1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/exteragram/messenger/badges/source/BadgeInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/exteragram/messenger/api/db/ProfileDao;)V
    .locals 1

    const-string/jumbo v0, "profileDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->profileDao:Lcom/exteragram/messenger/api/db/ProfileDao;

    .line 16
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static final updateLocalBadge$lambda$0(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/Long;Lcom/exteragram/messenger/badges/source/BadgeInfo;)Lcom/exteragram/messenger/badges/source/BadgeInfo;
    .locals 6

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v0, p2

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/exteragram/messenger/badges/source/BadgeInfo;->copy$default(Lcom/exteragram/messenger/badges/source/BadgeInfo;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;ZILjava/lang/Object;)Lcom/exteragram/messenger/badges/source/BadgeInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final updateLocalBadge$lambda$1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/exteragram/messenger/badges/source/BadgeInfo;
    .locals 0

    .line 31
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    return-object p0
.end method


# virtual methods
.method public final canChangeBadge(J)Z
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/exteragram/messenger/badges/source/BadgeInfo;->getCanChangeBadge()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->isDeveloper(J)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBadge(JZ)Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 0

    .line 19
    iget-object p3, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/exteragram/messenger/badges/source/BadgeInfo;->getBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isDeveloper(J)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/exteragram/messenger/badges/source/BadgeInfo;->getStatus()Lcom/exteragram/messenger/api/model/ProfileStatus;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/exteragram/messenger/api/model/ProfileStatus;->DEVELOPER:Lcom/exteragram/messenger/api/model/ProfileStatus;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final loadToCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;

    iget v1, v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;-><init>(Lcom/exteragram/messenger/badges/source/ApiBadgeSource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->profileDao:Lcom/exteragram/messenger/api/db/ProfileDao;

    iput v3, v0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$loadToCache$1;->label:I

    invoke-interface {p1, v0}, Lcom/exteragram/messenger/api/db/ProfileDao;->getAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 37
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/api/dto/ProfileDTO;

    .line 40
    iget-object v1, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v5

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getStatus()Lcom/exteragram/messenger/api/model/ProfileStatus;

    move-result-object v6

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getCanChangeBadge()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v4, v5, v6, v0}, Lcom/exteragram/messenger/badges/source/BadgeInfo;-><init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;Z)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final updateLocalBadge(JLcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;)V

    new-instance v3, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v1, v3}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->profileDao:Lcom/exteragram/messenger/api/db/ProfileDao;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/exteragram/messenger/api/db/ProfileDao;->updateBadge(JLcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
