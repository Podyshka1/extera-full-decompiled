.class public final Lcom/exteragram/messenger/badges/BadgesController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEV_BADGE:Lcom/exteragram/messenger/api/dto/BadgeDTO;

.field public static final INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

.field private static final SUPPORTER_BADGE:Lcom/exteragram/messenger/api/dto/BadgeDTO;

.field private static final apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;

.field private static final trustedPluginsCache:Lcom/exteragram/messenger/badges/CachedRemoteSet;


# direct methods
.method public static synthetic $r8$lambda$jpdO54lUMx0lwNLyVBxRsjbiNRg(Ljava/util/function/Consumer;Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/badges/BadgesController;->updateBadge$lambda$0(Ljava/util/function/Consumer;Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/exteragram/messenger/badges/BadgesController;

    invoke-direct {v0}, Lcom/exteragram/messenger/badges/BadgesController;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    .line 30
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/badges/BadgesController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 33
    new-instance v0, Lcom/exteragram/messenger/badges/CachedRemoteSet;

    const-wide v2, 0x98bf27f0L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "trusted_plugins"

    invoke-direct {v0, v3, v2}, Lcom/exteragram/messenger/badges/CachedRemoteSet;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/exteragram/messenger/badges/BadgesController;->trustedPluginsCache:Lcom/exteragram/messenger/badges/CachedRemoteSet;

    .line 35
    new-instance v0, Lcom/exteragram/messenger/api/dto/BadgeDTO;

    const-wide v2, 0x4a6070bc00008000L    # 1.9222100563115345E50

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/exteragram/messenger/api/dto/BadgeDTO;-><init>(JLjava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/badges/BadgesController;->DEV_BADGE:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    .line 36
    new-instance v0, Lcom/exteragram/messenger/api/dto/BadgeDTO;

    const-wide v2, 0x4ad0e4160000770fL    # 2.5278634710625184E52

    invoke-direct {v0, v2, v3, v4}, Lcom/exteragram/messenger/api/dto/BadgeDTO;-><init>(JLjava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/badges/BadgesController;->SUPPORTER_BADGE:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    .line 39
    sget-object v0, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->profileDao()Lcom/exteragram/messenger/api/db/ProfileDao;

    move-result-object v0

    .line 40
    new-instance v2, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    invoke-direct {v2, v0}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;-><init>(Lcom/exteragram/messenger/api/db/ProfileDao;)V

    sput-object v2, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    move-object v0, v4

    .line 42
    new-instance v4, Lcom/exteragram/messenger/badges/BadgesController$1;

    invoke-direct {v4, v0}, Lcom/exteragram/messenger/badges/BadgesController$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApiBadgeSource$p()Lcom/exteragram/messenger/badges/source/ApiBadgeSource;
    .locals 1

    .line 28
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    return-object v0
.end method

.method public static synthetic getBadge$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLObject;ILjava/lang/Object;)Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 48
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hasBadge$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLObject;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 68
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    const-string p2, "getCurrentUser(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/badges/BadgesController;->hasBadge(Lorg/telegram/tgnet/TLObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isDeveloper$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 120
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    const-string p2, "getCurrentUser(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/badges/BadgesController;->isDeveloper(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    return p0
.end method

.method private static final updateBadge$lambda$0(Ljava/util/function/Consumer;Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/lang/String;)V
    .locals 7

    .line 110
    const-string/jumbo v0, "ok"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v1, Lcom/exteragram/messenger/badges/BadgesController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;-><init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 115
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final canChangeBadge()Z
    .locals 3

    .line 93
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->canChangeBadge(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v0}, Lcom/exteragram/messenger/badges/BadgesController;->isDeveloper$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final getBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLObject;ILjava/lang/Object;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v0

    return-object v0
.end method

.method public final getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 4

    const/4 v0, 0x0

    .line 51
    :try_start_0
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 52
    :cond_0
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 50
    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 56
    sget-object v3, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    invoke-virtual {v3, v1, v2, p1}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->getBadge(JZ)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-object p1

    :cond_1
    return-object v0

    .line 61
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public final getDefaultBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 3

    .line 85
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->isDeveloper(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->DEV_BADGE:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->SUPPORTER_BADGE:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    return-object v0
.end method

.method public final hasBadge()Z
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/exteragram/messenger/badges/BadgesController;->hasBadge$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLObject;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasBadge(Lorg/telegram/tgnet/TLObject;)Z
    .locals 1

    const-string/jumbo v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isDeveloper()Z
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/exteragram/messenger/badges/BadgesController;->isDeveloper$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isDeveloper(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 3

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->isDeveloper(J)Z

    move-result p1

    return p1
.end method

.method public final isExtera(J)Z
    .locals 1

    .line 77
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->apiBadgeSource:Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    invoke-virtual {v0, p1, p2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->isDeveloper(J)Z

    move-result p1

    return p1
.end method

.method public final isExtera(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    sget-object v1, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/exteragram/messenger/badges/BadgesController;->isExtera(J)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final isTrusted(J)Z
    .locals 1

    .line 73
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->trustedPluginsCache:Lcom/exteragram/messenger/badges/CachedRemoteSet;

    invoke-virtual {v0, p1, p2}, Lcom/exteragram/messenger/badges/CachedRemoteSet;->contains(J)Z

    move-result p1

    return p1
.end method

.method public final updateBadge(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getText()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "badge "

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_1
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/badges/BadgesController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/exteragram/messenger/badges/BadgesController$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lcom/exteragram/messenger/api/dto/BadgeDTO;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->sendBotRequest(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 105
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
