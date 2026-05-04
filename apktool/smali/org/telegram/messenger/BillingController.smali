.class public Lorg/telegram/messenger/BillingController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# static fields
.field public static final PREMIUM_PRODUCT:Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

.field public static PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails; = null

.field public static final PREMIUM_PRODUCT_ID:Ljava/lang/String; = "telegram_premium"

.field public static billingClientEmpty:Z

.field private static currencyInstance:Ljava/text/NumberFormat;

.field private static currencyInstanceRounded:Ljava/text/NumberFormat;

.field private static instance:Lorg/telegram/messenger/BillingController;


# instance fields
.field private final billingClient:Lcom/android/billingclient/api/BillingClient;

.field private final currencyExpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isDisconnected:Z

.field private lastPremiumToken:Ljava/lang/String;

.field private lastPremiumTransaction:Ljava/lang/String;

.field private onCanceled:Ljava/lang/Runnable;

.field private final requestingTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resultListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Consumer;",
            ">;"
        }
    .end annotation
.end field

.field private setupListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private triesLeft:I


# direct methods
.method public static synthetic $r8$lambda$1RgZJWKvsYv-NUUNmCfyO-7KFQg(Lorg/telegram/messenger/BillingController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/BillingController;->lambda$onBillingServiceDisconnected$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$JS41Ah8eXuKqqpqtE0li5QYxAs0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 466
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 467
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$KHYvc_0alHHcIFqtaw42qQXrHRc(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 449
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 450
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LcArUVCCjPStygpFblSlQgCkLBc([Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 413
    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    .line 414
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$OKMA0rCbX43M140B1GxhtT8ByHY(Lorg/telegram/messenger/BillingController;[Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/messenger/AccountInstance;Lcom/android/billingclient/api/BillingResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/BillingController;->lambda$onPurchasesUpdatedInternal$9([Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/messenger/AccountInstance;Lcom/android/billingclient/api/BillingResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLjX5GhImdTSmLs9aGu4fePmNAI(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 476
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 477
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$danzq_F48g_Ys3Pok1Nhpoe_z4U(Lorg/telegram/messenger/BillingController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/BillingController;->onQueriedPremiumProductDetails(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ecyehow-G4DtNFAYWT5JArU_6oA(Lorg/telegram/messenger/BillingController;Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/BillingController;->lambda$launchBillingFlow$0(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gsno_IU6IsId5EVebfN9PwZHB8I(Lorg/telegram/messenger/BillingController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/BillingController;->lambda$onQueriedPremiumProductDetails$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$jRhw8TbkIGfg8XBx5XbY2EfsReo(Lorg/telegram/messenger/BillingController;Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/BillingController;->lambda$launchBillingFlow$3(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o5FsLnwv6_seNtIi3ZA4T6Gd_ns(Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    .line 512
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BillingController consumeGiftPurchase "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " done: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "OK"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 514
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$oD09R-ClVsVW4IQ7_ewzCQCZMu4(Lcom/android/billingclient/api/Purchase;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    .line 287
    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p6

    const-string v0, "BillingController.launchBillingFlow, consumed "

    if-nez p6, :cond_0

    .line 288
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": OK"

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 289
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 291
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    .line 294
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 295
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 297
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$oF4WmUdn9O6Yp_BnAIvHsPfYgGY([Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 3

    .line 401
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-wide/16 v1, 0x1f4

    .line 402
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUYJ4sJwyR811PMBZ18AArDPfKE(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    .line 310
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$v5QobDfEEYNa2L6o7ywh4nBrG5w(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V
    .locals 1

    .line 426
    const-class v0, Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->findFragment(Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LoginActivity;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity;-><init>(I)V

    .line 429
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 434
    :cond_0
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->phone_number:Ljava/lang/String;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/LoginActivity;->open(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    const-string/jumbo v1, "subs"

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    const-string/jumbo v1, "telegram_premium"

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT:Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BillingController;->resultListeners:Ljava/util/Map;

    .line 71
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/BillingController;->requestingTokens:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BillingController;->currencyExpMap:Ljava/util/Map;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BillingController;->setupListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 539
    iput v0, p0, Lorg/telegram/messenger/BillingController;->triesLeft:I

    .line 87
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method private getCurrencyByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 166
    :cond_0
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 170
    :cond_1
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->findCallingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 171
    iget-object v0, p1, Lorg/telegram/PhoneFormat/CallingCodeInfo;->countries:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p1, Lorg/telegram/PhoneFormat/CallingCodeInfo;->countries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 177
    iget-object p1, p1, Lorg/telegram/PhoneFormat/CallingCodeInfo;->countries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_3
    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 178
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v6

    .line 184
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x5f

    if-ne p1, v2, :cond_5

    goto :goto_1

    .line 188
    :cond_5
    :try_start_0
    new-instance p1, Ljava/util/Locale;

    const-string v2, ""

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 189
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_6
    return-object v1

    .line 191
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-object v1
.end method

.method public static getInstance()Lorg/telegram/messenger/BillingController;
    .locals 2

    .line 80
    sget-object v0, Lorg/telegram/messenger/BillingController;->instance:Lorg/telegram/messenger/BillingController;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/telegram/messenger/BillingController;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/BillingController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/messenger/BillingController;->instance:Lorg/telegram/messenger/BillingController;

    .line 83
    :cond_0
    sget-object v0, Lorg/telegram/messenger/BillingController;->instance:Lorg/telegram/messenger/BillingController;

    return-object v0
.end method

.method public static getResponseCodeString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 618
    const-string p0, "BILLING_UNKNOWN_ERROR"

    return-object p0

    .line 615
    :pswitch_0
    const-string p0, "ITEM_NOT_OWNED"

    return-object p0

    .line 614
    :pswitch_1
    const-string p0, "ITEM_ALREADY_OWNED"

    return-object p0

    .line 613
    :pswitch_2
    const-string p0, "ERROR"

    return-object p0

    .line 612
    :pswitch_3
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    .line 611
    :pswitch_4
    const-string p0, "ITEM_UNAVAILABLE"

    return-object p0

    .line 610
    :pswitch_5
    const-string p0, "BILLING_UNAVAILABLE"

    return-object p0

    .line 609
    :pswitch_6
    const-string p0, "SERVICE_UNAVAILABLE"

    return-object p0

    .line 608
    :pswitch_7
    const-string p0, "USER_CANCELED"

    return-object p0

    .line 607
    :pswitch_8
    const-string p0, "OK"

    return-object p0

    .line 606
    :pswitch_9
    const-string p0, "SERVICE_DISCONNECTED"

    return-object p0

    .line 605
    :pswitch_a
    const-string p0, "FEATURE_NOT_SUPPORTED"

    return-object p0

    .line 604
    :pswitch_b
    const-string p0, "SERVICE_TIMEOUT"

    return-object p0

    .line 616
    :cond_0
    const-string p0, "NETWORK_ERROR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$launchBillingFlow$0(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 271
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Z)V

    return-void
.end method

.method private synthetic lambda$launchBillingFlow$3(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7

    .line 269
    invoke-virtual {p6}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_5

    .line 270
    const-string p6, "BillingController.launchBillingFlow, checked consumables: OK"

    invoke-static {p6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 271
    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/BillingController;Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    move-object p1, v1

    move-object p5, v5

    .line 273
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {v4, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 276
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 277
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 278
    invoke-virtual {p6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 280
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 281
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "BillingController.launchBillingFlow, consuming "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 282
    iget-object p4, p1, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 283
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p6

    .line 284
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p6

    .line 285
    invoke-virtual {p6}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p6

    move-object v5, v0

    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/billingclient/api/Purchase;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    move-object p7, v0

    move-object v0, v5

    .line 282
    invoke-virtual {p4, p6, p7}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 307
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p4

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    new-instance p7, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda2;

    invoke-direct {p7, v2, v4, v0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p4, p6, p7}, Lorg/telegram/messenger/BillingController;->onPurchasesUpdatedInternal(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 316
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-nez p2, :cond_4

    .line 317
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :cond_5
    move-object v6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 320
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BillingController.launchBillingFlow, checked consumables: "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 p7, 0x0

    move-object p6, v6

    .line 321
    invoke-virtual/range {p1 .. p7}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Z)V

    return-void
.end method

.method private synthetic lambda$onBillingServiceDisconnected$12()V
    .locals 0

    .line 531
    invoke-virtual {p0}, Lorg/telegram/messenger/BillingController;->startConnection()V

    return-void
.end method

.method private synthetic lambda$onPurchasesUpdatedInternal$9([Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/messenger/AccountInstance;Lcom/android/billingclient/api/BillingResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 412
    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda9;-><init>([Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 418
    iget-object p1, p0, Lorg/telegram/messenger/BillingController;->requestingTokens:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 420
    instance-of p1, p9, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    const-string v1, "BillingController.onPurchasesUpdatedInternal: "

    if-eqz p1, :cond_3

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p10

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p10, " purchase is purchased and now assigned"

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 423
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    if-eqz p1, :cond_0

    .line 424
    move-object p1, p9

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const-class p10, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    invoke-static {p1, p10}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p10

    move v1, v0

    :goto_0
    if-ge v1, p10, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    .line 425
    new-instance v3, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p4, p3, v2}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    check-cast p9, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {p1, p9, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 441
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 442
    iget-object p9, p0, Lorg/telegram/messenger/BillingController;->resultListeners:Ljava/util/Map;

    invoke-interface {p9, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/core/util/Consumer;

    if-eqz p4, :cond_1

    .line 444
    invoke-interface {p4, p5}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 448
    :cond_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    new-instance p3, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda11;

    invoke-direct {p3, p6, p7, p8}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, p1, p3}, Lorg/telegram/messenger/BillingController;->consumeGiftPurchase(Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/lang/Runnable;)V

    .line 453
    invoke-static {p2}, Lorg/telegram/messenger/utils/BillingUtilities;->cleanupPurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 455
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " purchase is purchased and failed to assign: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-nez p10, :cond_4

    move-object p4, p2

    goto :goto_2

    :cond_4
    iget-object p4, p10, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lorg/telegram/messenger/BillingController;->onCanceled:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 458
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 459
    iput-object p2, p0, Lorg/telegram/messenger/BillingController;->onCanceled:Ljava/lang/Runnable;

    :cond_5
    if-eqz p10, :cond_6

    .line 462
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingConfirmPurchaseError:I

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p3, p4, v0

    const/4 p3, 0x1

    aput-object p10, p4, p3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    .line 465
    :cond_6
    new-instance p1, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda12;

    invoke-direct {p1, p6, p7, p8}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda12;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onQueriedPremiumProductDetails$13()V
    .locals 2

    .line 593
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT:Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/BillingController;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 595
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private onQueriedPremiumProductDetails(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Billing: Query product details finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_3

    .line 570
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    .line 571
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "telegram_premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    sput-object p2, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    goto :goto_0

    .line 575
    :cond_1
    sget-object p1, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-nez p1, :cond_2

    .line 576
    invoke-direct {p0}, Lorg/telegram/messenger/BillingController;->switchToInvoice()V

    return-void

    .line 578
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/BillingController;->switchBackFromInvoice()V

    .line 579
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    return-void

    .line 582
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/BillingController;->switchToInvoice()V

    .line 583
    iget p1, p0, Lorg/telegram/messenger/BillingController;->triesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/messenger/BillingController;->triesLeft:I

    if-lez p1, :cond_5

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const-wide/16 p1, 0x3e8

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x2710

    .line 591
    :goto_1
    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/BillingController;)V

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method private switchBackFromInvoice()V
    .locals 3

    .line 219
    sget-boolean v0, Lorg/telegram/messenger/BillingController;->billingClientEmpty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 222
    sput-boolean v0, Lorg/telegram/messenger/BillingController;->billingClientEmpty:Z

    .line 223
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private switchToInvoice()V
    .locals 3

    .line 211
    sget-boolean v0, Lorg/telegram/messenger/BillingController;->billingClientEmpty:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 214
    sput-boolean v0, Lorg/telegram/messenger/BillingController;->billingClientEmpty:Z

    .line 215
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->resultListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public consumeGiftPurchase(Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/lang/Runnable;)V
    .locals 3

    .line 498
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 506
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BillingController consumeGiftPurchase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 508
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    .line 509
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2, p1, p3}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;)V

    .line 507
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public formatCurrency(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatCurrency(JLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .line 110
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatCurrency(JLjava/lang/String;IZ)Ljava/lang/String;
    .locals 7

    if-eqz p3, :cond_6

    .line 116
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 119
    :cond_0
    const-string v0, "TON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TON "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double p1, p1

    const-wide p4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, p4

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_1
    const-string v0, "XTR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "XTR "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x2c

    invoke-static {p1, p2, p4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 128
    sget-object v1, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    if-nez v1, :cond_3

    .line 129
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_1

    .line 131
    :cond_3
    :goto_0
    sget-object v1, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    if-eqz p5, :cond_4

    .line 133
    sget-object p5, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 134
    sget-object p5, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    invoke-virtual {p5, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 135
    sget-object p5, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    long-to-double v3, p1

    int-to-double v5, p4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_4
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result p5

    .line 138
    sget-object v0, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    invoke-virtual {v0, p5}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 139
    sget-object v0, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    invoke-virtual {v0, p5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 140
    sget-object p5, Lorg/telegram/messenger/BillingController;->currencyInstance:Ljava/text/NumberFormat;

    long-to-double v3, p1

    int-to-double v5, p4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v3, v0

    invoke-virtual {p5, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 143
    :goto_1
    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 145
    :cond_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :cond_6
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrencyExp(Ljava/lang/String;)I
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->currencyExpMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/telegram/messenger/utils/BillingUtilities;->extractCurrencyExp(Ljava/util/Map;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->currencyExpMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLastPremiumToken()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->lastPremiumToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPremiumTransaction()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->lastPremiumTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCurrency(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 156
    const-string p1, "USD"

    return-object p1

    .line 158
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BillingController;->getCurrencyByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    return v0
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/telegram/messenger/AccountInstance;",
            "Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 258
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Z)V

    return-void
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/telegram/messenger/AccountInstance;",
            "Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;",
            ">;",
            "Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;",
            "Z)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_2

    .line 266
    :cond_1
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;

    if-nez v0, :cond_3

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    if-nez v0, :cond_3

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    goto :goto_1

    :cond_3
    :goto_0
    if-nez p6, :cond_2

    .line 267
    const-string p6, "BillingController.launchBillingFlow, checking consumables"

    invoke-static {p6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 268
    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda15;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/BillingController;Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    const-string p1, "inapp"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/BillingController;->queryPurchases(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void

    :goto_1
    if-eqz p6, :cond_4

    .line 327
    const-string p1, "BillingController.launchBillingFlow, consumables checked, launching flow..."

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 330
    :cond_4
    invoke-static {v4, v3}, Lorg/telegram/messenger/utils/BillingUtilities;->createDeveloperPayload(Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Lorg/telegram/messenger/AccountInstance;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 331
    iget-object p2, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 332
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    .line 335
    invoke-virtual {p3, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    .line 336
    invoke-virtual {p3, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    .line 337
    invoke-virtual {p3, v5}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    if-eqz v6, :cond_5

    .line 339
    invoke-virtual {p3, v6}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 341
    :cond_5
    iget-object p4, v1, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p3

    invoke-virtual {p4, v2, p3}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p3

    .line 342
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    if-eqz p3, :cond_6

    .line 344
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Billing: Launch Error: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 4

    .line 528
    const-string v0, "Billing: Service disconnected"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 529
    iget-boolean v0, p0, Lorg/telegram/messenger/BillingController;->isDisconnected:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3a98

    goto :goto_0

    :cond_0
    const/16 v0, 0x1388

    :goto_0
    const/4 v1, 0x1

    .line 530
    iput-boolean v1, p0, Lorg/telegram/messenger/BillingController;->isDisconnected:Z

    .line 531
    new-instance v1, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/BillingController;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Billing: Setup finished with result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 545
    iput-boolean p1, p0, Lorg/telegram/messenger/BillingController;->isDisconnected:Z

    const/4 v0, 0x3

    .line 546
    iput v0, p0, Lorg/telegram/messenger/BillingController;->triesLeft:I

    .line 548
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT:Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/BillingController;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 550
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 552
    :goto_0
    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/BillingController;)V

    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/BillingController;->queryPurchases(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 553
    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/BillingController;)V

    const-string/jumbo v1, "subs"

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/BillingController;->queryPurchases(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->setupListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->setupListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->setupListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 558
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/BillingController;->setupListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 561
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/messenger/BillingController;->isDisconnected:Z

    if-nez p1, :cond_2

    .line 562
    invoke-direct {p0}, Lorg/telegram/messenger/BillingController;->switchToInvoice()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/BillingController;->onPurchasesUpdatedInternal(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPurchasesUpdatedInternal(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing: Purchases updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-ne p1, v10, :cond_0

    .line 357
    invoke-static {}, Lorg/telegram/ui/PremiumPreviewFragment;->sentPremiumBuyCanceled()V

    .line 359
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/BillingController;->onCanceled:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 360
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 361
    iput-object v2, p0, Lorg/telegram/messenger/BillingController;->onCanceled:Ljava/lang/Runnable;

    :cond_1
    if-eqz p3, :cond_d

    .line 364
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 368
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object/from16 v9, p3

    goto/16 :goto_4

    .line 374
    :cond_4
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 375
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 376
    iput-object v2, p0, Lorg/telegram/messenger/BillingController;->lastPremiumTransaction:Ljava/lang/String;

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 378
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "telegram_premium"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/BillingController;->lastPremiumTransaction:Ljava/lang/String;

    .line 380
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/BillingController;->lastPremiumToken:Ljava/lang/String;

    .line 383
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->requestingTokens:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BillingController.onPurchasesUpdatedInternal: "

    if-nez v0, :cond_b

    .line 384
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const-string v2, ")"

    if-ne v0, v10, :cond_a

    .line 385
    invoke-static {v3}, Lorg/telegram/messenger/utils/BillingUtilities;->extractDeveloperPayload(Lcom/android/billingclient/api/Purchase;)Landroidx/core/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 386
    iget-object v4, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v4, :cond_7

    :cond_6
    move-object/from16 v9, p3

    move-object v4, v3

    goto/16 :goto_3

    .line 390
    :cond_7
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v4

    if-nez v4, :cond_9

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " purchase is purchased and not acknowledged: assigning (accountId="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") (purpose="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lorg/telegram/messenger/BillingController;->requestingTokens:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;-><init>()V

    .line 395
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->receipt:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 396
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 397
    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 399
    new-array v2, v10, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 400
    new-instance v1, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda6;-><init>([Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 405
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 406
    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/telegram/messenger/AccountInstance;

    .line 408
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    if-eqz v0, :cond_8

    const v0, 0x10048

    :goto_1
    move v12, v0

    goto :goto_2

    :cond_8
    const v0, 0x10040

    goto :goto_1

    .line 411
    :goto_2
    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v6, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/BillingController;[Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/messenger/AccountInstance;Lcom/android/billingclient/api/BillingResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    invoke-virtual {v13, v4, v0, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v9, p3

    move-object v4, v3

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " purchase is purchased and acknowledged: consuming"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 475
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    new-instance v1, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v7, v8, v9}, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4, v0, v1}, Lorg/telegram/messenger/BillingController;->consumeGiftPurchase(Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 387
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " purchase is purchased, but failed to extract saved payload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v9, p3

    move-object v4, v3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " purchase is (state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), (isAcknowledged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v9, p3

    move-object v4, v3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " purchase is already requesting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v9, p3

    .line 488
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_d

    if-eqz v9, :cond_d

    .line 489
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_4
    if-eqz v9, :cond_d

    .line 370
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void
.end method

.method public queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;",
            ">;",
            "Lcom/android/billingclient/api/ProductDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Billing: Controller should be ready for this call!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryPurchases(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public setOnCanceled(Ljava/lang/Runnable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/BillingController;->onCanceled:Ljava/lang/Runnable;

    return-void
.end method

.method public startConnection()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->currencyExpMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/telegram/messenger/utils/BillingUtilities;->extractCurrencyExp(Ljava/util/Map;)V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 206
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public startManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 246
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/account/subscriptions?sku=%s&package=%s"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object v4, v5, p2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    return v0
.end method

.method public whenSetuped(Ljava/lang/Runnable;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/telegram/messenger/BillingController;->setupListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
