.class public Lorg/telegram/ui/LinkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activity:Lorg/telegram/ui/LaunchActivity;

.field private final currentAccount:I

.field private currentRequestId:I

.field private done:Z

.field private inited:Z

.field private final isExternalIntent:Z

.field private final progress:Lorg/telegram/messenger/browser/Browser$Progress;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$27BjbDTWzQucmElTGG6AGUbtea4(Lorg/telegram/ui/LinkManager;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$Passkeys;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$12(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$Passkeys;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5p5ZPZn3KDU8oha1jokY1ltg1Eo(Ljava/lang/Runnable;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    .line 1280
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-ne p1, v0, :cond_0

    .line 1281
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$DyQEWDw6lmo6YkcHKSkdiQbfHCE(Lorg/telegram/ui/LinkManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GQTYUjaCdhTg843sgqI0YzA-GWI(Lorg/telegram/ui/LinkManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GmLMKlgceBVeDPNr0iT25HeL8LE(Lorg/telegram/ui/LinkManager;Lorg/telegram/ui/FiltersSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$0(Lorg/telegram/ui/FiltersSetupActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IlhH7s6PUU5t5jap-ngzdHWNvH8(Lorg/telegram/ui/LinkManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ip5w2MszpA_BOiRYbERrSelV2gA(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LinkManager;->lambda$handleInvoiceSlug$17(Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LH95z6iiSbgUKZuFzNPo8_CwFi0(Lorg/telegram/ui/ProfileActivity;)V
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 574
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    .line 575
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$P_2YKEX1Md8AKf0Uaq6mDBX3rys(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LinkManager;->lambda$handleOAuth$18(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SmkEcCXj4_l5XMhTPvRUEK5ACMw(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LinkManager;->lambda$handleInvoiceSlug$16(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$URxiwuOJG0fM2eKyA9oQo6oOclQ(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1262
    const-string v0, "paid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1263
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$WAYt0XbusABBBakLekvaYtoVX2s(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$10(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z8BkDiiR6paAbLygKx7FD1qgTgk(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zCnesUZ34xqx4AN-LteFfF0uuw(Lorg/telegram/ui/ProfileActivity;)V
    .locals 3

    .line 572
    new-instance v0, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aa09JsQVMYIsrTPPA6mfRC2bVhU(Lorg/telegram/ui/LinkManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->lambda$handleInvoiceSlug$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$iQJO9rx79FC74R7pRrB9ag6xEFQ(Lorg/telegram/ui/ProfileActivity;)V
    .locals 3

    .line 582
    new-instance v0, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmEI6CaCZy0Hu6kbczsRIwg-uA0(Lorg/telegram/ui/LinkManager;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->lambda$init$19(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mlwVGQ4BT5w8GSLhQdu07x8PgA8(Lorg/telegram/ui/LinkManager;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$11(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8VSfVMcfvVJsP-B5WJH_ZHFD7A(Lorg/telegram/ui/LinkManager;Lorg/telegram/ui/NotificationsSettingsActivity;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$7(Lorg/telegram/ui/NotificationsSettingsActivity;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$paHps_jeHUwNd7Rbor9CdgvlPiQ(Lorg/telegram/ui/ProfileActivity;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 584
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    .line 585
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$r3zbEJWFHSJKLfNdTbwdQGAp8YU(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->lambda$handleSettings$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBulletinFactory(Lorg/telegram/ui/LinkManager;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/messenger/browser/Browser$Progress;Z)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lorg/telegram/ui/LinkManager;->currentRequestId:I

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    .line 89
    iput p2, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    .line 90
    iput-object p3, p0, Lorg/telegram/ui/LinkManager;->progress:Lorg/telegram/messenger/browser/Browser$Progress;

    .line 91
    iput-boolean p4, p0, Lorg/telegram/ui/LinkManager;->isExternalIntent:Z

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 1387
    iget v0, p0, Lorg/telegram/ui/LinkManager;->currentRequestId:I

    if-ltz v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lorg/telegram/ui/LinkManager;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/LinkManager;->currentRequestId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    .line 1389
    iput v0, p0, Lorg/telegram/ui/LinkManager;->currentRequestId:I

    :cond_0
    return-void
.end method

.method private done()V
    .locals 1

    .line 1394
    iget-boolean v0, p0, Lorg/telegram/ui/LinkManager;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 1397
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1399
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-eqz v0, :cond_2

    .line 1400
    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_2
    const/4 v0, 0x1

    .line 1403
    iput-boolean v0, p0, Lorg/telegram/ui/LinkManager;->done:Z

    return-void
.end method

.method private getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 1352
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1353
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    .line 1354
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method private getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 1348
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method private getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    return-object v0
.end method

.method private handleHttp(Landroid/net/Uri;)Z
    .locals 6

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 119
    :cond_0
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->PREFIX_T_ME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 121
    const-string v4, "telegram.me"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "t.me"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "telegram.dog"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-eqz v3, :cond_4

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://t.me/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 128
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_5

    goto :goto_3

    .line 130
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 133
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 135
    :cond_6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 138
    :goto_2
    const-string v5, "$"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleInvoiceSlug(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 140
    :cond_8
    const-string v0, "invoice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-direct {p0, v3}, Lorg/telegram/ui/LinkManager;->handleInvoiceSlug(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 143
    :cond_9
    const-string v0, "oauth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    const-string v0, "startapp"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LinkManager;->handleOAuth(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_a
    :goto_3
    return v1
.end method

.method private handleInvoiceSlug(Ljava/lang/String;)Z
    .locals 4

    .line 1239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1241
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->init()V

    .line 1243
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1244
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 1245
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 1246
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 1247
    invoke-virtual {p0}, Lorg/telegram/ui/LinkManager;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 1291
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->setRequestId(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private handleOAuth(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    .line 1297
    iget-boolean v0, p0, Lorg/telegram/ui/LinkManager;->isExternalIntent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1298
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/LinkManager;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1300
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->init()V

    .line 1302
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;-><init>()V

    .line 1303
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    .line 1304
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    .line 1306
    invoke-virtual {p0}, Lorg/telegram/ui/LinkManager;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return v1
.end method

.method private handleSettings(Ljava/util/List;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 290
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 291
    new-instance v1, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 295
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v4, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 297
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v7, v6

    .line 298
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_4

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v9, v6

    .line 299
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_5

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v1, v6

    .line 302
    :goto_3
    const-string v11, "theme"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f5

    const-string v11, "themes"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_f

    .line 306
    :cond_6
    const-string v11, "devices"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 307
    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    .line 308
    const-string v2, "link-desktop"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 309
    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->setHighlightLinkDesktopDevice()Lorg/telegram/ui/SessionsActivity;

    .line 310
    :cond_7
    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 311
    const-string v1, "terminate-sessions"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 312
    const-string v1, "terminateAllSessionsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 313
    :cond_8
    const-string v1, "auto-terminate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 314
    const-string v1, "ttlRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_9
    return v4

    .line 317
    :cond_a
    const-string v11, "folders"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 319
    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    .line 320
    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-direct {v0, v2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 322
    const-string v2, "create"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 323
    new-instance v2, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/ui/FiltersSetupActivity;)V

    const-wide/16 v6, 0x12c

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 325
    :cond_b
    const-string v1, "show-tags"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 326
    const-string v1, "showTagsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_c
    return v4

    .line 330
    :cond_d
    const-string v11, "change_number"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 331
    new-instance v1, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {v1, v10}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return v4

    .line 334
    :cond_e
    const-string v11, "language"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 335
    const-string v1, "do-not-translate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 336
    new-instance v1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 339
    :cond_f
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 340
    const-string v1, "show-button"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 341
    const-string v1, "manualTranslationPosition"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 343
    :cond_10
    const-string v1, "translate-chats"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 344
    const-string v1, "autoTranslationPosition"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_11
    return v4

    .line 348
    :cond_12
    const-string v11, "auto_delete"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 349
    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 352
    :cond_13
    const-string v11, "phone_privacy"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 353
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 356
    :cond_14
    const-string v11, "premium_sms"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 357
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    if-eqz v11, :cond_15

    const/16 v13, 0xd

    .line 358
    invoke-virtual {v11, v13}, Lorg/telegram/messenger/ApplicationLoader;->openSettings(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 360
    invoke-direct {v0, v11}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 365
    :cond_15
    const-string v11, "login_email"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/16 v13, 0xa

    if-eqz v11, :cond_16

    .line 366
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->init()V

    .line 367
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    new-instance v3, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LinkManager;)V

    invoke-virtual {v1, v2, v3, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->setRequestId(I)V

    return v4

    .line 377
    :cond_16
    const-string v11, "chats"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 378
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v11

    .line 380
    invoke-interface {v11}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v4

    :goto_4
    if-ltz v14, :cond_19

    .line 381
    invoke-interface {v11}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lorg/telegram/ui/MainTabsActivity;

    if-eqz v15, :cond_17

    .line 382
    invoke-interface {v11}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/MainTabsActivity;

    goto :goto_5

    :cond_17
    if-lez v14, :cond_18

    .line 386
    invoke-interface {v11, v14}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(I)V

    :cond_18
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_19
    move-object v11, v6

    :goto_5
    if-eqz v11, :cond_1a

    .line 391
    const-string v14, "search"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 392
    iget-object v1, v11, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return v4

    .line 398
    :cond_1a
    const-string v11, "saved-messages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 399
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 403
    :cond_1b
    const-string v11, "calls"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 404
    const-string v1, "start-call"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 405
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 406
    const-string v2, "isCall"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    new-instance v2, Lorg/telegram/ui/LinkManager$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LinkManager$1;-><init>(Lorg/telegram/ui/LinkManager;Landroid/os/Bundle;)V

    .line 471
    invoke-direct {v0, v2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 474
    :cond_1c
    new-instance v1, Lorg/telegram/ui/CallLogActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CallLogActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 478
    :cond_1d
    const-string v14, "qr-code"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "user_id"

    if-eqz v14, :cond_20

    .line 479
    const-string v1, "scan"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 480
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 482
    invoke-static {v1}, Lorg/telegram/ui/QrActivity;->openCameraScanActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 487
    :cond_1e
    const-string v1, "share"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v15, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 490
    new-instance v2, Lorg/telegram/ui/LinkManager$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LinkManager$2;-><init>(Lorg/telegram/ui/LinkManager;Landroid/os/Bundle;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 500
    :cond_1f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 501
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v15, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 502
    new-instance v2, Lorg/telegram/ui/QrActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/QrActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 506
    :cond_20
    const-string v14, "chat"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    const-string v14, "browser"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 507
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 508
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 509
    const-string v1, "browserRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 513
    :cond_21
    new-instance v1, Lorg/telegram/ui/web/WebBrowserSettings;

    invoke-direct {v1, v6}, Lorg/telegram/ui/web/WebBrowserSettings;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 515
    const-string v1, "enable-browser"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 516
    const-string v1, "enableRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 517
    :cond_22
    const-string v1, "clear-cookies"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 518
    const-string v1, "clearCookiesRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 519
    :cond_23
    const-string v1, "clear-cache"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 520
    const-string v1, "clearCacheRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 521
    :cond_24
    const-string v1, "history"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 522
    const-string v1, "historyRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 523
    :cond_25
    const-string v1, "clear-history"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 524
    const-string v1, "clearHistoryRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 525
    :cond_26
    const-string v1, "never-open"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 526
    const-string v1, "neverOpenRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 527
    :cond_27
    const-string v1, "clear-list"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 528
    const-string v1, "clearListRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 529
    :cond_28
    const-string v1, "search"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 530
    const-string v1, "searchRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_29
    return v4

    .line 534
    :cond_2a
    const-string v14, "edit"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    const-string v12, "bio"

    const-string v6, "birthday"

    if-eqz v14, :cond_34

    .line 535
    new-instance v1, Lorg/telegram/ui/UserInfoActivity;

    invoke-direct {v1}, Lorg/telegram/ui/UserInfoActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 536
    const-string v1, "first-name"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 537
    const-string v1, "firstNameRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 538
    :cond_2b
    const-string v1, "last-name"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 539
    const-string v1, "lastNameRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 540
    :cond_2c
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 541
    const-string v1, "bioRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 542
    :cond_2d
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 543
    const-string v1, "birthdayRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 544
    :cond_2e
    const-string v1, "change-number"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 545
    const-string v1, "numberRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 546
    :cond_2f
    const-string v1, "username"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 547
    const-string v1, "usernameRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 548
    :cond_30
    const-string v1, "channel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 549
    const-string v1, "channelRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 550
    :cond_31
    const-string v1, "add-account"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 551
    const-string v1, "addAccountRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 552
    :cond_32
    const-string v1, "log-out"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 553
    const-string v1, "logoutRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_33
    return v4

    .line 557
    :cond_34
    const-string v14, "my-profile"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    const-string v2, "gifts"

    if-eqz v14, :cond_39

    .line 558
    const-string v1, "edit"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 559
    new-instance v1, Lorg/telegram/ui/UserInfoActivity;

    invoke-direct {v1}, Lorg/telegram/ui/UserInfoActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 563
    :cond_35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 564
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v1, v15, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 565
    const-string v3, "my_profile"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 567
    const-string v3, "open_gifts"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    :cond_36
    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 571
    new-instance v1, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v3}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    .line 580
    :cond_37
    const-string v1, "posts"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 581
    new-instance v1, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v3}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    .line 590
    :cond_38
    invoke-direct {v0, v3}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 595
    :cond_39
    const-string v14, "notifications"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "reset"

    const-string v10, "stories"

    const-string v8, "channels"

    const-string v13, "groups"

    if-eqz v14, :cond_52

    .line 596
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "reactions"

    const-string v3, "private-chats"

    if-nez v1, :cond_40

    .line 597
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 598
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 599
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 600
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 601
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 604
    :cond_3a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v2, v4

    goto :goto_6

    .line 605
    :cond_3b
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_3c
    const/4 v2, 0x0

    goto :goto_6

    .line 606
    :cond_3d
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v2, 0x2

    goto :goto_6

    .line 607
    :cond_3e
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v2, 0x3

    goto :goto_6

    .line 608
    :cond_3f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    .line 611
    :goto_6
    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    .line 612
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->init()V

    .line 613
    new-instance v3, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v1, v2, v7}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/ui/NotificationsSettingsActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->loadExceptions(Ljava/lang/Runnable;)V

    return v4

    .line 653
    :cond_40
    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 655
    const-string v1, "accounts"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 656
    const-string v1, "accountsAllRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 657
    :cond_41
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 658
    const-string v1, "privateRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 659
    :cond_42
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 660
    const-string v1, "groupRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 661
    :cond_43
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 662
    const-string v1, "channelsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 663
    :cond_44
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 664
    const-string v1, "storiesRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 665
    :cond_45
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 666
    const-string v1, "reactionsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 668
    :cond_46
    const-string v1, "in-app-sounds"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 669
    const-string v1, "inappSoundRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 670
    :cond_47
    const-string v1, "in-app-vibrate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 671
    const-string v1, "inappVibrateRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 672
    :cond_48
    const-string v1, "in-app-preview"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 673
    const-string v1, "inappPreviewRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 674
    :cond_49
    const-string v1, "in-chat-sounds"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 675
    const-string v1, "inchatSoundRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 676
    :cond_4a
    const-string v1, "in-app-popup"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 677
    const-string v1, "inappPriorityRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 678
    :cond_4b
    const-string v1, "show-badge-icon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 679
    const-string v1, "badgeNumberShowRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 680
    :cond_4c
    const-string v1, "include-muted-chats"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 681
    const-string v1, "badgeNumberMutedRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 682
    :cond_4d
    const-string v1, "count-unread-messages"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 683
    const-string v1, "badgeNumberMessagesRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 684
    :cond_4e
    const-string v1, "new-contacts"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 685
    const-string v1, "contactJoinedRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 686
    :cond_4f
    const-string v1, "pinned-messages"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 687
    const-string v1, "pinnedMessageRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 688
    :cond_50
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 689
    const-string v1, "resetNotificationsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_51
    return v4

    .line 694
    :cond_52
    const-string v14, "privacy"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_95

    .line 695
    const-string v1, "data-settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "delete-cloud-drafts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 696
    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 697
    const-string v1, "clearDraftsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 701
    :cond_53
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "blocked"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 702
    new-instance v1, Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 705
    :cond_54
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "active-websites"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 706
    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v1, v4}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 708
    const-string v1, "disconnect-all"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 709
    const-string v1, "terminateAllSessionsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_55
    return v4

    .line 712
    :cond_56
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "passcode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 713
    new-instance v1, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LinkManager;Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    .line 725
    invoke-direct {v0, v2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 727
    instance-of v3, v2, Lorg/telegram/ui/ActionIntroActivity;

    if-eqz v3, :cond_57

    .line 728
    check-cast v2, Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionIntroActivity;->setOnOpenedSettings(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 729
    :cond_57
    instance-of v3, v2, Lorg/telegram/ui/PasscodeActivity;

    if-eqz v3, :cond_58

    .line 730
    check-cast v2, Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/PasscodeActivity;->setOnOpenedSettings(Ljava/lang/Runnable;)V

    :cond_58
    :goto_7
    return v4

    .line 736
    :cond_59
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "2sv"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 737
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->init()V

    .line 738
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    new-instance v3, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v7}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LinkManager;Ljava/lang/String;)V

    const/16 v8, 0xa

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->setRequestId(I)V

    return v4

    :cond_5a
    const/16 v8, 0xa

    .line 773
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "passkey"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_5b

    .line 774
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->init()V

    .line 775
    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$getPasskeys;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$getPasskeys;-><init>()V

    new-instance v3, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v7}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LinkManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->setRequestId(I)V

    return v4

    .line 786
    :cond_5b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "auto-delete"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v1

    if-ltz v1, :cond_5c

    .line 787
    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 793
    :cond_5c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "profile-photos"

    const-string v10, "last-seen"

    const-string v13, "messages"

    if-nez v1, :cond_78

    const-string v1, "phone-number"

    .line 794
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 795
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 796
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 797
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 798
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 799
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "saved-music"

    .line 800
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "forwards"

    .line 801
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 802
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "voice"

    .line 803
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 804
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "invites"

    .line 805
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 808
    :cond_5d
    const-string v1, "phone-number"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x6

    goto/16 :goto_8

    .line 809
    :cond_5e
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    :cond_5f
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 810
    :cond_60
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x4

    goto/16 :goto_8

    .line 811
    :cond_61
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/16 v1, 0x9

    goto :goto_8

    .line 812
    :cond_62
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    const/16 v1, 0xc

    goto :goto_8

    .line 813
    :cond_63
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xb

    goto :goto_8

    .line 814
    :cond_64
    const-string v1, "saved-music"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xe

    goto :goto_8

    .line 815
    :cond_65
    const-string v1, "forwards"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x5

    goto :goto_8

    .line 816
    :cond_66
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 817
    const-string v1, "p2p"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    const/4 v1, 0x3

    goto :goto_8

    :cond_67
    const/4 v1, 0x2

    goto :goto_8

    .line 819
    :cond_68
    const-string v1, "voice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    const/16 v1, 0x8

    goto :goto_8

    .line 820
    :cond_69
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    move v1, v8

    goto :goto_8

    .line 821
    :cond_6a
    const-string v1, "invites"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    move v1, v4

    .line 823
    :goto_8
    new-instance v8, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v8, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-direct {v0, v8}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 825
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "add"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 826
    const-string v1, "setBirthdayRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 827
    :cond_6b
    const-string v1, "always-share"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "always-share"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "always"

    .line 828
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "always"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 829
    :cond_6c
    const-string v1, "everybodyRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 830
    :cond_6d
    const-string v1, "never-share"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "never-share"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "never"

    .line 831
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "never"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 832
    :cond_6e
    const-string v1, "nobodyRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 833
    :cond_6f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "show-icon"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 834
    const-string v1, "showGiftIconRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 835
    :cond_70
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    const-string v1, "accepted-types"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 836
    const-string v1, "giftTypesHeaderRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 837
    :cond_71
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, "set-price"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 838
    const-string v1, "priceRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 839
    :cond_72
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "remove-fee"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 840
    const-string v1, "alwaysShareRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 841
    :cond_73
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string v1, "hide-read-time"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 842
    const-string v1, "readRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 843
    :cond_74
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 844
    const-string v1, "set-public"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 845
    const-string v1, "photoForRestRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 846
    :cond_75
    const-string v1, "update-public"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 847
    const-string v1, "photoForRestRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 848
    :cond_76
    const-string v1, "remove-public"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 849
    const-string v1, "currentPhotoForRestRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_77
    return v4

    .line 855
    :cond_78
    iget v1, v0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->autoarchiveAvailable:Z

    if-nez v1, :cond_79

    const-string v1, "archive-and-mute"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    return v4

    .line 861
    :cond_79
    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 863
    const-string v1, "blocked"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 864
    const-string v1, "blockedRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 865
    :cond_7a
    const-string v1, "active-websites"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 866
    const-string v1, "webSessionsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 867
    :cond_7b
    const-string v1, "passcode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 868
    const-string v1, "passcodeRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 869
    :cond_7c
    const-string v1, "2sv"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 870
    const-string v1, "passwordRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 871
    :cond_7d
    const-string v1, "passkey"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 872
    const-string v1, "passkeysRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 873
    :cond_7e
    const-string v1, "auto-delete"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 874
    const-string v1, "autoDeleteMesages"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 875
    :cond_7f
    const-string v1, "login-email"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 876
    const-string v1, "emailLoginRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 877
    :cond_80
    const-string v1, "phone-number"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 878
    const-string v1, "phoneNumberRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 879
    :cond_81
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 880
    const-string v1, "lastSeenRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 881
    :cond_82
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 882
    const-string v1, "profilePhotoRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 883
    :cond_83
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 884
    const-string v1, "bioRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 885
    :cond_84
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 886
    const-string v1, "giftsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 887
    :cond_85
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 888
    const-string v1, "birthdayRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 889
    :cond_86
    const-string v1, "saved-music"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 890
    const-string v1, "musicRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 891
    :cond_87
    const-string v1, "forwards"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 892
    const-string v1, "forwardsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 893
    :cond_88
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 894
    const-string v1, "callsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 895
    :cond_89
    const-string v1, "voice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 896
    const-string v1, "voicesRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 897
    :cond_8a
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 898
    const-string v1, "noncontactsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 899
    :cond_8b
    const-string v1, "invites"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 900
    const-string v1, "groupsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 901
    :cond_8c
    const-string v1, "self-destruct"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 902
    const-string v1, "deleteAccountRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 903
    :cond_8d
    const-string v1, "archive-and-mute"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 904
    const-string v1, "newChatsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 905
    :cond_8e
    const-string v1, "data-settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 906
    const-string v1, "sync-contacts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 907
    const-string v1, "contactsSyncRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 908
    :cond_8f
    const-string v1, "delete-synced"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 909
    const-string v1, "contactsDeleteRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 910
    :cond_90
    const-string v1, "suggest-contacts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 911
    const-string v1, "contactsSuggestRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 912
    :cond_91
    const-string v1, "clear-payment-info"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 913
    const-string v1, "paymentsClearRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 914
    :cond_92
    const-string v1, "link-previews"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 915
    const-string v1, "secretWebpageRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 916
    :cond_93
    const-string v1, "map-provider"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 917
    const-string v1, "secretMapRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_94
    return v4

    .line 923
    :cond_95
    const-string v2, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 924
    const-string v1, "storage"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 925
    const-string v1, "clear-cache"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 929
    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 933
    :cond_96
    const-string v1, "usage"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 934
    new-instance v1, Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {v1}, Lorg/telegram/ui/DataUsage2Activity;-><init>()V

    .line 935
    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 936
    const-string v2, "mobile"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 937
    invoke-virtual {v1, v4}, Lorg/telegram/ui/DataUsage2Activity;->selectTab(I)V

    .line 938
    :cond_97
    const-string v2, "wifi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    const/4 v2, 0x2

    .line 939
    invoke-virtual {v1, v2}, Lorg/telegram/ui/DataUsage2Activity;->selectTab(I)V

    .line 940
    :cond_98
    const-string v2, "roaming"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v2, 0x3

    .line 941
    invoke-virtual {v1, v2}, Lorg/telegram/ui/DataUsage2Activity;->selectTab(I)V

    .line 942
    :cond_99
    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 943
    invoke-virtual {v1}, Lorg/telegram/ui/DataUsage2Activity;->scrollToReset()V

    :cond_9a
    return v4

    :cond_9b
    const/4 v2, 0x2

    .line 947
    const-string v1, "auto-download"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 948
    const-string v1, "mobile"

    .line 949
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    const-string v1, "wifi"

    .line 950
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    const-string v1, "roaming"

    .line 951
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    goto :goto_9

    .line 974
    :cond_9c
    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 975
    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 976
    const-string v1, "resetDownloadRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 954
    :cond_9d
    :goto_9
    const-string v1, "mobile"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    :cond_9e
    const/4 v2, 0x0

    goto :goto_a

    .line 955
    :cond_9f
    const-string v1, "wifi"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    move v2, v4

    goto :goto_a

    .line 956
    :cond_a0
    const-string v1, "roaming"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 957
    :goto_a
    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 959
    const-string v1, "enable"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 960
    const-string v1, "autoDownloadRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 961
    :cond_a1
    const-string v1, "usage"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 962
    const-string v1, "usageProgressRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 963
    :cond_a2
    const-string v1, "photos"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 964
    const-string v1, "photosRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 965
    :cond_a3
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 966
    const-string v1, "storiesRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 967
    :cond_a4
    const-string v1, "videos"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 968
    const-string v1, "videosRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 969
    :cond_a5
    const-string v1, "files"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 970
    const-string v1, "filesRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_a6
    return v4

    .line 981
    :cond_a7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ad

    const-string v1, "save-to-photos"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 983
    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    move v8, v2

    goto :goto_b

    .line 984
    :cond_a8
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    const/4 v8, 0x4

    goto :goto_b

    :cond_a9
    move v8, v4

    .line 987
    :goto_b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 988
    const-string v2, "type"

    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 989
    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 991
    const-string v1, "max-video-size"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 992
    const-string v1, "maxVideoSizeRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 993
    :cond_aa
    const-string v1, "add-exception"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 994
    const-string v1, "addExceptionRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 995
    :cond_ab
    const-string v1, "delete-all"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 996
    const-string v1, "deleteAllExceptionsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_ac
    return v4

    .line 1001
    :cond_ad
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b1

    const-string v1, "proxy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1002
    new-instance v1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1004
    const-string v1, "use-proxy"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1005
    const-string v1, "useProxyRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1006
    :cond_ae
    const-string v1, "add-proxy"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1007
    const-string v1, "proxyAddRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1008
    :cond_af
    const-string v1, "use-for-calls"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 1009
    const-string v1, "callsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_b0
    return v4

    .line 1014
    :cond_b1
    const-string v1, "pause-music"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1015
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1016
    const-string v1, "pauseOnMediaRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    :cond_b2
    const/4 v2, 0x0

    .line 1019
    const-string v1, "pause-music-on-record"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1020
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1021
    const-string v1, "pauseOnRecordRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 1024
    :cond_b3
    const-string v1, "raise-to-listen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1025
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1026
    const-string v1, "raiseToListenRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 1029
    :cond_b4
    const-string v1, "raise-to-speak"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 1030
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1031
    const-string v1, "raiseToSpeakRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 1034
    :cond_b5
    const-string v1, "show-18-contnet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1035
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1036
    const-string v1, "sensitiveContentRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    return v4

    .line 1040
    :cond_b6
    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1042
    const-string v1, "save-to-photos"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1043
    const-string v1, "chats"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 1044
    const-string v1, "saveToGalleryPeerRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1045
    :cond_b7
    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1046
    const-string v1, "saveToGalleryGroupsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1047
    :cond_b8
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1048
    const-string v1, "saveToGalleryChannelsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1051
    :cond_b9
    const-string v1, "use-less-data"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1052
    const-string v1, "useLessDataForCallsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1054
    :cond_ba
    const-string v1, "proxy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1055
    const-string v1, "proxyRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_bb
    return v4

    .line 1060
    :cond_bc
    const-string v2, "appearance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "emoji"

    if-eqz v2, :cond_db

    .line 1061
    const-string v2, "themes"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d9

    const-string v2, "theme"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bd

    goto/16 :goto_d

    .line 1067
    :cond_bd
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "wallpaper"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_be

    const-string v2, "wallpapers"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 1068
    :cond_be
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1069
    const-string v1, "set"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bf

    const-string v1, "choose-photo"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1070
    :cond_bf
    const-string v1, "uploadImageRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_c0
    return v4

    .line 1073
    :cond_c1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    const-string v2, "your-color"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c2

    const-string v2, "color"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1074
    :cond_c2
    new-instance v1, Lorg/telegram/ui/PeerColorActivity;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PeerColorActivity;-><init>(J)V

    .line 1076
    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1079
    :cond_c3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cd

    const-string v2, "stickers-and-emoji"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1080
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c4

    const-string v2, "archived"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 1081
    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1085
    :cond_c4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 1086
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    const-string v2, "large"

    .line 1087
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c7

    const-string v2, "dynamic-order"

    .line 1088
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 1090
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    const-string v1, "archived"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1091
    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1095
    :cond_c5
    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1096
    const-string v1, "suggest"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1097
    const-string v1, "suggestRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_c6
    return v4

    .line 1102
    :cond_c7
    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1104
    const-string v1, "trending"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 1105
    const-string v1, "featuredRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1106
    :cond_c8
    const-string v1, "archived"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1107
    const-string v1, "archivedRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1108
    :cond_c9
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const-string v1, "large"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1109
    const-string v1, "largeEmojiRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    goto :goto_c

    .line 1110
    :cond_ca
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v1, "dynamic-order"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 1111
    const-string v1, "dynamicPackOrder"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    goto :goto_c

    .line 1112
    :cond_cb
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 1113
    const-string v1, "emojiPacksRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_cc
    :goto_c
    return v4

    .line 1118
    :cond_cd
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1119
    const-string v1, "wallpaper"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "wallpapers"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1120
    :cond_ce
    const-string v1, "backgroundRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1122
    :cond_cf
    const-string v1, "your-color"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-string v1, "color"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 1123
    :cond_d0
    const-string v1, "changeUserColor"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1127
    :cond_d1
    const-string v1, "auto-night-mode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 1128
    const-string v1, "nightThemeRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1129
    :cond_d2
    const-string v1, "text-size"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1130
    const-string v1, "textSizeRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1131
    :cond_d3
    const-string v1, "message-corners"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 1132
    const-string v1, "bubbleRadiusRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1133
    :cond_d4
    const-string v1, "animations"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 1134
    const-string v1, "liteModeRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1135
    :cond_d5
    const-string v1, "stickers-and-emoji"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1136
    const-string v1, "stickersRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1137
    :cond_d6
    const-string v1, "app-icon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1138
    const-string v1, "appIconSelectorRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 1139
    :cond_d7
    const-string v1, "tap-for-next-media"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 1140
    const-string v1, "nextMediaTapRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_d8
    return v4

    .line 1062
    :cond_d9
    :goto_d
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1063
    const-string v1, "create"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1064
    const-string v1, "createNewThemeRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_da
    return v4

    .line 1145
    :cond_db
    const-string v1, "power-saving"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 1146
    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 1147
    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1148
    const-string v2, "videos"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const/16 v2, 0x400

    .line 1149
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1150
    :cond_dc
    const-string v2, "gifs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const/16 v2, 0x800

    .line 1151
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1152
    :cond_dd
    const-string v2, "stickers"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    const/4 v2, 0x3

    .line 1153
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1154
    :cond_de
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    const/16 v2, 0x701c

    .line 1155
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1156
    :cond_df
    const-string v2, "effects"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const v2, 0x581e0

    .line 1157
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1158
    :cond_e0
    const-string v2, "call-animations"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const/16 v2, 0x200

    .line 1159
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1160
    :cond_e1
    const-string v2, "particles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const/high16 v2, 0x20000

    .line 1161
    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    .line 1162
    :cond_e2
    const-string v2, "transitions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1163
    invoke-virtual {v1, v4}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToType(I)V

    :cond_e3
    return v4

    .line 1167
    :cond_e4
    const-string v1, "stars"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 1168
    const-string v1, "top-up"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1169
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    iget-object v2, v0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return v4

    .line 1172
    :cond_e5
    const-string v1, "stats"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 1173
    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3}, Lorg/telegram/ui/Stars/BotStarsActivity;-><init>(IJ)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1176
    :cond_e6
    const-string v1, "gift"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1177
    iget v1, v0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    .line 1178
    iget v1, v0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v4, v2, v3, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return v4

    .line 1181
    :cond_e7
    const-string v1, "earn"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 1182
    new-instance v1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1185
    :cond_e8
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1189
    :cond_e9
    const-string v1, "premium"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 1190
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "link"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1194
    :cond_ea
    const-string v1, "business"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1195
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "link"

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1196
    const-string v1, "do-not-hide-ads"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 1197
    const-string v1, "showAdsRow"

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_eb
    return v4

    .line 1202
    :cond_ec
    const-string v1, "ton"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1203
    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity;

    invoke-direct {v1}, Lorg/telegram/ui/TON/TONIntroActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1207
    :cond_ed
    const-string v1, "send-gift"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 1208
    const-string v1, "self"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1209
    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v6, v0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    iget v7, v0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/LinkManager;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return v4

    .line 1213
    :cond_ee
    iget v1, v0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(JLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return v4

    .line 1217
    :cond_ef
    const-string v1, "ask-question"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f4

    const-string v1, "ask-a-question"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    goto :goto_e

    .line 1221
    :cond_f0
    const-string v1, "faq"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1222
    iget-object v1, v0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    sget v2, Lorg/telegram/messenger/R$string;->TelegramFaqUrl:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return v4

    .line 1225
    :cond_f1
    const-string v1, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1226
    iget-object v1, v0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    sget v2, Lorg/telegram/messenger/R$string;->TelegramFeaturesUrl:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return v4

    .line 1229
    :cond_f2
    const-string v1, "privacy-policy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 1230
    iget-object v1, v0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return v4

    .line 1234
    :cond_f3
    new-instance v1, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4

    .line 1218
    :cond_f4
    :goto_e
    invoke-direct {v0}, Lorg/telegram/ui/LinkManager;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createSupportAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return v4

    .line 303
    :cond_f5
    :goto_f
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v4
.end method

.method private handleTg(Landroid/net/Uri;)Z
    .locals 7

    .line 164
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->normalizeTgUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 174
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 177
    :goto_0
    const-string v6, "resolve"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleTgResolve(Landroid/net/Uri;)Z

    move-result p1

    return p1

    .line 180
    :cond_4
    const-string v6, "invoice"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 181
    const-string v0, "slug"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleInvoiceSlug(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 183
    :cond_5
    const-string v6, "oauth"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LinkManager;->handleOAuth(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 186
    :cond_6
    const-string p1, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 187
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleSettings(Ljava/util/List;)Z

    move-result p1

    return p1

    .line 189
    :cond_7
    const-string p1, "chats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "search"

    if-eqz p1, :cond_8

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 193
    const-string p1, "edit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 196
    const-string p1, "emoji-status"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 201
    :cond_8
    const-string p1, "new"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 202
    const-string p1, "group"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 203
    new-instance p1, Lorg/telegram/ui/GroupCreateActivity;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return v5

    .line 206
    :cond_9
    const-string p1, "contact"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 207
    new-instance p1, Lorg/telegram/ui/NewContactBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/NewContactBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    return v5

    .line 210
    :cond_a
    const-string p1, "channel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 211
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 212
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const-string v2, "channel_intro"

    if-nez v0, :cond_b

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 214
    const-string v0, "step"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 215
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 217
    :cond_b
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 218
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return v5

    .line 223
    :cond_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 224
    const-string v0, "destroyAfterSelect"

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    new-instance v0, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return v5

    .line 229
    :cond_d
    const-string v6, "post"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 231
    const-string p1, "video"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 233
    const-string v0, "live"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, -0x1

    .line 235
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setMode(I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return v5

    .line 241
    :cond_f
    const-string v4, "contacts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 242
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 243
    new-instance p1, Lorg/telegram/ui/NewContactBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/NewContactBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    return v5

    .line 247
    :cond_10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v0, "needPhonebook"

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    const-string v0, "needFinishFragment"

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    new-instance v0, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 255
    const-string p1, "sort"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 258
    const-string p1, "invite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 259
    const-string p1, "phonebookRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_11
    return v5

    :cond_12
    return v1
.end method

.method private handleTgResolve(Landroid/net/Uri;)Z
    .locals 4

    .line 269
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 271
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 276
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    const-string v0, "domain"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, "startapp"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    const-string v3, "oauth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/LinkManager;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/LinkManager;->handleOAuth(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private handleTonsite(Landroid/net/Uri;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1
.end method

.method private init()V
    .locals 3

    .line 1370
    iget-boolean v0, p0, Lorg/telegram/ui/LinkManager;->inited:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/LinkManager;->done:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1372
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-nez v0, :cond_2

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez v0, :cond_1

    .line 1374
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/LinkManager;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1376
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v1, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LinkManager;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    goto :goto_0

    .line 1379
    :cond_2
    new-instance v1, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LinkManager;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->progress:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    :goto_0
    const/4 v0, 0x1

    .line 1383
    iput-boolean v0, p0, Lorg/telegram/ui/LinkManager;->inited:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isWebAppLink(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1411
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1412
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 1414
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    .line 1416
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xe73

    const/4 v6, 0x1

    if-eq v4, v5, :cond_e

    const p0, 0x310888    # 4.503E-39f

    if-eq v4, p0, :cond_4

    const p0, 0x5f008eb

    if-eq v4, p0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string p0, "https"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_4
    const-string p0, "http"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1419
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 1420
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1421
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->PREFIX_T_ME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1422
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 1423
    const-string v3, "telegram.me"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "t.me"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "telegram.dog"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz v2, :cond_10

    .line 1424
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1425
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "s"

    if-lez v2, :cond_7

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1426
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1428
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 1429
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_8

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v0

    .line 1431
    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_d

    .line 1432
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1433
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v0

    .line 1434
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "confirmphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "contact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "addstickers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "setlanguage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_4
    const-string v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_5
    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_6
    const-string v2, "boost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_7
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_8
    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_9
    const-string v2, "addlist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_a
    const-string v2, "addtheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_b
    const-string v2, "addemoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_c
    const-string v2, "folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :sswitch_d
    const-string v2, "joinchat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    return v0

    .line 1451
    :cond_a
    :goto_2
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    .line 1453
    :cond_b
    const-string v1, "^\\d+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v0

    :cond_c
    return v6

    .line 1455
    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v6, :cond_10

    .line 1456
    const-string p0, "startapp"

    invoke-virtual {v1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    .line 1416
    :cond_e
    const-string v3, "tg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1463
    const-string v2, "tg:resolve"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "tg://resolve"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1464
    :cond_f
    const-string p0, "appname"

    invoke-virtual {v1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/2addr p0, v6

    return p0

    .line 1470
    :goto_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_10
    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5386347e -> :sswitch_d
        -0x4ba2e392 -> :sswitch_c
        -0x4957bbbb -> :sswitch_b
        -0x4886c638 -> :sswitch_a
        -0x446b0f41 -> :sswitch_9
        0x63 -> :sswitch_8
        0x1a781 -> :sswitch_7
        0x59923a3 -> :sswitch_6
        0x625ef69 -> :sswitch_5
        0x6854fdf -> :sswitch_4
        0x128acdba -> :sswitch_3
        0x1d5f6677 -> :sswitch_2
        0x38b72420 -> :sswitch_1
        0x7dec8eae -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$handleInvoiceSlug$13()V
    .locals 0

    .line 1260
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    return-void
.end method

.method private synthetic lambda$handleInvoiceSlug$16(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 1249
    const-string p2, "SUBSCRIPTION_ALREADY_ACTIVE"

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1250
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PaymentInvoiceSubscriptionLinkAlreadyPaid:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_1

    .line 1252
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PaymentInvoiceLinkInvalid:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    .line 1254
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1256
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1257
    iget-object p1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    iget-object p4, p1, Lorg/telegram/ui/LaunchActivity;->navigateToPremiumGiftCallback:Ljava/lang/Runnable;

    .line 1258
    iput-object v0, p1, Lorg/telegram/ui/LaunchActivity;->navigateToPremiumGiftCallback:Ljava/lang/Runnable;

    .line 1259
    iget p1, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    move-object v3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    new-instance v4, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LinkManager;)V

    new-instance v5, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda19;

    invoke-direct {v5, p4}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->openPaymentForm(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 1267
    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz p1, :cond_3

    .line 1268
    check-cast p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    .line 1269
    iget p1, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1270
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-direct {p1, p2, p4, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 1271
    :cond_3
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p1, :cond_4

    .line 1272
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    .line 1276
    iget-object p2, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    iget-object p3, p2, Lorg/telegram/ui/LaunchActivity;->navigateToPremiumGiftCallback:Ljava/lang/Runnable;

    if-eqz p3, :cond_5

    .line 1278
    iput-object v0, p2, Lorg/telegram/ui/LaunchActivity;->navigateToPremiumGiftCallback:Ljava/lang/Runnable;

    .line 1279
    new-instance p2, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda20;

    invoke-direct {p2, p3}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 1285
    :cond_5
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1289
    :cond_6
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    return-void
.end method

.method private synthetic lambda$handleInvoiceSlug$17(Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1247
    new-instance v0, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda15;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleOAuth$18(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1307
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    if-eqz p3, :cond_1

    .line 1309
    const-string p1, "URL_EXPIRED"

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1310
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailTitle:I

    .line 1311
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailNoDomain:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1312
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1314
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 1318
    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/LinkManager;->isExternalIntent:Z

    iget v0, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {p3, v0, p1, p2}, Lorg/telegram/ui/OAuthSheet;->handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;)V

    return-void
.end method

.method private synthetic lambda$handleSettings$0(Lorg/telegram/ui/FiltersSetupActivity;)V
    .locals 1

    .line 323
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FiltersSetupActivity;->createFolder(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method private synthetic lambda$handleSettings$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 368
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    if-eqz p1, :cond_0

    .line 370
    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LaunchActivity;->openEmailSettings(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleSettings$10(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 3

    .line 739
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    if-nez p1, :cond_0

    return-void

    .line 741
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v0, 0x0

    .line 743
    invoke-static {p1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    sget v1, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 746
    :cond_1
    new-instance v0, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LinkManager;Ljava/lang/String;)V

    .line 754
    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz p2, :cond_2

    .line 755
    new-instance p2, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    .line 756
    invoke-virtual {p2, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 757
    invoke-direct {p0, p2}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 758
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 761
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x6

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    .line 766
    :goto_0
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-direct {v1, p2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 767
    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setOnOpenedSettings(Ljava/lang/Runnable;)V

    .line 768
    invoke-direct {p0, v1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$handleSettings$11(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 738
    new-instance p3, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda16;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleSettings$12(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$Passkeys;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 776
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    if-nez p2, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    new-instance p3, Lorg/telegram/ui/PasskeysActivity;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$Passkeys;->passkeys:Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Lorg/telegram/ui/PasskeysActivity;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, p3}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 781
    const-string p2, "create"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 782
    const-string p1, "addPasskeyRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleSettings$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 367
    new-instance p2, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LinkManager$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LinkManager;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleSettings$7(Lorg/telegram/ui/NotificationsSettingsActivity;ILjava/lang/String;)V
    .locals 0

    .line 614
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->done()V

    .line 616
    invoke-virtual {p1, p2}, Lorg/telegram/ui/NotificationsSettingsActivity;->makeNotificationsCustomSettingsActivity(I)Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    move-result-object p1

    const/4 p2, 0x1

    .line 617
    iput-boolean p2, p1, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->expanded:Z

    const/4 p2, 0x0

    .line 618
    invoke-virtual {p1, p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->updateRows(Z)V

    .line 619
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 621
    const-string p1, "show"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 622
    const-string p1, "showRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 623
    :cond_0
    const-string p1, "new"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 624
    const-string p1, "newRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 625
    :cond_1
    const-string p1, "important"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 626
    const-string p1, "importantRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 627
    :cond_2
    const-string p1, "messages"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 628
    const-string p1, "messagesRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 629
    :cond_3
    const-string p1, "stories"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 630
    const-string p1, "storiesRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 631
    :cond_4
    const-string p1, "preview"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 632
    const-string p1, "previewRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 633
    :cond_5
    const-string p1, "show-sender"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 634
    const-string p1, "showSenderRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 635
    :cond_6
    const-string p1, "sound"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 636
    const-string p1, "soundRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 637
    :cond_7
    const-string p1, "add-exception"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 638
    const-string p1, "addExceptionRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 639
    :cond_8
    const-string p1, "delete-exceptions"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 640
    const-string p1, "deleteExceptionsRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 641
    :cond_9
    const-string p1, "light-color"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 642
    const-string p1, "lightColorRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 643
    :cond_a
    const-string p1, "vibrate"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 644
    const-string p1, "vibrateRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 645
    :cond_b
    const-string p1, "popup"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 646
    const-string p1, "popupRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 647
    :cond_c
    const-string p1, "priority"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 648
    const-string p1, "priorityRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$handleSettings$8(Ljava/lang/String;)V
    .locals 1

    .line 714
    const-string v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "disablePasscodeRow"

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 716
    :cond_0
    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    const-string v0, "changePasscodeRow"

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 718
    :cond_1
    const-string v0, "auto-lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    const-string v0, "autoLockRow"

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 720
    :cond_2
    const-string v0, "fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 721
    const-string p1, "fingerprintRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$handleSettings$9(Ljava/lang/String;)V
    .locals 1

    .line 747
    const-string v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const-string v0, "turnPasswordOffRow"

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 749
    :cond_0
    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const-string v0, "changePasswordRow"

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    .line 751
    :cond_1
    const-string v0, "change-email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 752
    const-string p1, "emailRow"

    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->scrollTo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$init$19(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1376
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->cancel()V

    return-void
.end method

.method private normalizeTgUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-object p1

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method private presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 1329
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LinkManager;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 2

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 1334
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1335
    iget-object p1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildFragments(I)V

    .line 1336
    iget-object p1, p0, Lorg/telegram/ui/LinkManager;->activity:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildFragments(I)V

    :cond_0
    return-void
.end method

.method private scrollTo(Ljava/lang/String;)V
    .locals 1

    .line 1344
    invoke-direct {p0}, Lorg/telegram/ui/LinkManager;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    return-void
.end method

.method private setRequestId(I)V
    .locals 0

    .line 1325
    iput p1, p0, Lorg/telegram/ui/LinkManager;->currentRequestId:I

    return-void
.end method


# virtual methods
.method public getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 1366
    iget v0, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 1358
    iget v0, p0, Lorg/telegram/ui/LinkManager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "tonsite"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleTonsite(Landroid/net/Uri;)Z

    move-result p1

    return p1

    .line 102
    :cond_1
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    const-string v2, "tg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleTg(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_3
    return v0

    .line 103
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkManager;->handleHttp(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
