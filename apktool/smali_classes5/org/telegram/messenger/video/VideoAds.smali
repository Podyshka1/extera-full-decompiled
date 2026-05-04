.class public Lorg/telegram/messenger/video/VideoAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/VideoAds$VideoAdsLocation;,
        Lorg/telegram/messenger/video/VideoAds$AdLayout;,
        Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;,
        Lorg/telegram/messenger/video/VideoAds$CloseDrawable;
    }
.end annotation


# static fields
.field private static cached:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/video/VideoAds$VideoAdsLocation;",
            "Lorg/telegram/messenger/video/VideoAds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;",
            ">;"
        }
    .end annotation
.end field

.field private between_delay:I

.field private bulletin:Lorg/telegram/ui/Components/Bulletin;

.field private bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

.field private bulletinShowTime:J

.field private final currentAccount:I

.field private currentBulletinPassedTime:J

.field private currentMenu:Lorg/telegram/ui/Components/ItemOptions;

.field private currentMenuTranslationY:F

.field private final dialogId:J

.field private first:Z

.field private lastPopupShown:Z

.field private lastTime:J

.field private loaded:Z

.field private loading:Z

.field private final msg_id:I

.field private onPopupCallback:Ljava/lang/Runnable;

.field private premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field private requestId:I

.field private final showRunnable:Ljava/lang/Runnable;

.field private start_delay:I

.field public videoWasPlaying:Z

.field private waitingPaused:Z

.field private waitingTimeSince:J


# direct methods
.method public static synthetic $r8$lambda$-phx4CLieaAN1LpFJkJMLMXGT54(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoAds;->lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1QGZewha_uIKm1JzxxXGiFZKI14(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$7(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_rZHwd9JJLiYDmhmjxpEq5ttBY(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$3(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$25c78JdMlTpwTPvx8GTica5Nn6k(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoAds;->lambda$showPremium$19(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6MLpqnPy3Jq1lo3FzjlXjRTXe_Q(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/view/View;)V
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$8ZQp6vjeH7g_nX12rycBzDMXj0M(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ITh2oDGsY1PYWxGlnYgZllKWVe0(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/messenger/video/VideoAds$CloseDrawable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$2(Lorg/telegram/messenger/video/VideoAds$CloseDrawable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8ZuivI4X7emHVJbhFg6JOaUw4M(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoAds;->lambda$load$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NMPaXQJA30ZcuySw7K2e7czhE1w(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 502
    invoke-static {p0, v0, v1, p1}, Lorg/telegram/ui/RevenueSharingAdsInfoBottomSheet;->showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/RevenueSharingAdsInfoBottomSheet;

    return-void
.end method

.method public static synthetic $r8$lambda$OfU8zEz-uTSWA2OYCyFM_rDNmcU(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$5(Lorg/telegram/ui/Components/Bulletin;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_0Z3VTsKmFD0WI8sMVirDsGq5k(Lorg/telegram/messenger/video/VideoAds;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->showPremium()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZO28X4H_z-4bEJyi8JTR0layIOY(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$12(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqW88WhIPLEgpQtRW4TggbroeHQ(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/view/View;)V
    .locals 0

    .line 447
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->sponsor_info:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$hkuoM5syic_Vi8rlHzMT_zwzASE(Lorg/telegram/messenger/video/VideoAds;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJNzr4cxQtKwCkMVBcwYn2ocNhw(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;[ZLorg/telegram/messenger/video/VideoAds$CloseDrawable;[JLjava/lang/Runnable;[JJLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$4(Lorg/telegram/ui/Components/Bulletin;[ZLorg/telegram/messenger/video/VideoAds$CloseDrawable;[JLjava/lang/Runnable;[JJLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVe8i2C8j2Ec5WZfQBkwOCfuyHY(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/view/View;)Z
    .locals 0

    .line 432
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$kgwf-kmGMY1P8mPtgHmFW64sxeA(Lorg/telegram/messenger/video/VideoAds;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$14(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oDjoyHWVc3yd93UWolDwsC3_UNw(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$16(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcQ09HmohjEMg8hao_x06iAdxdI(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$15(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xKpBcmBax0uJaFxXVyeT5bS3RkA(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$18(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEh0OdQ5_bZK7-ItmxhnVBWxPds(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/video/VideoAds$AdLayout;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/video/VideoAds;->lambda$show$17(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/video/VideoAds$AdLayout;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yR7ErAhMRkQqulVVUfdULZTox5I(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 410
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->closeSwipeback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/video/VideoAds;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMenu(Lorg/telegram/messenger/video/VideoAds;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMenuTranslationY(Lorg/telegram/messenger/video/VideoAds;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenuTranslationY:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/video/VideoAds;->cached:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(IJILorg/telegram/ui/Components/BulletinFactory;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->first:Z

    .line 237
    new-instance v0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/video/VideoAds;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->showRunnable:Ljava/lang/Runnable;

    .line 134
    iput p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    .line 135
    iput-wide p2, p0, Lorg/telegram/messenger/video/VideoAds;->dialogId:J

    .line 136
    iput p4, p0, Lorg/telegram/messenger/video/VideoAds;->msg_id:I

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    .line 138
    invoke-direct {p0, p5}, Lorg/telegram/messenger/video/VideoAds;->init(Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method

.method private checkPopupShownCallback()V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->lastPopupShown:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoAds;->isPopupShown()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoAds;->isPopupShown()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->lastPopupShown:Z

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->onPopupCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private init(Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 4

    .line 160
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    .line 161
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    .line 163
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds;->waitingPaused:Z

    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->waitingTimeSince:J

    :cond_0
    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds;->first:Z

    .line 168
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds;->loaded:Z

    if-nez p1, :cond_2

    .line 169
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->load()V

    return-void

    .line 171
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->schedule()V

    return-void
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 191
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->loading:Z

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sponsoredMessages;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 194
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sponsoredMessages;

    .line 195
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 196
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->start_delay:I

    iput v0, p0, Lorg/telegram/messenger/video/VideoAds;->start_delay:I

    .line 199
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->between_delay:I

    iput p1, p0, Lorg/telegram/messenger/video/VideoAds;->between_delay:I

    :cond_1
    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds;->loaded:Z

    .line 203
    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoAds;->loading:Z

    .line 205
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->schedule()V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 190
    new-instance p2, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$show$12(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 485
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 487
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 489
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 491
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    sget v1, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 492
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 494
    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    return-void

    .line 496
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->showPremium()V

    return-void
.end method

.method private synthetic lambda$show$14(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 9

    .line 505
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds;->dialogId:J

    iget-object v5, p0, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    new-instance v6, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;

    invoke-direct {v6}, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;-><init>()V

    new-instance v7, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/video/VideoAds;)V

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda14;

    invoke-direct {v8, p3}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ReportBottomSheet;->openSponsored(ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$show$15(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 510
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 512
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 514
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 516
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    sget v1, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 517
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 519
    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    return-void

    .line 521
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->showPremium()V

    return-void
.end method

.method private synthetic lambda$show$16(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 533
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 534
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 535
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->checkPopupShownCallback()V

    return-void
.end method

.method private synthetic lambda$show$17(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/video/VideoAds$AdLayout;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 388
    iget-object v4, v0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v4, :cond_10

    move-object/from16 v5, p1

    if-eq v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v5, 0x0

    .line 391
    :try_start_0
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v5

    :goto_0
    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 395
    :cond_1
    new-instance v6, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;

    invoke-direct {v6}, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;-><init>()V

    .line 396
    iget-object v7, v0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    .line 397
    invoke-virtual {v4, v8, v8}, Lorg/telegram/ui/Components/ItemOptions;->setSwipebackGravity(ZZ)Lorg/telegram/ui/Components/ItemOptions;

    .line 398
    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ItemOptions;->setScaleOut(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 399
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 400
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 401
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/ItemOptions;->setDismissWithButtons(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 403
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->sponsor_info:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    if-eqz v7, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 404
    :cond_2
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v7

    .line 406
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v10, v2, v8, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v11, 0x2c

    .line 407
    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 408
    sget v11, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 409
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v11

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v13, 0x42200000    # 40.0f

    if-eqz v12, :cond_3

    move v12, v9

    goto :goto_1

    :cond_3
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_1
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_2

    :cond_4
    move v13, v9

    :goto_2
    invoke-virtual {v11, v12, v9, v13, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 410
    new-instance v11, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda1;

    invoke-direct {v11, v4}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, -0x1

    const/4 v12, -0x2

    .line 411
    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 413
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-direct {v10, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v13, 0x8

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 415
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 v15, 0x41600000    # 14.0f

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x41900000    # 18.0f

    if-eqz v13, :cond_6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget v12, v0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 418
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 419
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v13, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    invoke-virtual {v12, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 421
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v12, v13, v11, v14, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 423
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 424
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/browser/Browser;->IDN_toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v5}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    if-nez v8, :cond_5

    const/4 v8, 0x6

    goto :goto_3

    :cond_5
    move v8, v9

    :goto_3
    invoke-static {v5, v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    new-instance v5, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v4, v1, v2}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    new-instance v5, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 435
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_6
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->sponsor_info:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 439
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 440
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x1

    .line 441
    invoke-virtual {v5, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 442
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v5, v8, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 444
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->sponsor_info:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    if-nez v11, :cond_7

    const/4 v11, 0x6

    goto :goto_4

    :cond_7
    move v11, v9

    :goto_4
    invoke-static {v8, v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    new-instance v8, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda5;

    invoke-direct {v8, v1}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_8
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 455
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 456
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x1

    .line 457
    invoke-virtual {v5, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 458
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v5, v8, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 459
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 460
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->additional_info:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    move-object/from16 v11, p4

    invoke-static {v8, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const/4 v11, 0x6

    invoke-static {v8, v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 462
    new-instance v8, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda6;

    invoke-direct {v8, v1}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_9
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v9, v5, :cond_b

    .line 471
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-lez v9, :cond_a

    .line 473
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 474
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v11, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 475
    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    .line 476
    iput v12, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 477
    invoke-virtual {v7, v8, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    :goto_6
    const/4 v8, -0x2

    goto :goto_7

    :cond_a
    const/4 v11, -0x1

    const/4 v12, 0x1

    goto :goto_6

    .line 479
    :goto_7
    invoke-static {v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v5, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 481
    :cond_b
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    sget v8, Lorg/telegram/messenger/R$string;->SponsoredMessageSponsorReportable:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda7;

    invoke-direct {v9, v4, v7}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v5, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 483
    :cond_c
    iget v5, v0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, v0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v5

    if-nez v5, :cond_d

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->can_report:Z

    if-nez v5, :cond_d

    .line 484
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    sget v7, Lorg/telegram/messenger/R$string;->HideAd:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0, v4}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v5, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 500
    :cond_d
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->can_report:Z

    if-eqz v5, :cond_e

    .line 501
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_info:I

    sget v7, Lorg/telegram/messenger/R$string;->AboutRevenueSharingAds:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda9;

    invoke-direct {v8, v2, v6}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4, v5, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 504
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    sget v6, Lorg/telegram/messenger/R$string;->ReportAd:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0, v2, v1, v4}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/video/VideoAds;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 507
    iget v1, v0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-nez v1, :cond_e

    .line 508
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 509
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    sget v2, Lorg/telegram/messenger/R$string;->RemoveAds:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0, v4}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v1, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 526
    :cond_e
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v1

    if-gtz v1, :cond_f

    goto :goto_8

    .line 529
    :cond_f
    iput-object v4, v0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 530
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/video/VideoAds;->currentMenuTranslationY:F

    .line 531
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 532
    new-instance v1, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v3}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 537
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    .line 538
    invoke-direct {v0}, Lorg/telegram/messenger/video/VideoAds;->checkPopupShownCallback()V

    :cond_10
    :goto_8
    return-void
.end method

.method private synthetic lambda$show$18(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/view/View;)V
    .locals 10

    .line 541
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/VideoAds;->logSponsoredClicked(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    .line 542
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean v8, p1, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private synthetic lambda$show$2(Lorg/telegram/messenger/video/VideoAds$CloseDrawable;Landroid/view/View;)V
    .locals 0

    .line 305
    invoke-virtual {p1}, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->isCrossAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    return-void

    .line 310
    :cond_1
    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 311
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz p1, :cond_2

    .line 312
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 315
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    .line 316
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    sget p2, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 317
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 320
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->showPremium()V

    return-void
.end method

.method private synthetic lambda$show$3(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 329
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->max_display_duration:I

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    sub-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 330
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$4(Lorg/telegram/ui/Components/Bulletin;[ZLorg/telegram/messenger/video/VideoAds$CloseDrawable;[JLjava/lang/Runnable;[JJLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Ljava/lang/Boolean;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_4

    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    aget-boolean v1, p2, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, p2, v0

    .line 339
    invoke-virtual {p3, p1}, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->setPaused(Z)V

    .line 340
    aget-boolean p1, p2, v0

    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    aput-wide p1, p4, v0

    .line 343
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 345
    :cond_1
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 346
    aget-wide p1, p6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aget-wide p3, p4, v0

    sub-long/2addr v1, p3

    add-long/2addr p1, v1

    aput-wide p1, p6, v0

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p7

    aget-wide p3, p6, v0

    sub-long/2addr p1, p3

    .line 348
    iget p3, p9, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    int-to-long p3, p3

    const-wide/16 p6, 0x3e8

    mul-long/2addr p3, p6

    sub-long/2addr p3, p1

    .line 349
    iget p8, p9, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->max_display_duration:I

    int-to-long p8, p8

    mul-long/2addr p8, p6

    sub-long/2addr p8, p1

    const-wide/16 p1, 0x0

    cmp-long p6, p8, p1

    if-gtz p6, :cond_2

    .line 351
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz p1, :cond_4

    .line 352
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_2
    cmp-long p1, p3, p1

    if-gtz p1, :cond_3

    .line 356
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    long-to-int p2, p8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 357
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    return-void

    .line 359
    :cond_3
    invoke-static {p5, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$show$5(Lorg/telegram/ui/Components/Bulletin;[Z)V
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    .line 368
    aget-boolean v0, p2, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 369
    aput-boolean v0, p2, p1

    .line 370
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 371
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 372
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 374
    :cond_1
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const-wide/16 v0, 0x0

    .line 375
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    .line 377
    iget-boolean p2, p0, Lorg/telegram/messenger/video/VideoAds;->waitingPaused:Z

    if-eqz p2, :cond_2

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->waitingTimeSince:J

    .line 380
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 381
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds;->first:Z

    .line 384
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->schedule()V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$show$7(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    .line 427
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 428
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/video/VideoAds;->logSponsoredClicked(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    .line 429
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean v8, p1, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private synthetic lambda$showPremium$19(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 779
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    .line 780
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->checkPopupShownCallback()V

    :cond_0
    return-void
.end method

.method private load()V
    .locals 5

    .line 178
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->loading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->loaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isSponsoredDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->loading:Z

    .line 186
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSponsoredMessages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSponsoredMessages;-><init>()V

    .line 187
    iget v2, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoAds;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSponsoredMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 188
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSponsoredMessages;->flags:I

    or-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSponsoredMessages;->flags:I

    .line 189
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->msg_id:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSponsoredMessages;->msg_id:I

    .line 190
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/video/VideoAds;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/VideoAds;->requestId:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static make(IJILorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/messenger/video/VideoAds;
    .locals 8

    .line 119
    new-instance v0, Lorg/telegram/messenger/video/VideoAds$VideoAdsLocation;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/video/VideoAds$VideoAdsLocation;-><init>(IJ)V

    .line 120
    sget-object v1, Lorg/telegram/messenger/video/VideoAds;->cached:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/VideoAds;

    if-eqz v1, :cond_2

    .line 121
    iget v2, v1, Lorg/telegram/messenger/video/VideoAds;->msg_id:I

    if-ne v2, p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, p4

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    sget-object v1, Lorg/telegram/messenger/video/VideoAds;->cached:Ljava/util/HashMap;

    new-instance v2, Lorg/telegram/messenger/video/VideoAds;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/video/VideoAds;-><init>(IJILorg/telegram/ui/Components/BulletinFactory;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 124
    :goto_1
    invoke-direct {v1, v7}, Lorg/telegram/messenger/video/VideoAds;->init(Lorg/telegram/ui/Components/BulletinFactory;)V

    return-object v1
.end method

.method private schedule()V
    .locals 8

    .line 210
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 211
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->loaded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->first:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->start_delay:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->between_delay:I

    .line 213
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    sub-long/2addr v1, v3

    .line 214
    iget-object v3, p0, Lorg/telegram/messenger/video/VideoAds;->showRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v4, v1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method private show()V
    .locals 32

    move-object/from16 v1, p0

    .line 243
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    sub-long v8, v4, v6

    .line 246
    iput-wide v8, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinShowTime:J

    .line 248
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 250
    iput-object v2, v1, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 253
    :cond_1
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 254
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    .line 256
    new-instance v14, Lorg/telegram/messenger/video/VideoAds$1;

    invoke-direct {v14, v1, v12, v13}, Lorg/telegram/messenger/video/VideoAds$1;-><init>(Lorg/telegram/messenger/video/VideoAds;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 266
    iget-object v0, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 267
    iget-object v0, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v4, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;

    iget-object v5, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v7, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BulletinFactory;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-direct {v4, v5, v7}, Lorg/telegram/messenger/video/VideoAds$AdOptionsDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 268
    iget-object v0, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/16 v4, 0x30

    const/4 v15, 0x1

    if-eqz v0, :cond_3

    .line 271
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_2

    .line 272
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 273
    iget-object v2, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 274
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 275
    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 273
    const-string v18, "48_48"

    const-string v20, "48_48"

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0, v4, v15, v2, v15}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 280
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v2, v4, v15, v0, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 281
    iget-object v4, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 282
    invoke-static {v0, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 283
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 281
    const-string v18, "48_48"

    const-string v20, "48_48"

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0, v4, v15, v2, v15}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 290
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v2, v4, v15, v0, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 291
    iget-object v4, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 292
    invoke-static {v0, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 293
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 291
    const-string v18, "48_48"

    const-string v20, "48_48"

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_4
    invoke-virtual {v14}, Lorg/telegram/messenger/video/VideoAds$AdLayout;->hideImage()V

    .line 301
    :cond_5
    :goto_0
    new-instance v4, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;

    iget-object v0, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->buttonView:Landroid/widget/ImageView;

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->max_display_duration:I

    move-object/from16 v17, v12

    iget-wide v11, v1, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    move-object/from16 v27, v0

    move/from16 v28, v2

    move-object/from16 v26, v4

    move/from16 v29, v5

    move-wide/from16 v30, v11

    invoke-direct/range {v26 .. v31}, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;-><init>(Landroid/view/View;IIJ)V

    .line 302
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->setColor(I)V

    .line 303
    iget-object v0, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->buttonView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v0, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->buttonView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1, v4}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/messenger/video/VideoAds$CloseDrawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->max_display_duration:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v14, v2}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, v2, Lorg/telegram/ui/Components/Bulletin;->setCanHideOnShow:Z

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 327
    new-instance v6, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;

    invoke-direct {v6, v1, v2, v3}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    .line 333
    new-array v7, v15, [J

    .line 334
    new-array v5, v15, [J

    move-object v10, v3

    .line 335
    new-array v3, v15, [Z

    .line 336
    new-instance v0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda17;

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;[ZLorg/telegram/messenger/video/VideoAds$CloseDrawable;[JLjava/lang/Runnable;[JJLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    .line 363
    iget v3, v10, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    int-to-long v3, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 364
    new-array v3, v15, [Z

    .line 365
    iget-object v4, v1, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 366
    new-instance v5, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;

    invoke-direct {v5, v1, v2, v3}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;[Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Bulletin;->setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    .line 387
    iget-object v8, v14, Lorg/telegram/messenger/video/VideoAds$AdLayout;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object v7, v0

    new-instance v0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda19;

    move-object v3, v10

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/video/VideoAds$AdLayout;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    new-instance v2, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1, v10}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Bulletin;->setOnClickListener(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Bulletin;

    .line 544
    iget-object v0, v1, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 545
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/video/VideoAds;->logSponsoredShown(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    return-void
.end method

.method private showPremium()V
    .locals 4

    .line 755
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    const/4 v0, 0x0

    .line 757
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    .line 759
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/VideoAds$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoAds$2;-><init>(Lorg/telegram/messenger/video/VideoAds;)V

    .line 775
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 776
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoAds;->premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    .line 777
    new-instance v0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 783
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    .line 784
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->checkPopupShownCallback()V

    return-void
.end method


# virtual methods
.method public isPopupShown()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->premiumSheet:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public logSponsoredClicked(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;-><init>()V

    .line 860
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->random_id:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;->random_id:[B

    const/4 p1, 0x0

    .line 861
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;->media:Z

    .line 862
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clickSponsoredMessage;->fullscreen:Z

    .line 863
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez p1, :cond_1

    .line 864
    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public logSponsoredShown(Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_viewSponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_viewSponsoredMessage;-><init>()V

    .line 851
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->random_id:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_viewSponsoredMessage;->random_id:[B

    .line 852
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez p1, :cond_1

    .line 853
    iget p1, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setPauseOnPopupCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->onPopupCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setWaitingPaused(Z)V
    .locals 4

    .line 220
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->waitingPaused:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds;->waitingPaused:Z

    .line 222
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds;->waitingTimeSince:J

    return-void

    .line 226
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds;->waitingTimeSince:J

    sub-long/2addr v0, v2

    .line 227
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/telegram/messenger/video/VideoAds;->lastTime:J

    .line 228
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-nez p1, :cond_2

    .line 229
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoAds;->schedule()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 11

    .line 549
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/messenger/video/VideoAds;->bulletinShowTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    .line 551
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    .line 553
    iget-wide v5, p0, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->min_display_duration:I

    int-to-long v7, v0

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 554
    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    .line 555
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 556
    iput-boolean v4, p0, Lorg/telegram/messenger/video/VideoAds;->first:Z

    .line 559
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 560
    iput-object v3, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 562
    :cond_1
    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoAds;->currentBulletinPassedTime:J

    .line 564
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_2

    .line 565
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 566
    iput-object v3, p0, Lorg/telegram/messenger/video/VideoAds;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 568
    :cond_2
    iput-object v3, p0, Lorg/telegram/messenger/video/VideoAds;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 569
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds;->loading:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 570
    iget v0, p0, Lorg/telegram/messenger/video/VideoAds;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/video/VideoAds;->requestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 571
    iput v4, p0, Lorg/telegram/messenger/video/VideoAds;->requestId:I

    .line 572
    iput-boolean v4, p0, Lorg/telegram/messenger/video/VideoAds;->loading:Z

    .line 574
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 575
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/video/VideoAds;->setWaitingPaused(Z)V

    return-void
.end method
