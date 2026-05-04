.class public abstract Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cachedGiftOptions:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$0ynvfwDwlETv4N5k_tFJOsBhlDc(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 392
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda27;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0zX-3SoXe-1gWZ-IPZ3CKHZG1-0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 794
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda22;

    invoke-direct {p2, p3, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3JllB8xkLNaulTHhFyBUSMZgAnw(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    .line 456
    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->currency:Ljava/lang/String;

    .line 458
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result p1

    int-to-double v2, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->amount:J

    .line 460
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;-><init>()V

    .line 461
    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 462
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda28;

    move-object v6, p0

    move-object v1, p3

    move-object v4, p4

    move-object v5, p5

    move-object v3, p6

    move-object v2, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$3os-lJHtVF5JIB7UG6Wwe0YSKaQ(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 162
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda30;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JpHzIJIb5bMpL6i3-zr-1vThO4(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/HashMap;)V
    .locals 0

    .line 88
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5r85qK5PMgqqM589Q01FgtxOebo(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V
    .locals 0

    .line 670
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6YUWeNj5TBmUQU6EBQNuQA00DlA(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 2

    .line 178
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 179
    invoke-interface {p0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_0
    sget-object p0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p2, p0, :cond_1

    .line 181
    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$7baPAvWLWuDmI8IBz6DwQS52J2g(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 224
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 228
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda46;

    invoke-direct {v1, p4, p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda46;-><init>(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    new-instance p4, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda47;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p4}, Lorg/telegram/messenger/BillingController;->setOnCanceled(Ljava/lang/Runnable;)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    .line 237
    invoke-virtual {p6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p4

    .line 238
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p5

    .line 239
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p5, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    .line 240
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p2

    .line 238
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 236
    invoke-virtual {p0, p1, p4, p7, p2}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$7cbdrUvBWe5qggkb3uevHg8FLso(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$93mU_nmYohLDMzCY8V27ZWzqs0Q(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getSmallGroupsParticipantsCount()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$9IAmvtx-Dgt8WGAwH1-j51UxhvQ(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 222
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda43;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object v3, p6

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AFyj1erWiMy20hRempUW1ilRtHw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 527
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;

    .line 528
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 531
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 532
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 533
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 534
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    .line 536
    :cond_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    const-string v5, "FT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 539
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 542
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_5

    .line 551
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    .line 552
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda34;-><init>(Ljava/text/Collator;)V

    goto :goto_3

    .line 554
    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda35;-><init>()V

    .line 556
    :goto_3
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 557
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 558
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda36;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda36;-><init>(Ljava/util/Comparator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    .line 560
    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda37;

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/Map;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public static synthetic $r8$lambda$CuzUHzLVLhwesI0pHKXN9N8ZOes(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 796
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 799
    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Essw-BawrvnmZnHQ3bnrVP4EnZM(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 464
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 468
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda48;

    invoke-direct {v1, p4, p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda48;-><init>(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 473
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    new-instance p4, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda49;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p4}, Lorg/telegram/messenger/BillingController;->setOnCanceled(Ljava/lang/Runnable;)V

    .line 476
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    .line 477
    invoke-virtual {p6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p4

    .line 478
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p5

    .line 479
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p5, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    .line 480
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p2

    .line 478
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 476
    invoke-virtual {p0, p1, p4, p7, p2}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$J0-yHjds9RgDYKvt_T-ecd4MSrg(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 2

    .line 408
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 409
    invoke-interface {p0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 410
    :cond_0
    sget-object p0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p2, p0, :cond_1

    .line 411
    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$J6qxWY_dgKgsiD-rmGLQuQhZJJs(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 811
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 814
    :cond_0
    instance-of p0, p2, Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    if-eqz p0, :cond_1

    .line 815
    check-cast p2, Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    invoke-interface {p3, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$JLbra93APvkVJSuYQ4UO-wsuxI4(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 474
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_DuwA6NnZQ_WwVEeKpsO70zSsg(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MvfVwe531_JXPz1NF_6y9mFwFNI(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 234
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Myrb7pkeIoN-hHLUrHUT2n9Tckc(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 824
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OqgjmZsm0vXy46StbL_iw_udKZ8(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V
    .locals 0

    .line 737
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBTcRp1um45eWHZG3gzKr30psSI(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 753
    new-instance p3, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda33;

    invoke-direct {p3, p2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SY98nEWidlOPYnx2oUqogtW1Ge8(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 653
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWLhHkJVaeOtePsTVLUViRxh8vo(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 168
    :cond_0
    instance-of p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 169
    check-cast p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    .line 170
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    .line 171
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 172
    new-instance p0, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0, p2, p4, p5}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 173
    :cond_1
    instance-of p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p0, :cond_2

    .line 174
    new-instance p0, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {p0, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 177
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda42;

    invoke-direct {p2, p6, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 184
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    .line 186
    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfNNzLz2r9dG197A_eLlLbrOSU8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 394
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 398
    :cond_0
    instance-of p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 399
    check-cast p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    .line 400
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    .line 401
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 402
    new-instance p0, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0, p2, p4, p5}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 403
    :cond_1
    instance-of p0, p2, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p0, :cond_2

    .line 404
    new-instance p0, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {p0, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 407
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda38;

    invoke-direct {p2, p6, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 414
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    .line 416
    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W5_e6TnV8SVJa9JuWe6Ji28UtSQ(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJ_68Fj4K7a4B60c3blWRgE5lC8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    .line 754
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz v0, :cond_2

    .line 755
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 756
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 757
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 758
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    :goto_0
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 761
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_0

    .line 762
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    .line 763
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 764
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_0

    .line 765
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_1
    invoke-interface {p2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$_w_gaUlJUXZZLyliJu8K231X2jM(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_0

    .line 230
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$aH74gVkTD7lttfJxjKuQVjVX7Mw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 323
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bX1Qy1NzkHRThQpQTS9V_h6PO20(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9

    .line 628
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/billingclient/api/ProductDetails;

    .line 629
    invoke-virtual {p5}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    .line 630
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 631
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p5}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p5

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-virtual {p5, v1}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result p5

    int-to-double v5, p5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->amount:J

    .line 633
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda18;

    invoke-direct {p4, p1, p2, p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$br3-iJE_X-qzNeMjPkCOVBKH6JU(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 845
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c4CaN9gctI_Q4seGhqTSI0IFa8A(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 779
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda12;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_xySM0hQlLkMqWy7Mg2ggZA0YA(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 323
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 327
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 328
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda41;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$hJjT8s6MAyPHuzEztlQfziC_7s8(Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 604
    instance-of p4, p3, Lorg/telegram/tgnet/Vector;

    if-eqz p4, :cond_4

    .line 605
    check-cast p3, Lorg/telegram/tgnet/Vector;

    .line 606
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 608
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 609
    iget-object v2, p3, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 610
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 612
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    const-string v4, "inapp"

    .line 613
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    .line 614
    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    .line 612
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 627
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda16;

    invoke-direct {v1, p4, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 619
    :cond_3
    :goto_1
    new-instance p3, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public static synthetic $r8$lambda$hJzHFurCZq_WE9Q8PWPoSTR-tmU(Ljava/util/Comparator;Lorg/telegram/tgnet/TLRPC$TL_help_country;Lorg/telegram/tgnet/TLRPC$TL_help_country;)I
    .locals 0

    .line 558
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$if9taV4VULqM4_GjMggPVmTEzbw(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 847
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 850
    :cond_0
    instance-of p0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    if-eqz p0, :cond_1

    .line 851
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    .line 852
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->users:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 853
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, p0, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 854
    invoke-interface {p4, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ig8rwkvloatAUQHYz-F830bssQs(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 469
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_0

    .line 470
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$jtIygh0wfCd4nkIOMx1xfnvXeZk(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$li8FkIw_gPYVwIEk-ZVlffnvmp0(Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-nez p0, :cond_0

    .line 621
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->saveGiftOptionsToCache(ILjava/util/List;)V

    .line 623
    :cond_0
    invoke-interface {p3, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mYSDz_ltJBzqsKE5_IeTomNxvh8(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    .line 216
    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->currency:Ljava/lang/String;

    .line 218
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result p1

    int-to-double v2, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->amount:J

    .line 220
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;-><init>()V

    .line 221
    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 222
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda32;

    move-object v6, p0

    move-object v1, p3

    move-object v4, p4

    move-object v5, p5

    move-object v3, p6

    move-object v2, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$nmWb5AEkAc2YBsOOfifA2zNMRfU(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 826
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 829
    :cond_0
    instance-of p0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    if-eqz p0, :cond_1

    .line 830
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    .line 831
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->users:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 832
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, p0, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 833
    invoke-interface {p4, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ps5PoP1v0-VQnUSMm24oobXVob8(Lorg/telegram/messenger/MessagesController;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 726
    instance-of p5, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    if-eqz p5, :cond_2

    .line 727
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 728
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, p5, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 729
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    :goto_0
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge v0, p5, :cond_1

    .line 731
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 732
    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 733
    iget-wide v2, p5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    invoke-static {p5}, Lorg/telegram/messenger/ChatObject;->isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 734
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;

    invoke-direct {p1, p3, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$s-eOjtmvaAd2X_F-KsmItj8H5ic(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s4NAJe2MjR8VDQOS7QV7nBvE3oc(Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-nez p0, :cond_0

    .line 640
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->saveGiftOptionsToCache(ILjava/util/List;)V

    .line 642
    :cond_0
    invoke-interface {p3, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sYP9mxeaslqmTa2PPz0LwaXUirU(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 462
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda39;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object v3, p6

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ue2f5ULw7Q0ZHLUjNiKqislP674(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/Map;Ljava/util/List;)V
    .locals 1

    .line 560
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcN_4ONodN04ixunRt6ZS1wHMbw(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 660
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    if-eqz p4, :cond_3

    .line 661
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 662
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 663
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    :goto_0
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v0, p4, :cond_2

    .line 665
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$User;

    .line 666
    iget-boolean v1, p4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v1, :cond_1

    invoke-static {p4}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_1

    :cond_0
    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;

    invoke-direct {p1, p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$xwfFzKml7_NSuKFyy5aHsJv3H88(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 780
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    if-eqz v0, :cond_0

    .line 781
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    .line 782
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 783
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 784
    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 786
    :cond_0
    invoke-interface {p3, p4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcS_XXF4IJaU15xaPmGCc2gtXws(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 809
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda13;

    invoke-direct {v0, p3, p0, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static applyBoost(JLjava/util/List;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 839
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 840
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 841
    new-instance v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;-><init>()V

    neg-long p0, p0

    .line 842
    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 843
    iget p0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->flags:I

    .line 844
    iget-object p0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_applyBoost;->slots:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 845
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4, v1, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    const/16 p1, 0x42

    invoke-virtual {v0, v2, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static applyGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 791
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 792
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_applyGiftCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_applyGiftCode;-><init>()V

    .line 793
    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_applyGiftCode;->slug:Ljava/lang/String;

    .line 794
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda17;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 p1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static boostsPerSentGift()I
    .locals 2

    .line 78
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->boostsPerSentGift:J

    long-to-int v0, v0

    return v0
.end method

.method public static checkGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 775
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 776
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 777
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkGiftCode;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_checkGiftCode;-><init>()V

    .line 778
    iput-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkGiftCode;->slug:Ljava/lang/String;

    .line 779
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda8;

    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static filterGiftOptions(Ljava/util/List;I)Ljava/util/List;
    .locals 4

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 490
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    .line 491
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->users:I

    if-ne v3, p1, :cond_0

    .line 492
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 497
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->users:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 498
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static filterGiftOptionsByBilling(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 506
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 509
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 511
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method public static getCachedGiftOptions(I)Ljava/util/List;
    .locals 6

    .line 567
    sget-object v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->cachedGiftOptions:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 568
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 570
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getGiveawayInfo(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    .line 804
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 805
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 806
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getGiveawayInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getGiveawayInfo;-><init>()V

    .line 807
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getGiveawayInfo;->msg_id:I

    .line 808
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getGiveawayInfo;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 809
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda10;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static getMyBoosts(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    .line 821
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 822
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 823
    new-instance v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getMyBoosts;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getMyBoosts;-><init>()V

    .line 824
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static getMyChannels(J)Ljava/util/ArrayList;
    .locals 8

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 96
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 97
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 98
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 100
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v6, v4

    cmp-long v6, v6, p0

    if-eqz v6, :cond_0

    .line 101
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static giveawayAddPeersMax()J
    .locals 2

    .line 58
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayAddPeersMax:J

    return-wide v0
.end method

.method public static giveawayBoostsPerPremium()I
    .locals 2

    .line 70
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayBoostsPerPremium:J

    long-to-int v0, v0

    return v0
.end method

.method public static giveawayCountriesMax()J
    .locals 2

    .line 66
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayCountriesMax:J

    return-wide v0
.end method

.method public static giveawayPeriodMax()J
    .locals 2

    .line 62
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayPeriodMax:J

    return-wide v0
.end method

.method public static invalidateGiftOptionsToCache(I)V
    .locals 1

    .line 581
    sget-object v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->cachedGiftOptions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 582
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static isGoogleBillingAvailable()Z
    .locals 1

    .line 118
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    return v0
.end method

.method public static isMultiBoostsAvailable()Z
    .locals 4

    .line 74
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->boostsPerSentGift:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static launchPreparedGiveaway(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;IZZZILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 250
    sget p8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p8

    .line 251
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 254
    instance-of v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 255
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;-><init>()V

    .line 256
    iput-boolean p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->only_new_subscribers:Z

    .line 257
    iput-boolean p6, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->winners_are_visible:Z

    .line 258
    iput-object p9, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->prize_description:Ljava/lang/String;

    .line 259
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->until_date:I

    .line 260
    iget p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    or-int/lit8 p5, p4, 0x6

    .line 261
    iput p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    if-eqz p7, :cond_0

    or-int/lit8 p4, p4, 0x16

    .line 263
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    .line 265
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->random_id:J

    .line 266
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->additional_peers:Ljava/util/ArrayList;

    .line 267
    iget-wide p4, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p4, p4

    invoke-virtual {p8, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 268
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->currency:Ljava/lang/String;

    .line 270
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLObject;

    .line 271
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 272
    iget-object p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->countries_iso2:Ljava/util/ArrayList;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 276
    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p4, :cond_2

    .line 277
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->additional_peers:Ljava/util/ArrayList;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p5, p5

    invoke-virtual {p8, p5, p6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_3
    instance-of v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v1, :cond_8

    .line 283
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;-><init>()V

    .line 284
    iput-boolean p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->only_new_subscribers:Z

    .line 285
    iput-boolean p6, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->winners_are_visible:Z

    .line 286
    iput-object p9, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->prize_description:Ljava/lang/String;

    .line 287
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->until_date:I

    .line 288
    iget p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    or-int/lit8 p5, p4, 0x6

    .line 289
    iput p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    if-eqz p7, :cond_4

    or-int/lit8 p4, p4, 0x16

    .line 291
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    .line 293
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->random_id:J

    .line 294
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->additional_peers:Ljava/util/ArrayList;

    .line 295
    iget-wide p4, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p4, p4

    invoke-virtual {p8, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 296
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->currency:Ljava/lang/String;

    .line 298
    move-object p4, p0

    check-cast p4, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    iget-wide p4, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    iput-wide p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->stars:J

    .line 299
    iget p4, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    iput p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->users:I

    .line 301
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLObject;

    .line 302
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 303
    iget-object p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->countries_iso2:Ljava/util/ArrayList;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 306
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 307
    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p4, :cond_6

    .line 308
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->additional_peers:Ljava/util/ArrayList;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p5, p5

    invoke-virtual {p8, p5, p6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 317
    :cond_7
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_launchPrepaidGiveaway;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_launchPrepaidGiveaway;-><init>()V

    .line 318
    iget-wide p4, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    iput-wide p4, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_launchPrepaidGiveaway;->giveaway_id:J

    .line 319
    iget-wide p2, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-virtual {p8, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_launchPrepaidGiveaway;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 320
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_launchPrepaidGiveaway;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 321
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda29;

    invoke-direct {p0, p11, p8, p10}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, p1, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return-void
.end method

.method public static loadChatParticipants(JILjava/lang/String;IILorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 743
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    .line 744
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 746
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 747
    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez p3, :cond_0

    .line 748
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;-><init>()V

    :goto_0
    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    if-nez p3, :cond_1

    .line 749
    const-string p3, ""

    :cond_1
    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 750
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 751
    iput p5, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 753
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda26;

    invoke-direct {p0, p2, p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static loadCountries(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 521
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 523
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;-><init>()V

    .line 524
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;->lang_code:Ljava/lang/String;

    .line 525
    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static loadGiftOptions(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)I
    .locals 5

    if-nez p1, :cond_0

    .line 588
    invoke-static {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->getCachedGiftOptions(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-interface {p2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0

    .line 595
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 596
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 597
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPremiumGiftCodeOptions;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPremiumGiftCodeOptions;-><init>()V

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 599
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPremiumGiftCodeOptions;->flags:I

    .line 600
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPremiumGiftCodeOptions;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 603
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p0

    return p0
.end method

.method public static loadParticipantsCount(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 82
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static payGiftCode(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 109
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->invalidateGiftOptionsToCache(I)V

    .line 110
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiftCodeByInvoice(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 113
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiftCodeByGoogle(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static payGiftCodeByGoogle(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    .line 192
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 193
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    move-object v2, p2

    move-object p2, p1

    .line 194
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;-><init>()V

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->users:Ljava/util/ArrayList;

    .line 197
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    .line 198
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_0

    .line 199
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->users:Ljava/util/ArrayList;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-eqz v2, :cond_2

    .line 203
    iput p0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    .line 204
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_2
    if-eqz p3, :cond_3

    .line 206
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    .line 208
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 211
    :cond_3
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    const-string v0, "inapp"

    .line 212
    invoke-virtual {p3, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    .line 213
    invoke-virtual {p3, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    .line 214
    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p3

    .line 215
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    new-array p0, p0, [Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 v2, 0x0

    aput-object p3, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda20;

    move-object p3, p6

    move-object p6, p4

    move-object p4, p3

    move-object p3, v1

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v2, p0}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public static payGiftCodeByInvoice(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    .line 125
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 126
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 128
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    move-object v3, p3

    .line 129
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;-><init>()V

    .line 130
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;-><init>()V

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->users:Ljava/util/ArrayList;

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    .line 134
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_0

    .line 135
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->users:Ljava/util/ArrayList;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 138
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 139
    iget p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    .line 140
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_2
    if-eqz p2, :cond_3

    .line 144
    iget p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->flags:I

    .line 145
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 148
    :cond_3
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->currency:Ljava/lang/String;

    .line 149
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->amount:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;->amount:J

    .line 151
    iput-object v4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 152
    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;->option:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 154
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 156
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 157
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 158
    iget p0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    .line 160
    :cond_4
    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 162
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda23;

    move-object p1, p6

    move-object p2, v0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static payGiveAway(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 337
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-static/range {p0 .. p11}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiveAwayByInvoice(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 340
    :cond_0
    invoke-static/range {p0 .. p11}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiveAwayByGoogle(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static payGiveAwayByGoogle(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 425
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 426
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    move-object v2, p1

    .line 427
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;-><init>()V

    .line 429
    iput-boolean p5, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->only_new_subscribers:Z

    .line 430
    iput-boolean p7, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->winners_are_visible:Z

    .line 431
    iput-object p9, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->prize_description:Ljava/lang/String;

    .line 432
    iput p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->until_date:I

    .line 433
    iget p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    or-int/lit8 p5, p4, 0x6

    .line 434
    iput p5, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    if-eqz p8, :cond_0

    or-int/lit8 p4, p4, 0x16

    .line 436
    iput p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    .line 438
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->random_id:J

    .line 439
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->additional_peers:Ljava/util/ArrayList;

    .line 440
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLObject;

    .line 441
    instance-of p5, p4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p5, :cond_1

    .line 442
    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->additional_peers:Ljava/util/ArrayList;

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p7, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p7, p7

    invoke-virtual {v0, p7, p8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_2
    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p3, p3

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 446
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLObject;

    .line 447
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 448
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->countries_iso2:Ljava/util/ArrayList;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 451
    :cond_3
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p0

    const-string p3, "inapp"

    .line 452
    invoke-virtual {p0, p3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p0

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->store_product:Ljava/lang/String;

    .line 453
    invoke-virtual {p0, p3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p0

    .line 454
    invoke-virtual {p0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p0

    .line 455
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p7

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p8

    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda24;

    move-object p5, p10

    move-object p4, p11

    move-object p3, v1

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p7, p8, p0}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public static payGiveAwayByInvoice(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 9

    .line 348
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 349
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 351
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 352
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;-><init>()V

    .line 353
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;-><init>()V

    .line 355
    iput-boolean p5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->only_new_subscribers:Z

    move/from16 v5, p7

    .line 356
    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->winners_are_visible:Z

    move-object/from16 v5, p9

    .line 357
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->prize_description:Ljava/lang/String;

    .line 358
    iput p4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->until_date:I

    .line 359
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    or-int/lit8 v6, v5, 0x6

    .line 360
    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    if-eqz p8, :cond_0

    or-int/lit8 v5, v5, 0x16

    .line 362
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->flags:I

    .line 364
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->random_id:J

    .line 365
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->additional_peers:Ljava/util/ArrayList;

    .line 366
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    .line 367
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_1

    .line 368
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->additional_peers:Ljava/util/ArrayList;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_2
    iget-wide v5, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 372
    iget-wide v5, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 373
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->currency:Ljava/lang/String;

    .line 374
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->amount:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->amount:J

    .line 376
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 377
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 378
    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiveaway;->countries_iso2:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_3
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 382
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;->option:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 384
    invoke-virtual {p6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 386
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 387
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 388
    iget p0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    .line 390
    :cond_4
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 392
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda21;

    move-object p4, p6

    move-object/from16 p5, p10

    move-object/from16 p1, p11

    move-object p2, v0

    move-object p3, v3

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static prepareServerDate(J)I
    .locals 4

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    add-long/2addr p0, v2

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 54
    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static saveGiftOptionsToCache(ILjava/util/List;)V
    .locals 4

    .line 576
    sget-object v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->cachedGiftOptions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->cachedGiftOptions:Ljava/util/HashMap;

    .line 577
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->cachedGiftOptions:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static searchChats(JILjava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 718
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    .line 719
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    .line 721
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 722
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    const/16 p3, 0x32

    .line 723
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 725
    new-instance p3, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda19;

    invoke-direct {p3, p2, p0, p1, p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p4, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static searchContacts(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)I
    .locals 3

    .line 650
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 651
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    if-eqz p0, :cond_1

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 657
    iput-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    const/16 p0, 0x32

    .line 658
    iput p0, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 659
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda45;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p0

    return p0

    .line 653
    :cond_1
    :goto_0
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda44;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static searchContactsLocally(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 12

    .line 676
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 680
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 682
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 683
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 684
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_c

    move v5, v3

    .line 686
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 687
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v6, :cond_b

    .line 689
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_b

    if-nez p1, :cond_2

    .line 690
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_b

    :cond_2
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_4

    .line 691
    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 692
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 693
    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_3

    .line 695
    :cond_4
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    const-string v8, "_"

    if-eqz v7, :cond_8

    move v7, v3

    .line 696
    :goto_1
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_b

    .line 697
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v9, :cond_7

    .line 698
    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v11, :cond_5

    goto :goto_2

    .line 699
    :cond_5
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 700
    invoke-virtual {v9, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 701
    :cond_6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 705
    :cond_8
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 706
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 707
    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 708
    :cond_9
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 694
    :cond_a
    :goto_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 714
    :cond_c
    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method
