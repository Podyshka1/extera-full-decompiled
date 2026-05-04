.class public Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;,
        Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;
    }
.end annotation


# static fields
.field private static instance:Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;

.field private static final redirectPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final lock:Ljava/lang/Object;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final queue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public static synthetic $r8$lambda$-Wlx952pM_rin5Zcnex21upy52Q(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-interface {p0, v0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;->onComplete(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2pRg0XR00UpoRqI5VYWOQxLtZus(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-interface {p0, v0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;->onComplete(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HFVfmvWfljyHKRypfEz9pJwDsS8(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lambda$subscribe$2(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ME62iUbMlvk4MAORH-a0qHQ6P9c(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-interface {p0, v0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;->onComplete(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCfpiirgy8B70c5sH1oBAYj6U2k(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lambda$initialize$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ex7K0DzJlEYCVNCVLClmUrbS_nY(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "!\\s*Redirect:\\s*(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->redirectPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lock:Ljava/lang/Object;

    .line 43
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "SubscriptionsManager"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->queue:Lorg/telegram/messenger/DispatchQueue;

    .line 44
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->client:Lokhttp3/OkHttpClient;

    .line 45
    const-string/jumbo v0, "ublock_subscriptions"

    invoke-static {v0}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private calculateExpiration(Ljava/lang/String;)J
    .locals 7

    .line 210
    const-string v0, "Expires"

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->extractMetadataValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x5

    if-nez p1, :cond_0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    return-wide v2

    .line 216
    :cond_0
    :try_start_0
    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 217
    const-string v3, "hour"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v2

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    .line 219
    :cond_1
    const-string v3, "day"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v2

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    .line 222
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v0

    return-wide v2

    .line 225
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private countRules(Ljava/lang/String;)I
    .locals 5

    .line 199
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 200
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 201
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private extractMetadataValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":\\s*(.+)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 193
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private extractRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->redirectPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchSubscription(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 7

    .line 138
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 142
    new-instance p1, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 165
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 146
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-direct {p0, v1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->extractRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->unsubscribe(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v2, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->fetchSubscription(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->parseMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    iget-object v4, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "metadata_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->-$$Nest$mtoJson(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_0

    .line 164
    :try_start_5
    new-instance p1, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 161
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 139
    :try_start_8
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    if-eqz p2, :cond_4

    .line 167
    new-instance p1, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public static getInstance()Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;
    .locals 1

    .line 49
    sget-object v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->instance:Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;

    invoke-direct {v0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->instance:Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->instance:Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;

    return-object v0
.end method

.method private synthetic lambda$initialize$1(Ljava/lang/Runnable;)V
    .locals 8

    .line 57
    invoke-virtual {p0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 60
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;

    .line 62
    iget-wide v6, v5, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->expires:J

    cmp-long v6, v1, v6

    if-ltz v6, :cond_1

    .line 63
    iget-object v5, v5, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->url:Ljava/lang/String;

    new-instance v6, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3, v0, p1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-direct {p0, v5, v6}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->fetchSubscription(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 70
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$subscribe$2(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->fetchSubscription(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    return-void
.end method

.method private parseMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;
    .locals 10

    .line 177
    const-string v0, "Title"

    invoke-direct {p0, p2, v0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->extractMetadataValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "Homepage"

    invoke-direct {p0, p2, v1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->extractMetadataValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->countRules(Ljava/lang/String;)I

    move-result v6

    .line 180
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->calculateExpiration(Ljava/lang/String;)J

    move-result-wide v7

    .line 182
    new-instance v2, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;

    if-eqz v0, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 184
    :cond_0
    const-string v0, "Unnamed list"

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    move-object v5, v1

    goto :goto_3

    .line 185
    :cond_1
    const-string v1, ""

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/exteragram/messenger/adblock/backend/SubscriptionsManager-IA;)V

    return-object v2
.end method


# virtual methods
.method public getSubscriptions()Ljava/util/List;
    .locals 6

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    const-string/jumbo v4, "metadata_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 98
    :try_start_1
    iget-object v4, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->-$$Nest$smfromJson(Lorg/json/JSONObject;)Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 106
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 106
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public initialize(Ljava/lang/Runnable;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public iterSubscriptions()Ljava/util/Collection;
    .locals 6

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    const-string v4, "content_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 132
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public subscribe(Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;Ljava/lang/String;Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$SubscriptionCallback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "metadata_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
