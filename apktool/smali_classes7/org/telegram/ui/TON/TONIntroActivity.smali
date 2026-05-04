.class public Lorg/telegram/ui/TON/TONIntroActivity;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TON/TONIntroActivity$NestedFrameLayout;,
        Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;
    }
.end annotation


# instance fields
.field private final BUTTON_AFFILIATE:I

.field private final BUTTON_EXPAND:I

.field private final BUTTON_GIFT:I

.field private final BUTTON_SUBSCRIPTIONS_EXPAND:I

.field private aboveTitleView:Landroid/widget/FrameLayout;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final allowTopUp:Z

.field private balanceLayout:Landroid/widget/LinearLayout;

.field private buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private emptyLayout:Landroid/view/View;

.field private expanded:Z

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private hadTransactions:Z

.field private iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private oneButtonsLayout:Landroid/widget/FrameLayout;

.field private starBalanceIcon:Landroid/text/SpannableStringBuilder;

.field private starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

.field private twoButtons:Z

.field private twoButtonsLayout:Landroid/widget/LinearLayout;

.field private withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method public static synthetic $r8$lambda$2-03enKkAWujzBaM0TIV3q_8LR8(Lorg/telegram/ui/TON/TONIntroActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$updateButtonsLayouts$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4IzRi36QGwjfZoziUvTxXR61B6g(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$71UNYhXX4_wrgqm9xucR7OfTpGg(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IqS4jlsGQd31Kq7SqWJ5qqB1qS8(Lorg/telegram/ui/TON/TONIntroActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$updateButtonsLayouts$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hlkrSL3ZEXaEzTHQaOvsRePo0MA(Landroid/content/Context;)V
    .locals 1

    .line 214
    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$tB2zhF0k5FOPoPniSE6vNmLo0Qo(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yYpA-pn9Fi5G1-2-YPrcU6nkCnM(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgettransactionsLayout(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwoButtons(Lorg/telegram/ui/TON/TONIntroActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->expanded:Z

    const/4 v0, -0x1

    .line 608
    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_EXPAND:I

    const/4 v0, -0x2

    .line 609
    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_GIFT:I

    const/4 v0, -0x3

    .line 610
    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_SUBSCRIPTIONS_EXPAND:I

    const/4 v0, -0x4

    .line 611
    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_AFFILIATE:I

    .line 106
    invoke-static {}, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->setWhiteBackground(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TON/TONIntroActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->yOffset:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static allowTopUp()Z
    .locals 1

    .line 102
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isBetaApp()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 0

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity;->onItemClick(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 3

    .line 309
    new-instance p1, Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsActivity;-><init>(IJ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$updateButtonsLayouts$5(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateButtonsLayouts$6(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 1

    .line 526
    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity$4;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private updateBalance()V
    .locals 7

    .line 332
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v1, v1, Lorg/telegram/messenger/AppGlobalConfig;->tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    invoke-virtual {v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;->get()D

    move-result-wide v1

    .line 335
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    .line 337
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 338
    iget-object v4, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v4, 0x3f28f5c3    # 0.66f

    const/16 v5, 0x20

    .line 339
    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 340
    iget-object v4, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    mul-double/2addr v3, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v0

    double-to-int v0, v3

    if-lez v0, :cond_0

    .line 344
    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2248"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    int-to-long v4, v0

    const-string v0, "USD"

    invoke-virtual {v3, v4, v5, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->YourTonBalance:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stars/BotStarsController;->getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/TON/TONIntroActivity;->updateButtonsLayouts(ZZ)V

    return-void
.end method

.method private updateButtonsLayouts(ZZ)V
    .locals 4

    .line 355
    iget-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 356
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 358
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 361
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Z)V

    .line 362
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 367
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 368
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_2

    move v0, v1

    .line 369
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Z)V

    .line 370
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 377
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 378
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 379
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 380
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 381
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    move v2, v0

    :cond_7
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public attachedTransactionsLayout()Z
    .locals 3

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 512
    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 9

    .line 591
    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$5;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    new-instance v7, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/TON/TONIntroActivity$5;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v2, 0x0

    .line 603
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 604
    iget-object v0, v1, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method protected createContentView()Lorg/telegram/ui/GradientHeaderActivity$ContentView;
    .locals 2

    .line 388
    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$NestedFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/TON/TONIntroActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    .line 522
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TON/TONIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    const/4 v9, 0x0

    .line 181
    iput-boolean v9, v0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    const/high16 v1, 0x436e0000    # 238.0f

    .line 182
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    .line 183
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v7

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    .line 184
    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity$1;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/TON/TONIntroActivity$1;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->emptyLayout:Landroid/view/View;

    .line 201
    iget-boolean v3, v0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 205
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    .line 206
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 207
    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    .line 208
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v4, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    .line 209
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v4, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    .line 210
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 211
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    .line 212
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v15, 0x0

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v10, 0xaa

    const/high16 v11, 0x432a0000    # 170.0f

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/high16 v14, 0x42000000    # 32.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    sget v1, Lorg/telegram/messenger/R$string;->TONBalanceTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->TONBalanceText:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    .line 217
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 218
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 219
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 220
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 221
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    .line 222
    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 223
    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 231
    new-instance v1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 232
    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    .line 236
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v9, v4, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v9, v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 241
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 243
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 244
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 246
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v5, "S"

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    .line 247
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v5, -0xcc6e2c

    .line 248
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    const/high16 v5, 0x3f000000    # 0.5f

    .line 249
    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/high16 v5, 0x40400000    # 3.0f

    .line 250
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    .line 251
    iget-object v5, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    const/16 v8, 0x21

    invoke-virtual {v5, v1, v9, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 252
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v15, 0x41c00000    # 24.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v5, 0x41600000    # 14.0f

    .line 255
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 256
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 257
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/messenger/R$string;->YourTonBalance:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 259
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v16, 0x41000000    # 8.0f

    const/4 v10, -0x1

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 263
    new-instance v4, Lorg/telegram/ui/TON/TONIntroActivity$2;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/TON/TONIntroActivity$2;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    .line 270
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    iget-boolean v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz v4, :cond_1

    .line 273
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v5, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 274
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 275
    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v5, Lorg/telegram/messenger/R$string;->TopUpViaFragment:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 276
    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v5, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/TON/TONIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v10, 0x30

    const/16 v11, 0x77

    invoke-static {v6, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    :cond_1
    new-instance v4, Lorg/telegram/ui/TON/TONIntroActivity$3;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/TON/TONIntroActivity$3;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    .line 289
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 291
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 292
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "x  "

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 293
    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->mini_topup:I

    invoke-direct {v6, v10, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    invoke-virtual {v4, v6, v9, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 294
    sget v6, Lorg/telegram/messenger/R$string;->TonTopUp:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 295
    iget-object v6, v0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v6, v4, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 296
    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v6, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-boolean v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/high16 v12, 0x41880000    # 17.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_2
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/TON/TONIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 304
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 305
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->mini_stats:I

    invoke-direct {v5, v6, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    invoke-virtual {v4, v5, v9, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 306
    sget v2, Lorg/telegram/messenger/R$string;->TonStats:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    iget-object v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v4, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 308
    iget-object v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/TON/TONIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/high16 v12, 0x41880000    # 17.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/16 v12, 0x11

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 316
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 317
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 318
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/TON/TONIntroActivity;->twoButtons:Z

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v9

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    invoke-direct {v0}, Lorg/telegram/ui/TON/TONIntroActivity;->updateBalance()V

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_7

    .line 325
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 328
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 136
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 144
    :cond_0
    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    if-gez p1, :cond_1

    .line 145
    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    .line 147
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->applyScrolledPosition()V

    return-void

    .line 148
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    if-ne p1, p2, :cond_5

    .line 149
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    .line 150
    iget-boolean p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->hadTransactions:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p3

    if-eq p2, p3, :cond_8

    .line 151
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->hadTransactions:Z

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 156
    :cond_3
    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    if-gez p1, :cond_4

    .line 157
    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    .line 159
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->applyScrolledPosition()V

    return-void

    .line 161
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    if-ne p1, p2, :cond_6

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_8

    .line 163
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 165
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_7

    .line 166
    invoke-direct {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->updateBalance()V

    return-void

    .line 167
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    if-ne p1, p2, :cond_8

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    .line 169
    invoke-direct {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->updateBalance()V

    :cond_8
    return-void
.end method

.method protected drawActionBarShadow()Z
    .locals 1

    .line 517
    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->attachedTransactionsLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 2

    .line 614
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 618
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    .line 620
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TON/TONIntroActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iget-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz v0, :cond_1

    .line 623
    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->hadTransactions:Z

    if-eqz p2, :cond_3

    .line 627
    iget-boolean p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 630
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->emptyLayout:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 585
    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 176
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 112
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 113
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 114
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 115
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 116
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 117
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    .line 118
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    .line 119
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getOptions()Ljava/util/ArrayList;

    .line 120
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 125
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 126
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 127
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 128
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 129
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 130
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;I)V
    .locals 3

    .line 635
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 636
    iget-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->expanded:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->expanded:Z

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_0
    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    .line 639
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    .line 640
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void

    :cond_1
    const/4 p2, -0x3

    if-ne p1, p2, :cond_2

    .line 642
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->loadSubscriptions()V

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_2
    const/4 p2, -0x4

    if-ne p1, p2, :cond_4

    .line 645
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 646
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 649
    :cond_3
    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 576
    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onPause()V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 578
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 567
    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onResume()V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 569
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method
