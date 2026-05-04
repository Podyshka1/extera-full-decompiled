.class public final Lcom/exteragram/messenger/regdate/RegDateController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/regdate/RegDateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/regdate/RegDateController$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$initializeRegIds(Lcom/exteragram/messenger/regdate/RegDateController$Companion;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/exteragram/messenger/regdate/RegDateController$Companion;->initializeRegIds()V

    return-void
.end method

.method private final initializeRegIds()V
    .locals 7

    .line 203
    invoke-static {}, Lcom/exteragram/messenger/regdate/RegDateController;->access$getRegIds$cp()[Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "extera/registration_dates.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "open(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 210
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 211
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 213
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 214
    invoke-static {v2}, Lcom/exteragram/messenger/backup/InvisibleEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 217
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    .line 223
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "<get-key>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    .line 225
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 228
    :cond_1
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->requireNoNulls([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-static {v0}, Lcom/exteragram/messenger/regdate/RegDateController;->access$setRegIds$cp([Ljava/lang/Long;)V

    .line 229
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->requireNoNulls([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-static {v0}, Lcom/exteragram/messenger/regdate/RegDateController;->access$setRegDates$cp([Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 232
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getInstance(I)Lcom/exteragram/messenger/regdate/RegDateController;
    .locals 3

    .line 189
    invoke-static {}, Lcom/exteragram/messenger/regdate/RegDateController;->access$getInstance$cp()[Lcom/exteragram/messenger/regdate/RegDateController;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 191
    invoke-static {}, Lcom/exteragram/messenger/regdate/RegDateController;->access$getLockObjects$cp()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    monitor-enter v0

    .line 192
    :try_start_0
    invoke-static {}, Lcom/exteragram/messenger/regdate/RegDateController;->access$getInstance$cp()[Lcom/exteragram/messenger/regdate/RegDateController;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/exteragram/messenger/regdate/RegDateController;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/regdate/RegDateController;-><init>(I)V

    .line 195
    invoke-static {}, Lcom/exteragram/messenger/regdate/RegDateController;->access$getInstance$cp()[Lcom/exteragram/messenger/regdate/RegDateController;

    move-result-object v2

    aput-object v1, v2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 197
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1

    :cond_1
    return-object v0
.end method
