.class public Lorg/telegram/ui/bots/BotBiometry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotBiometry$Bot;
    }
.end annotation


# static fields
.field private static final instances:Ljava/util/WeakHashMap;

.field private static keyStore:Ljava/security/KeyStore;


# instance fields
.field public access_granted:Z

.field public access_requested:Z

.field public final botId:J

.field private callback:Lorg/telegram/messenger/Utilities$Callback2;

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field public disabled:Z

.field private encrypted_token:Ljava/lang/String;

.field private iv:Ljava/lang/String;

.field private prompt:Landroidx/biometric/BiometricPrompt;


# direct methods
.method public static synthetic $r8$lambda$BX8icqv4QTfhlOWuLIV7JSZ6DCc(ILjava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 446
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 447
    new-instance p1, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQBZCB8hiMa15KGu5y2XUkVeXFw(Lorg/telegram/ui/bots/BotBiometry;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotBiometry;->lambda$requestToken$0(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2CojiN8JPhNZTvoxcZMeuh7u8U(Lorg/telegram/ui/bots/BotBiometry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotBiometry;->lambda$updateToken$1(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNOl549nqlZ2QPq8Y9Vb3LG8d5I(Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 449
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 450
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 451
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 452
    new-instance v5, Lorg/telegram/ui/bots/BotBiometry$Bot;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Lorg/telegram/ui/bots/BotBiometry$Bot;-><init>(Lorg/telegram/tgnet/TLRPC$User;ZLorg/telegram/ui/bots/BotBiometry-IA;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_2
    invoke-interface {p2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lorg/telegram/ui/bots/BotBiometry;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotBiometry;->callback:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcallback(Lorg/telegram/ui/bots/BotBiometry;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry;->callback:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/bots/BotBiometry;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IJ)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry;->context:Landroid/content/Context;

    .line 89
    iput p2, p0, Lorg/telegram/ui/bots/BotBiometry;->currentAccount:I

    .line 90
    iput-wide p3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    .line 91
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotBiometry;->load()V

    return-void
.end method

.method public static clear()V
    .locals 5

    .line 497
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2botbiometry_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 501
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :cond_1
    sget-object v0, Lorg/telegram/ui/bots/BotBiometry;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public static get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotBiometry;
    .locals 3

    .line 79
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lorg/telegram/ui/bots/BotBiometry;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotBiometry;

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Lorg/telegram/ui/bots/BotBiometry;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotBiometry;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public static getAvailableType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-static {p0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xf

    .line 122
    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object v0

    .line 129
    :cond_1
    const-string p0, "unknown"

    return-object p0

    :catch_0
    move-exception p0

    .line 126
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getBots(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2botbiometry_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    const-string v4, "_requested"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v3

    .line 427
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 433
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_3
    :goto_1
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 435
    invoke-static {p0, p1, v5, v6}, Lorg/telegram/ui/bots/BotBiometry;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotBiometry;

    move-result-object v5

    .line 436
    iget-boolean v6, v5, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v5, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    if-nez v6, :cond_4

    goto :goto_1

    .line 437
    :cond_4
    iget-boolean v5, v5, Lorg/telegram/ui/bots/BotBiometry;->disabled:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 440
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 441
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 445
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p0

    new-instance v1, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v2, v0, p2}, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 343
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2botbiometry_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x20

    .line 370
    new-array p1, p1, [B

    .line 371
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 372
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p1
.end method

.method private getSecretKey()Ljavax/crypto/SecretKey;
    .locals 7

    .line 313
    sget-object v0, Lorg/telegram/ui/bots/BotBiometry;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    const-string v2, "AndroidKeyStore"

    if-nez v0, :cond_0

    .line 314
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/bots/BotBiometry;->keyStore:Ljava/security/KeyStore;

    .line 315
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 317
    :cond_0
    sget-object v0, Lorg/telegram/ui/bots/BotBiometry;->keyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9bot_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sget-object v0, Lorg/telegram/ui/bots/BotBiometry;->keyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0

    .line 320
    :cond_1
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 324
    const-string v1, "CBC"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 325
    const-string v1, "PKCS7Padding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 327
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    const/16 v4, 0x3c

    const/4 v5, 0x2

    .line 328
    invoke-virtual {v0, v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_2
    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    .line 331
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 333
    :cond_3
    const-string v1, "AES"

    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 337
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 338
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private initPrompt()V
    .locals 4

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->prompt:Landroidx/biometric/BiometricPrompt;

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 207
    new-instance v1, Landroidx/biometric/BiometricPrompt;

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    new-instance v3, Lorg/telegram/ui/bots/BotBiometry$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotBiometry$1;-><init>(Lorg/telegram/ui/bots/BotBiometry;)V

    invoke-direct {v1, v2, v0, v3}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->prompt:Landroidx/biometric/BiometricPrompt;

    return-void
.end method

.method private synthetic lambda$requestToken$0(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 139
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 p3, 0x1

    .line 144
    invoke-direct {p0, p3}, Lorg/telegram/ui/bots/BotBiometry;->makeCryptoObject(Z)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p3}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_2

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p3}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p3

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_2

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    goto :goto_2

    .line 155
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 156
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "No cryptoObject found"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 163
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    :cond_4
    :goto_2
    invoke-interface {p1, p2, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateToken$1(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    if-eqz p4, :cond_3

    .line 174
    :try_start_0
    invoke-virtual {p4}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry;->iv:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 178
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    const/4 p4, 0x0

    .line 183
    invoke-direct {p0, p4}, Lorg/telegram/ui/bots/BotBiometry;->makeCryptoObject(Z)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p4

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p4}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_2

    .line 188
    invoke-virtual {p4}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    .line 189
    invoke-virtual {p4}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry;->iv:Ljava/lang/String;

    .line 194
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    goto :goto_3

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "No cryptoObject found"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 197
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    :cond_3
    :goto_3
    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private makeCryptoObject(Z)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 3

    .line 243
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotBiometry;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 244
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotBiometry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 246
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotBiometry;->iv:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 248
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 250
    :goto_0
    new-instance p1, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {p1, v0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 253
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private prompt(Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 5

    .line 265
    iput-object p4, p0, Lorg/telegram/ui/bots/BotBiometry;->callback:Lorg/telegram/messenger/Utilities$Callback2;

    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotBiometry;->initPrompt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    invoke-direct {p0, p2}, Lorg/telegram/ui/bots/BotBiometry;->makeCryptoObject(Z)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v1

    .line 274
    iget v2, p0, Lorg/telegram/ui/bots/BotBiometry;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 275
    new-instance v3, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    .line 276
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Back:I

    .line 277
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v2

    const/16 v3, 0xf

    .line 278
    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v2

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    invoke-virtual {v2, p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 282
    :cond_0
    invoke-virtual {v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p1

    const/16 v2, 0x1e

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 283
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2

    .line 285
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    iput-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    .line 290
    :cond_1
    invoke-virtual {v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {v3, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    .line 291
    invoke-virtual {v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/bots/BotBiometry;->iv:Ljava/lang/String;

    .line 293
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    .line 294
    iput-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->callback:Lorg/telegram/messenger/Utilities$Callback2;

    .line 295
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p3, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 298
    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 300
    invoke-direct {p0, p2}, Lorg/telegram/ui/bots/BotBiometry;->makeCryptoObject(Z)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 302
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v2, :cond_3

    .line 303
    iget-object p2, p0, Lorg/telegram/ui/bots/BotBiometry;->prompt:Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p2, p1, v1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_2

    .line 305
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/bots/BotBiometry;->prompt:Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p2, p1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    :goto_2
    return-void

    :catch_1
    move-exception p1

    .line 269
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 270
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static toggleBotDisabled(Landroid/content/Context;IJZ)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2botbiometry_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 466
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-nez p4, :cond_0

    .line 468
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {p0, p4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 469
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public asked()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    return v0
.end method

.method public getStatus()Lorg/json/JSONObject;
    .locals 5

    .line 351
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotBiometry;->getAvailableType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 353
    const-string v3, "available"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 355
    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 359
    :goto_0
    const-string v1, "access_requested"

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 360
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotBiometry;->disabled:Z

    if-nez v1, :cond_1

    move v2, v4

    :cond_1
    const-string v1, "access_granted"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    const-string v2, "token_saved"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->context:Landroid/content/Context;

    iget v2, p0, Lorg/telegram/ui/bots/BotBiometry;->currentAccount:I

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/bots/BotBiometry;->getDeviceId(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public granted()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    return v0
.end method

.method public load()V
    .locals 6

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2botbiometry_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/bots/BotBiometry;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    iget-wide v3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_iv"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->iv:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v1, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_requested"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_disabled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotBiometry;->disabled:Z

    return-void
.end method

.method public requestToken(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    .line 135
    new-instance v0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotBiometry;Lorg/telegram/messenger/Utilities$Callback2;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/bots/BotBiometry;->prompt(Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public save()V
    .locals 8

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2botbiometry_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/bots/BotBiometry;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    const/4 v2, 0x1

    const-string v3, "_requested"

    if-eqz v1, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    const-string v3, "_iv"

    if-eqz v1, :cond_3

    .line 386
    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/bots/BotBiometry;->encrypted_token:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_1

    move-object v4, v5

    :cond_1
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotBiometry;->iv:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 389
    :cond_3
    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotBiometry;->disabled:Z

    const-string v3, "_disabled"

    if-eqz v1, :cond_4

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 395
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotBiometry;->botId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGranted(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    .line 113
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    .line 114
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    return-void
.end method

.method public updateToken(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 171
    new-instance v0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/BotBiometry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/telegram/ui/bots/BotBiometry;->prompt(Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method
