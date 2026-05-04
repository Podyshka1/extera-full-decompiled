.class public Lorg/telegram/ui/Stars/StarsIntroActivity;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$NestedFrameLayout;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$ExpandView;
    }
.end annotation


# static fields
.field private static floatFormat:Ljava/text/DecimalFormat;

.field private static floatFormat2:Ljava/text/DecimalFormat;


# instance fields
.field private final BUTTON_AFFILIATE:I

.field private final BUTTON_EXPAND:I

.field private final BUTTON_GIFT:I

.field private final BUTTON_SUBSCRIPTIONS_EXPAND:I

.field private aboveTitleView:Landroid/widget/FrameLayout;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private balanceLayout:Landroid/widget/LinearLayout;

.field private buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private emptyLayout:Landroid/view/View;

.field private expanded:Z

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private hadTransactions:Z

.field private iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private oneButtonsLayout:Landroid/widget/FrameLayout;

.field private starBalanceIcon:Landroid/text/SpannableStringBuilder;

.field private starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private starBalanceTitleView:Landroid/widget/TextView;

.field private topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

.field private twoButtons:Z

.field private twoButtonsLayout:Landroid/widget/LinearLayout;

.field private withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method public static synthetic $r8$lambda$-1gNBS7abUvYE_OQhlnhhwW5IvY([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 2

    const/4 v0, 0x0

    .line 4253
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    move-object v1, p6

    move-object p6, p5

    move-wide p4, p3

    move-object p3, v1

    .line 4254
    invoke-static/range {p1 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showShareAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method public static synthetic $r8$lambda$-RJA1IKlB-ZwzeHkVpaZ9gg-EB4([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4266
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4267
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4269
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 4270
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 4272
    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$-gG9gtP2tdwiOVMm9QYQ34tJszk(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$updateButtonsLayouts$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$0nn0Z8n1ThaLHuZ7S1hDAreDjCQ([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4258
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4259
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4261
    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$1W7CtXtcUz2fAWNaJvsTOrY3G18([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x0

    .line 5187
    aget-boolean v0, p0, p5

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 5189
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5190
    aput-boolean v1, p0, p5

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 5191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda78;

    invoke-direct {p3, p2, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p0, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5196
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5197
    aget-object p0, p4, p5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$1aYKVcSuG2LSE-LCq-k6YGGdDaI(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 4723
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4724
    aget-object p0, p1, v0

    if-eqz p0, :cond_0

    .line 4725
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4727
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    .line 4729
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 4731
    :cond_1
    invoke-static {p3, p4}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$3DQ58Z8O7JOUMF1JDyPIPT8HuYQ(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 2

    .line 2345
    iget-wide p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    goto :goto_0

    .line 2346
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2348
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v0, 0x1

    .line 2349
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    .line 2350
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 2351
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$6hn_iMyOY89r07iYM9YWg76FlrU([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4155
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4156
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4158
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 4159
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 4161
    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$6w0lhPHcMh3iU9irDI7ZKSUKmPI(Landroid/content/Context;)V
    .locals 1

    .line 5098
    sget v0, Lorg/telegram/messenger/R$string;->PaidContentInfoLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6yoR4Iq9GbT6hgJd2aiDqi9-OdE(Landroid/widget/TextView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 5573
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_2

    .line 5574
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz v0, :cond_1

    const-string v0, "Gift2QuantityIssuedNone"

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gift2QuantityIssued1"

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Gift2QuantityIssued2"

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5576
    :cond_2
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz v0, :cond_3

    const-string v0, "Gift2Availability2ValueNone"

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    int-to-long v1, p1

    const/16 p1, 0x2c

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Gift2Availability4Value"

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$707VQncvlJFDhOIr6j36GAjMikU(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    .line 4871
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->stars_send:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCompleted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    long-to-int p1, p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 p3, 0x1

    new-array v2, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "StarsSubscriptionCompletedText"

    invoke-static {p2, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$7PL3orQMT_NP3BhLDG9qZ7s3bhs(Landroid/content/Context;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 2

    .line 4024
    new-instance v0, Lorg/telegram/ui/Components/StarAppsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StarAppsSheet;-><init>(Landroid/content/Context;)V

    .line 4025
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    aget-object v1, p1, p0

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object p0, p1, p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p0, :cond_0

    .line 4026
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4028
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZsrleWoA0mADFYg-9aN5w130ds([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stories$Boost;)V
    .locals 1

    const/4 v0, 0x0

    .line 4972
    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4973
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 4975
    :cond_1
    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$7evpbfi-zB9nLlpHaSFnru9oFCc(Landroid/content/Context;)V
    .locals 1

    .line 4988
    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$814H3pfYzoktoRr3Odn3tqvBzyQ(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8D3iPuiORhRvfU_OginKQroc44M([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 4106
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4107
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4110
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 4112
    const-string p1, "my_profile"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4114
    :cond_0
    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4115
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$9YDO1oz7yQK_v-0iAyFCkVRyg_g(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4773
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4774
    aget-object p0, p1, v0

    if-eqz p0, :cond_0

    .line 4775
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4777
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    .line 4779
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4781
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenewedToast:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenewedToastText:I

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p4, p1, v0

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$A1w6RPPIPTFcktB9L_VREHtG9rc([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 5547
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$A5ctNUNnrw_YIggmHmNtCCZ1cIU(Landroid/content/Context;)V
    .locals 1

    .line 4485
    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AUr_XEXXRDvLDtJmB1NEsAk5IkI(IJLjava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .line 4861
    const-string v0, "paid"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    .line 4862
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda97;

    invoke-direct {p3, p4, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda97;-><init>(Ljava/lang/Long;IJ)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$BNFwSzyKJq9kxZpPOkbeIzIYmIk(ILorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Landroid/content/DialogInterface;)V
    .locals 0

    .line 4898
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CG1atoraQ0frx_CFFt99WDi52h4(Lorg/telegram/messenger/Utilities$Callback2;[Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)V
    .locals 1

    .line 5256
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda92;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda92;-><init>([Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;)V

    invoke-interface {p0, p2, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EvGo8SDEtLNryPvpxOeqUYlVN2U([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 4121
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4122
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4125
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 4127
    const-string p1, "my_profile"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4129
    :cond_0
    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4130
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$FSHDo5_r5iae7kqpOxT0Ppad5TU(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 5175
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 5176
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$FveBt0RZL2ASfWZl8Ig9iYOYCbY(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2425
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$FwyKMEFKgz9Jb0qoH1k8JITszdc(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 6

    .line 4165
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet;

    const/4 v1, 0x0

    aget-object p4, p4, v1

    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v5, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$GWmXBEhjST4C-WptQkYWLJZ3f5g(Landroid/content/Context;)V
    .locals 1

    .line 2256
    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GlYDQcjXmO82yQsqRy-yzMeiMAI(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 5192
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 5193
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$HXjjolat772q5MuwE4enDUo5kC4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 4809
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4810
    aget-object p0, p1, v0

    if-eqz p0, :cond_0

    .line 4811
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4813
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    .line 4815
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p2, 0x2

    if-eqz p3, :cond_1

    .line 4818
    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 4819
    sget p3, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledBizToastText:I

    iget p5, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v1, p5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p5

    iget-object p4, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p4, p2, p1

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 4820
    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 4821
    sget p3, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledBotToastText:I

    iget p5, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v1, p5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p5

    iget-object p4, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p4, p2, p1

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4823
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledToastText:I

    iget p3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v0

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4825
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-static {p6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledToast:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$IAdWasl_sdnozILJrsejnC5Fdl8(Landroid/content/Context;)V
    .locals 1

    .line 4694
    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$InZQNYbkB3t_uOamUwU4Vynuiyk([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 4508
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$JNtk_W-66tT8hy6JhNUu67YLzwQ([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 3

    const/4 v0, 0x0

    .line 4169
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4170
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4173
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string/jumbo p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4174
    const-string p1, "my_profile"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4175
    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4176
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$JRR6PFwiWj5tVezMdJ3uZhRENKU(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V
    .locals 0

    .line 2410
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2411
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 2413
    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda96;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const-wide/16 p0, 0x190

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVZSe-KSq3m3Qorlo_SNypgkDKI(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 5231
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$JpN0BqVDVXPifM6YGlhaZHMYk28([Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5256
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$K5aoLQnR0i1OzFEjMT7d81gKMDA([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4287
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4288
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4290
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 4291
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 4293
    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$K77avHa9Rwc1kDpemc6ka6K4cnM(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V
    .locals 0

    .line 2269
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2270
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 2272
    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda75;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const-wide/16 p0, 0x190

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$KN1YxrmfDGIOr12ZmoytgqnXE7s(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    move-object p6, p4

    move-object p4, p2

    move-object p2, p5

    move p5, p3

    move-object p3, p1

    move-object p1, p0

    .line 4851
    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda89;

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7B49l2nlUHQOQhvgmJgBU1XyQU([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 5229
    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 5230
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 5231
    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda82;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OLgeKZGLGJ1-_KH2V72D3vBLhwE(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    move-wide p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 4722
    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda93;

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSexWNx2HdW3KaXu6-hbjpsViEA([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4312
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4313
    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4314
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4316
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4318
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$PUcLBJ7bNknzy-rHru5RbTP3EEQ([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p5, 0x5

    const/4 p7, 0x0

    if-ne p6, p5, :cond_2

    .line 5171
    aget-boolean p5, p0, p7

    const/4 p6, 0x1

    if-eqz p5, :cond_0

    return p6

    :cond_0
    if-eqz p1, :cond_1

    .line 5173
    aput-boolean p6, p0, p7

    invoke-virtual {p2, p6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 5174
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;

    invoke-direct {p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return p6

    .line 5179
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5180
    aget-object p0, p4, p7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return p6

    :cond_2
    return p7
.end method

.method public static synthetic $r8$lambda$Q1S9j1Mq-eefuyJam-TixcTBvy8([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4234
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4235
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4237
    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$SDojXNL6NZi5jKFjw7CMOuFdtZ4(ILandroid/content/Context;JJ[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    move v3, p0

    .line 4252
    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;

    move-object v2, p1

    move-wide v4, p2

    move-object v1, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p6, v0

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Stars/BotStarsController;->getConnectedBot(Landroid/content/Context;JJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUA6c15Kw-8xJ4cZLSHlpKgM6Qg([ZLorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5206
    aput-boolean v0, p0, v0

    .line 5207
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5208
    aget-object p0, p2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$TD6yZ5ko1PMQadpw0gjp3pjjhdw(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Thc2AVcSQy69lVnyvZDeWdPLg14(ZILjava/lang/String;Lorg/telegram/messenger/ImageReceiver;[Z)V
    .locals 12

    if-eqz p0, :cond_0

    .line 3625
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/UserConfig;->premiumTonStickerPack:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 3627
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaDataController;->checkTonGiftStickers()V

    return-void

    .line 3631
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 3633
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    .line 3638
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3640
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    :cond_2
    move-object v10, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v10, :cond_6

    move v2, v0

    .line 3643
    :goto_0
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3644
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 3645
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3646
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move p2, v0

    .line 3647
    :goto_1
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_5

    .line 3648
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_3

    .line 3649
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_7

    .line 3657
    iget-object p2, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3658
    iget-object p2, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_6
    move-object v4, v1

    :cond_7
    :goto_3
    const/4 p2, 0x1

    if-eqz v4, :cond_8

    .line 3663
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 3664
    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$7;

    move-object/from16 p1, p4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$7;-><init>([Z)V

    invoke-virtual {p3, p0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 3677
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const p1, 0x3e99999a    # 0.3f

    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    .line 3678
    iget-object p0, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 p1, 0xa0

    invoke-static {p0, p1, p2, v1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    .line 3679
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 3681
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 3682
    invoke-static {p0, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p0

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string/jumbo v9, "tgs"

    const/4 v11, 0x1

    .line 3680
    const-string v3, "160_160_nr"

    const-string v5, "160_160"

    move-object v4, p0

    move-object v1, p3

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 3689
    :cond_8
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    if-nez v10, :cond_9

    goto :goto_4

    :cond_9
    move p2, v0

    :goto_4
    invoke-virtual {p1, p0, v0, p2}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$UJrgeQXB_AWuKvlIikjNUVwiQbk([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4964
    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4965
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 4967
    :cond_1
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$UO74Br-RyqnkXHQghyUxL915ZfY(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 4772
    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda84;

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UmFdWpuCNya2ihlwGoLICMAGMwE(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VNiD53id_Djtqbi-CiksxVpI83A([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4325
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4326
    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4327
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4329
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4331
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$X2ffkRJUqdnOyR9hqJyh77UOzbQ([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/4 v0, 0x0

    .line 4455
    aget-object p0, p0, v0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->copy:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionIDCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$XnFteaku7WSmKmw_rh7NFFxndVE(ZJLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 10

    if-eqz p0, :cond_0

    :goto_0
    move-wide v3, p1

    goto :goto_1

    .line 3847
    :cond_0
    iget-object p0, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    goto :goto_0

    .line 3848
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 p0, 0x0

    move p1, p0

    .line 3849
    :goto_2
    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 3850
    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3851
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 3852
    iget v5, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3853
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3854
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v6, v3

    .line 3855
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 3856
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3857
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 3858
    iget v5, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3859
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3860
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 p2, 0x1

    .line 3861
    iput-boolean p2, v2, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    .line 3862
    new-instance p2, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p2, p4, v2, p0, p0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 3863
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 3865
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 3867
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3868
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$9;

    move-object/from16 p0, p6

    move-object/from16 p1, p7

    invoke-direct {v9, p0, p1, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$9;-><init>(Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;J)V

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ZFsjmEYMGQapdNOWj8n8E9haNww(Landroid/content/Context;)V
    .locals 1

    .line 2394
    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscribeInfoLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZKe9APX_9Xq7x6wSOliwNmWFNso(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 4808
    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda91;

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZW2Ilg6RObAVl6CF3AILhSh6aKw(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    .line 4766
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x1

    .line 4767
    invoke-virtual {p0, p6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4768
    new-instance p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;

    invoke-direct {p6}, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;-><init>()V

    .line 4769
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->canceled:Ljava/lang/Boolean;

    .line 4770
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v0, p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4771
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iput-object p1, p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->subscription_id:Ljava/lang/String;

    .line 4772
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda76;

    move-object v1, p0

    move v3, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {p1, p6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$_IUToQOzpzvbwAo5dB-KoOwLDHs([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 3

    const/4 v0, 0x0

    .line 4182
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4183
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4186
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string/jumbo p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4187
    const-string p1, "my_profile"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4188
    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4189
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$_RrERp9YKwmIu91kpuMRrq1VWIk([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4227
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4228
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4230
    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$a7iJeVvju5MfqbnnbMYsxZ_jlJQ(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 7

    .line 4054
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    .line 4055
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet;

    move v3, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p0, 0x0

    .line 4056
    invoke-virtual {v1, p3, p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p0

    .line 4057
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$arICYNa0jsYeQfgRMGJO7B296U8([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4212
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4213
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4215
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$bGnYDScq0MjNpc_G0Ilw5ZT_LYE(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 1

    const/4 v0, 0x0

    .line 2273
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 2274
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMLbQQVepN-FPt99ZGB3iaHKeVg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;ZZLorg/telegram/tgnet/TLObject;Landroid/view/View;)V
    .locals 10

    .line 4802
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4803
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4804
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;-><init>()V

    .line 4805
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->canceled:Ljava/lang/Boolean;

    .line 4806
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4807
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->subscription_id:Ljava/lang/String;

    .line 4808
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda80;

    move-object v3, p0

    move-object v7, p1

    move v5, p2

    move-object v4, p3

    move v6, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$csuf9Cdy-sUOI37q7ZUM6flepIQ([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4241
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4242
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4244
    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$elZFBY5WO423yaw049FUDZ0hzNI(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 4078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/nft/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQMhWWgBnGNgmShghlmbb77XPAg(Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 4

    if-eqz p4, :cond_0

    .line 4052
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4053
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->StarGiftReasonUpgradeView:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-static {v2, v3, p3}, Lorg/telegram/ui/Components/ButtonSpan;->make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4059
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$hYp7bVi1EFEUcuWVv41QaOqpcb4(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$updateButtonsLayouts$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhuFHR-pdra3sZmF_Um9WowVLXE(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 4448
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$i9SWg9STm0FNshf8H2lMAs0pd1s(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$2(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iKVE-DbR38vPdkNPf7eee0PWjIM(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 5219
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijwwvAb1HAyZEdCFM3nAGJid1YU([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4194
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4195
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4197
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 4198
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 4200
    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ipPdXX7asKv2b8XGKXux2lIeVQg([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V
    .locals 2

    const/4 v0, 0x0

    .line 4425
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4426
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4429
    const-string v1, "chat_id"

    neg-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4430
    const-string p1, "message_id"

    iget p2, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4431
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ipbcP8b7a053N5xSEE2QTd_sqIg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;Landroid/view/View;)V
    .locals 10

    .line 4846
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4847
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4848
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4849
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    .line 4850
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    iput-object p1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    .line 4851
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda77;

    move-object v3, p0

    move v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V

    invoke-virtual {p1, v7, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 4881
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 4882
    aput-boolean v0, p5, p2

    .line 4883
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://t.me/$"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$14;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$14;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$jdcOnrH0PgPxKN-XVE-1hEWcFE0(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 7

    const/4 v0, 0x1

    .line 4718
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4719
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;-><init>()V

    .line 4720
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;->subscription_id:Ljava/lang/String;

    .line 4721
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4722
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda90;

    move-object v2, p0

    move v4, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$kkYRwSdQXxOuQRsPGWqHBsjR2RY(Ljava/lang/Long;IJ)V
    .locals 4

    .line 4863
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4865
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    .line 4866
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 4868
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4870
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda98;

    invoke-direct {p1, v1, p2, p3, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V

    const-wide/16 p2, 0xfa

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$lEbaw3a8lVtKvfm4T5oVNcYwAKs(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 1

    const/4 v0, 0x1

    .line 5012
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lFPNdaiqWJQZyV1okrpfshDzca4(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V
    .locals 0

    .line 5079
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRsVxobHv7NCzcCJH9NdQGplK5Q(Lorg/telegram/ui/Stars/StarsIntroActivity;Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$onItemClick$8(Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$laqoFMs_J2ETEpV2XpJ2h5yFzZ8(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;[Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Landroid/view/View;)V
    .locals 18

    .line 4715
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4716
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v7

    .line 4717
    new-instance v15, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda79;

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    .line 4734
    iget-object v0, v7, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    .line 4735
    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v11, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    if-eqz p8, :cond_1

    const/16 v0, 0x8

    :goto_0
    move-wide/from16 v16, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v14, p9

    move v13, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :goto_1
    invoke-direct/range {v8 .. v17}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;J)V

    invoke-virtual {v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-void

    .line 4737
    :cond_3
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$m8Sw0wRH5Hjoap-9UKdsDZE9GtM(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Landroid/view/View;)V
    .locals 1

    .line 3777
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/nft/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUY6Qqoo42-WFKMz3Ac4XQviAI8(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 2

    .line 2137
    iget-wide p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    goto :goto_0

    .line 2138
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2140
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v0, 0x1

    .line 2141
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    .line 2142
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 2143
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$nY1AL9mt5yQeTz_aj8eKbpZ5x8s([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 3

    const/4 v0, 0x0

    .line 4277
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4278
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4281
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string/jumbo p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4282
    const-string p1, "my_profile"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4283
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$p9IR0r-rjiVLGiCJ5k3b28eFKgY([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4300
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4301
    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4302
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4304
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4306
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$pmt-gvPnW9n5jyt5ctnNglR1NMI(Landroid/content/Context;)V
    .locals 1

    .line 302
    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$q4XZIkv5mvgTld4qAYI-ie9JkdM(Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 3694
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$qhOeP7EsRhmdX9PP5CuHsRsu2TU(Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 3693
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$s2eX6YGfcp0ExqVgIcYOP7jBPFw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    .line 2407
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    const/4 p3, 0x1

    .line 2408
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 2409
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda95;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-interface {p0, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 2420
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$sFFyu7tglm5UYol-9TNRZbCKkGk(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 3696
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 3697
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$u-EYXk9CvtRo81sov3k2iYxLQ08(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 1

    const/4 v0, 0x0

    .line 2414
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 2415
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uEOd_eZkdzAo6jf3OfosQ3Ms8to([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x0

    .line 5202
    aget-boolean v0, p0, p5

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5204
    aput-boolean v0, p0, p5

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    const-wide/16 v0, 0x0

    .line 5205
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda74;

    invoke-direct {p5, p0, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda74;-><init>([ZLorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p2, p5}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5211
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5212
    aget-object p0, p4, p5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$vI5E-LfqjVrUX8WDeFMsdSv4lNM(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Landroid/view/View;)V
    .locals 0

    .line 4504
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_vgNFcTwMDDVzGV44BUag7-P1M(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V
    .locals 1

    const/4 v0, 0x0

    .line 4852
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 4853
    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz p0, :cond_1

    .line 4854
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 4855
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-nez p0, :cond_0

    .line 4856
    aget-object p0, p2, v0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 4859
    :cond_0
    iget-wide p2, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    .line 4860
    invoke-static {p4}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda94;

    invoke-direct {v0, p4, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda94;-><init>(IJ)V

    invoke-virtual {p0, p5, p1, v0}, Lorg/telegram/ui/Stars/StarsController;->subscribeTo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 4878
    :cond_1
    aget-object p0, p2, v0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->LinkHashExpired:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$vpIjOReXh8zTLIY2rdvSW-lDLes(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    .line 2266
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    const/4 p3, 0x1

    .line 2267
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 2268
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda58;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-interface {p0, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 2279
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$w4FKhkRtIxAaT0-VafeHKHV_kH8(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2284
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$w5wFW-Peug5L7TC-VPFmCvlF4BI([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 4996
    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$wy1kOU9z83jNUQez4ncO4QHItIU(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 6

    .line 4204
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet;

    const/4 v1, 0x0

    aget-object p4, p4, v1

    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v5, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$yUSh2coUnyWFxzFg5y8c3HADa-A(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z6029uLjkfSiuWjHimoYCU9kjbI([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4067
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4068
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4070
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$zwULHCHSR6XhVIWPoGD8TwBS-pY(JI)V
    .locals 4

    .line 3981
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 3984
    new-instance p0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 3986
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 3987
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3988
    new-instance p2, Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity;-><init>(J)V

    .line 3989
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 3991
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3992
    const-string v2, "chat_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3993
    const-string/jumbo v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3994
    new-instance v2, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 3995
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 3996
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    return-void
.end method

.method static bridge synthetic -$$Nest$fgettransactionsLayout(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwoButtons(Lorg/telegram/ui/Stars/StarsIntroActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtons:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->expanded:Z

    const/4 v0, -0x1

    .line 700
    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_EXPAND:I

    const/4 v0, -0x2

    .line 701
    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_GIFT:I

    const/4 v0, -0x3

    .line 702
    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_SUBSCRIPTIONS_EXPAND:I

    const/4 v0, -0x4

    .line 703
    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_AFFILIATE:I

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->setWhiteBackground(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/StarsIntroActivity;)I
    .locals 0

    .line 167
    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->yOffset:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 167
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 5560
    sget v0, Lorg/telegram/messenger/R$string;->Gift2Availability:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object p0

    const/4 v0, 0x1

    .line 5561
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 5562
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v3, "x "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5563
    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, p0, v4, v1, p3}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5565
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    const v4, 0x3e570a3d    # 0.21f

    invoke-static {p3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    .line 5566
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    const v5, 0x3da3d70a    # 0.08f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    .line 5564
    invoke-virtual {v3, p3, v4}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    const/16 p3, 0x21

    .line 5568
    invoke-virtual {v2, v3, v1, v0, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5569
    sget-object p3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5570
    iget-boolean p3, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-nez p3, :cond_0

    .line 5571
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    iget-wide p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda50;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarsController;->getStarGift(JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void

    .line 5580
    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p1, :cond_2

    .line 5581
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz p1, :cond_1

    const-string p1, "Gift2QuantityIssuedNone"

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gift2QuantityIssued1"

    iget v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Gift2QuantityIssued2"

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5583
    :cond_2
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz p1, :cond_3

    const-string p1, "Gift2Availability2ValueNone"

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    int-to-long p2, p2

    const/16 v2, 0x2c

    invoke-static {p2, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "Gift2Availability4Value"

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 5019
    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5020
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5021
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 5022
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$15;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$15;-><init>(ILjava/lang/String;)V

    .line 5038
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 p2, 0x21

    const/4 v2, 0x0

    .line 5022
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5039
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public static formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x3f46e979    # 0.777f

    const/16 v1, 0x2c

    .line 5639
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5643
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v3, :cond_0

    .line 5644
    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v5, "0.################"

    invoke-direct {v3, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    .line 5645
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5646
    instance-of v4, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/16 v5, 0x21

    const-string v6, "."

    const-string v7, ""

    const-string v8, "-"

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    const-wide/16 v11, 0x0

    if-eqz v4, :cond_3

    .line 5647
    iget-wide v13, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/32 v15, 0x3b9aca00

    rem-long v17, v13, v15

    cmp-long v4, v17, v11

    if-eqz v4, :cond_1

    .line 5648
    sget-object v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    long-to-double v7, v13

    div-double/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 5649
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5651
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 5652
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v2, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    .line 5655
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v7, v8

    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    div-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3

    .line 5658
    :cond_3
    iget-wide v13, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-gez v4, :cond_4

    cmp-long v17, v13, v11

    if-lez v17, :cond_4

    const/16 v17, -0x1

    move-wide/from16 v20, v9

    move/from16 v9, v17

    move-wide/from16 v17, v20

    goto :goto_0

    :cond_4
    if-lez v4, :cond_5

    cmp-long v17, v13, v11

    if-gez v17, :cond_5

    move-wide/from16 v17, v9

    move/from16 v9, v16

    goto :goto_0

    :cond_5
    move-wide/from16 v17, v9

    move v9, v15

    :goto_0
    int-to-long v9, v9

    add-long/2addr v9, v13

    cmp-long v19, v13, v11

    if-nez v19, :cond_6

    if-gez v4, :cond_7

    :goto_1
    move/from16 v15, v16

    goto :goto_2

    :cond_6
    cmp-long v11, v13, v11

    if-gez v11, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v4, :cond_b

    .line 5661
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v15, :cond_8

    move-object v7, v8

    :cond_8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5662
    sget-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v7, v0

    if-gez v0, :cond_9

    add-double v7, v7, v17

    :cond_9
    div-double v7, v7, v17

    invoke-virtual {v2, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 5664
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a

    .line 5665
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 5666
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5667
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    return-object v3

    .line 5670
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v15, :cond_c

    move-object v7, v8

    :cond_c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3
.end method

.method public static formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x3f46e979    # 0.777f

    const/16 v1, 0x20

    .line 5677
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5681
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v3, :cond_0

    .line 5682
    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v5, "0.################"

    invoke-direct {v3, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    .line 5683
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5684
    instance-of v4, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/16 v5, 0x21

    const-string v6, "."

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    if-eqz v4, :cond_1

    .line 5685
    sget-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget-wide v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v9, v9

    div-double/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 5686
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5688
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 5689
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v2, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    .line 5692
    :cond_1
    iget-wide v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-gez v4, :cond_2

    cmp-long v15, v9, v11

    if-lez v15, :cond_2

    const/4 v15, -0x1

    move-wide/from16 v16, v7

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    cmp-long v15, v9, v11

    if-gez v15, :cond_3

    move-wide/from16 v16, v7

    move v15, v14

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v7

    move v15, v13

    :goto_0
    int-to-long v7, v15

    add-long/2addr v7, v9

    cmp-long v15, v9, v11

    if-nez v15, :cond_5

    if-gez v4, :cond_4

    :goto_1
    move v4, v14

    goto :goto_2

    :cond_4
    move v4, v13

    goto :goto_2

    :cond_5
    cmp-long v4, v9, v11

    if-gez v4, :cond_4

    goto :goto_1

    .line 5694
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    const-string v10, ""

    const-string v15, "-"

    if-gtz v9, :cond_9

    iget v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-eqz v9, :cond_9

    .line 5695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_6

    move-object v10, v15

    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5696
    sget-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v7, v0

    if-gez v0, :cond_7

    add-double v7, v7, v16

    :cond_7
    div-double v7, v7, v16

    invoke-virtual {v2, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 5698
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 5699
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 5700
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5701
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_8

    .line 5702
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x3

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5703
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/2addr v4, v14

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    return-object v3

    .line 5706
    :cond_9
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v0, v0, v11

    if-gtz v0, :cond_b

    .line 5707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_a

    move-object v10, v15

    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3

    .line 5709
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_c

    move-object v10, v15

    :cond_c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3
.end method

.method public static formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x3f46e979    # 0.777f

    const/16 v1, 0x2c

    .line 5716
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5720
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5721
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/16 v4, 0x21

    const-string v5, "."

    const-string v6, "0.################"

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    if-eqz v3, :cond_2

    .line 5722
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v3, :cond_0

    .line 5723
    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v9, Ljava/text/DecimalFormatSymbols;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v3, v6, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    .line 5724
    :cond_0
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget-wide v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v9, v9

    div-double/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 5725
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5727
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 5728
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v2

    .line 5731
    :cond_2
    iget-wide v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    if-gez v3, :cond_3

    cmp-long v15, v9, v13

    if-lez v15, :cond_3

    const/4 v15, -0x1

    move-wide/from16 v16, v7

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    cmp-long v15, v9, v13

    if-gez v15, :cond_4

    move-wide/from16 v16, v7

    move v15, v12

    goto :goto_0

    :cond_4
    move-wide/from16 v16, v7

    move v15, v11

    :goto_0
    int-to-long v7, v15

    add-long/2addr v7, v9

    cmp-long v15, v9, v13

    if-nez v15, :cond_5

    if-gez v3, :cond_6

    :goto_1
    move v11, v12

    goto :goto_2

    :cond_5
    cmp-long v13, v9, v13

    if-gez v13, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v3, :cond_b

    .line 5734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_7

    const-string v9, "-"

    goto :goto_3

    :cond_7
    const-string v9, ""

    :goto_3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    move/from16 v9, p2

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5735
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v3, :cond_8

    .line 5736
    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v7, Ljava/text/DecimalFormatSymbols;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v3, v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    .line 5737
    :cond_8
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v6, v0

    if-gez v0, :cond_9

    add-double v6, v6, v16

    :cond_9
    div-double v6, v6, v16

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 5739
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    .line 5740
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 5741
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5742
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/2addr v5, v12

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5744
    :cond_a
    const-string v0, " "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarsNano:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v2

    .line 5746
    :cond_b
    const-string v0, "Stars"

    long-to-int v1, v9

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method public static formatTON(J)Ljava/lang/String;
    .locals 6

    .line 5629
    sget-object v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat2:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 5630
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.####"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat2:Ljava/text/DecimalFormat;

    :cond_0
    const-wide/32 v0, 0x3b9aca00

    .line 5631
    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5632
    sget-object v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat2:Ljava/text/DecimalFormat;

    long-to-double p0, p0

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5634
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v3, p0, v4

    if-gez v3, :cond_2

    const-string v3, "-"

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const/16 v0, 0x2c

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGiftStarsEmoji(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 3572
    const-string p0, "2\u20e3"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x9c4

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    .line 3574
    const-string p0, "3\u20e3"

    return-object p0

    .line 3576
    :cond_1
    const-string p0, "4\u20e3"

    return-object p0
.end method

.method public static getPremiumGiftMonthsEmoji(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 3595
    const-string p0, "1\u20e3"

    return-object p0

    .line 3594
    :cond_0
    const-string p0, "5\u20e3"

    return-object p0

    .line 3593
    :cond_1
    const-string p0, "4\u20e3"

    return-object p0

    .line 3592
    :cond_2
    const-string p0, "3\u20e3"

    return-object p0

    .line 3591
    :cond_3
    const-string p0, "2\u20e3"

    return-object p0
.end method

.method public static getTonGiftEmoji(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x2540be400L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 3601
    const-string p0, "2\u20e3"

    return-object p0

    :cond_0
    const-wide v0, 0xba43b7400L

    cmp-long p0, p0, v0

    if-gtz p0, :cond_1

    .line 3603
    const-string p0, "1\u20e3"

    return-object p0

    .line 3605
    :cond_1
    const-string p0, "3\u20e3"

    return-object p0
.end method

.method public static getTransactionTitle(IZLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)Ljava/lang/CharSequence;
    .locals 5

    .line 3413
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_drop_original_details:Z

    if-eqz v0, :cond_0

    .line 3414
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionRemovedDescription:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3416
    :cond_0
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->posts_search:Z

    if-eqz v0, :cond_1

    .line 3417
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionPostsSearch:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3419
    :cond_1
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    if-eqz v0, :cond_2

    .line 3420
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionPremiumGift:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3422
    :cond_2
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->phonegroup_message:Z

    if-eqz v0, :cond_4

    .line 3423
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    if-eqz p0, :cond_3

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionLiveStoryReactionFee:I

    goto :goto_0

    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionLiveStoryMessageFee:I

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3425
    :cond_4
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v0, :cond_5

    .line 3426
    const-string p0, "StarsTransactionMessageFee"

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_messages:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3428
    :cond_5
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    if-eqz v0, :cond_6

    .line 3429
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionFloodskip:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3431
    :cond_6
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3432
    sget p0, Lorg/telegram/messenger/R$string;->StarMediaPurchase:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3434
    :cond_7
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3435
    iget v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    .line 3438
    sget p0, Lorg/telegram/messenger/R$string;->StarTransactionCommission:I

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    invoke-static {p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3440
    :cond_9
    :goto_1
    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_12

    .line 3441
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_prepaid_upgrade:Z

    if-eqz p0, :cond_a

    .line 3442
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionPrepaidUpgrade:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3443
    :cond_a
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz p0, :cond_e

    .line 3444
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_auction_bid:Z

    if-eqz p0, :cond_b

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedAuctionBid:I

    goto :goto_2

    :cond_b
    iget-wide p0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long p0, p0, v3

    if-lez p0, :cond_d

    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz p0, :cond_c

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedUpgrade:I

    goto :goto_2

    :cond_c
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedSent:I

    goto :goto_2

    :cond_d
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedConverted:I

    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3446
    :cond_e
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_auction_bid:Z

    if-eqz p0, :cond_f

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionAuctionBid:I

    goto :goto_3

    :cond_f
    iget-wide p0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long p0, p0, v3

    if-lez p0, :cond_10

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionConverted:I

    goto :goto_3

    :cond_10
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz p0, :cond_11

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionUpgraded:I

    goto :goto_3

    :cond_11
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionSent:I

    :goto_3
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3449
    :cond_12
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v0, :cond_15

    .line 3450
    iget v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    const v2, 0x278d00

    if-ne v0, v2, :cond_13

    .line 3451
    sget p0, Lorg/telegram/messenger/R$string;->StarSubscriptionPurchase:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/16 v2, 0x12c

    if-ne v0, v2, :cond_14

    .line 3454
    const-string p0, "5-minute subscription fee"

    return-object p0

    :cond_14
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_15

    .line 3457
    const-string p0, "Minute subscription fee"

    return-object p0

    :cond_15
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_16

    .line 3461
    sget p0, Lorg/telegram/messenger/R$string;->StarsGiveawayPrizeReceived:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3463
    :cond_16
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v0, :cond_19

    .line 3464
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_18

    .line 3465
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    .line 3466
    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    if-eqz p0, :cond_17

    sget p0, Lorg/telegram/messenger/R$string;->StarsGiftSent:I

    goto :goto_4

    :cond_17
    sget p0, Lorg/telegram/messenger/R$string;->StarsGiftReceived:I

    :goto_4
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3468
    :cond_18
    sget p0, Lorg/telegram/messenger/R$string;->StarsGiftReceived:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3470
    :cond_19
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    if-eqz p0, :cond_1a

    return-object p0

    .line 3473
    :cond_1a
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    cmp-long p0, v0, v3

    if-eqz p0, :cond_1d

    if-ltz p0, :cond_1b

    .line 3476
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3478
    :cond_1b
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-nez p0, :cond_1c

    .line 3479
    const-string p0, ""

    return-object p0

    :cond_1c
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p0

    .line 3481
    :cond_1d
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v0, :cond_21

    if-nez p1, :cond_20

    .line 3482
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz p0, :cond_1e

    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_5

    :cond_1e
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_5

    :cond_1f
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionFragment:I

    goto :goto_6

    :cond_20
    :goto_5
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionWithdrawFragment:I

    :goto_6
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3483
    :cond_21
    instance-of p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz p1, :cond_22

    .line 3484
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionBot:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3485
    :cond_22
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAds;

    if-eqz p0, :cond_23

    .line 3486
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionAds:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3488
    :cond_23
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnsupported:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 0

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->onItemClick(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 365
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 366
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 369
    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 389
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 3

    .line 400
    new-instance p1, Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsActivity;-><init>(IJ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 3

    .line 414
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    .line 415
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void
.end method

.method private synthetic lambda$onItemClick$8(Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5

    .line 765
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 767
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget v2, Lorg/telegram/messenger/R$string;->StarsAcquired:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p1, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "StarsAcquiredInfo"

    invoke-static {v3, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    .line 769
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 771
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateButtonsLayouts$6(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateButtonsLayouts$7(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 1

    .line 618
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$4;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static openConfirmPurchaseSheet(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;JLjava/lang/String;JLorg/telegram/tgnet/TLRPC$WebDocument;ILorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    move-wide/from16 v9, p7

    .line 2036
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2038
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2040
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 2041
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 2042
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v14, v3, v12, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2044
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x28

    .line 2045
    invoke-static {v0, v4, v12}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x42a00000    # 80.0f

    move/from16 v16, v2

    if-eqz v8, :cond_4

    .line 2047
    iget-object v2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v2, :cond_4

    .line 2048
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$6;

    invoke-direct {v2, v0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$6;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    const/high16 v16, 0x41c00000    # 24.0f

    .line 2086
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 2087
    iget-object v4, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    .line 2088
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2089
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 2091
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v5, :cond_0

    .line 2092
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    .line 2093
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    :goto_0
    move v5, v6

    goto :goto_1

    .line 2094
    :cond_0
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v5, :cond_2

    .line 2095
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2096
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v5, :cond_1

    .line 2097
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5, v7, v15}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    goto :goto_0

    .line 2098
    :cond_1
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v5, :cond_2

    .line 2099
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5, v7, v15}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v16, v3

    move-object v3, v4

    .line 2102
    const-string v4, "80_80_b2"

    move/from16 v19, v5

    const/4 v5, 0x0

    move-object/from16 v18, v11

    move-object/from16 v12, v16

    const/16 v11, 0x11

    const/16 v15, 0x50

    const/high16 v17, 0x41a00000    # 20.0f

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v12, v3

    move-object/from16 v18, v11

    const/16 v11, 0x11

    const/16 v15, 0x50

    const/high16 v17, 0x41a00000    # 20.0f

    .line 2104
    :goto_2
    invoke-static {v15, v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/4 v5, -0x1

    goto/16 :goto_4

    :cond_4
    move-object v12, v3

    move-object/from16 v18, v11

    const/16 v11, 0x11

    const/16 v15, 0x50

    const/high16 v17, 0x41a00000    # 20.0f

    if-nez p9, :cond_5

    .line 2106
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 2107
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 2108
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 2109
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2110
    invoke-virtual {v2, v13, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 2111
    invoke-static {v15, v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 2113
    :cond_5
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2114
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 2115
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 2116
    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v23

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v24, "80_80"

    const/16 v25, 0x0

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v27}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    const/16 v4, 0x30

    .line 2117
    invoke-static {v15, v15, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x57

    .line 2118
    invoke-static {v15, v3, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2120
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2121
    const-string v4, "fonts/num.otf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v5, 0x1

    .line 2122
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, -0x1

    .line 2123
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XTR "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v6, v9

    int-to-long v6, v6

    const/16 v15, 0x2c

    invoke-static {v6, v7, v15}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v6, 0x3f59999a    # 0.85f

    invoke-static {v4, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x40aa8f5c    # 5.33f

    .line 2125
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2126
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v6, -0x114bfe

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2127
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2128
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x3faa3d71    # 1.33f

    .line 2129
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v4, v7, v15, v6, v11}, Landroid/view/View;->setPadding(IIII)V

    const/16 v6, 0x10

    const/16 v7, 0x77

    const/4 v11, -0x2

    .line 2130
    invoke-static {v11, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x419547ae    # 18.66f

    const/16 v6, 0x51

    const/high16 v7, -0x40000000    # -2.0f

    .line 2131
    invoke-static {v7, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2134
    :goto_4
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    move/from16 v3, p2

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2135
    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2136
    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda46;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v26, -0x3f000000    # -8.0f

    const/16 v27, 0x0

    const/16 v21, -0x2

    const/high16 v22, -0x40000000    # -2.0f

    const/16 v23, 0x35

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 2146
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x75

    const/4 v4, 0x7

    .line 2148
    invoke-static {v5, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2150
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move/from16 v4, v17

    const/4 v6, 0x1

    .line 2151
    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2152
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2153
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-lez p10, :cond_7

    if-eqz p9, :cond_6

    move-object/from16 v6, p6

    goto :goto_5

    .line 2155
    :cond_6
    sget v6, Lorg/telegram/messenger/R$string;->StarsConfirmSubscriptionTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v6, v7, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    if-eqz p9, :cond_8

    move-object/from16 v6, p6

    goto :goto_6

    .line 2157
    :cond_8
    sget v6, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2159
    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/16 v11, 0x11

    .line 2160
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p9, :cond_9

    const/4 v6, -0x8

    :goto_8
    move/from16 v25, v6

    goto :goto_9

    :cond_9
    const/16 v6, 0x8

    goto :goto_8

    :goto_9
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, -0x2

    const/16 v22, -0x2

    const/16 v23, 0x1

    const/16 v24, 0x0

    .line 2161
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v14, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41600000    # 14.0f

    if-eqz p9, :cond_a

    .line 2164
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 2165
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41e00000    # 28.0f

    .line 2166
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v11, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-static {v7, v11}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2167
    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 2168
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 2169
    new-instance v11, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 2170
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2171
    invoke-virtual {v7, v13, v11}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v11, 0x1c

    .line 2172
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2173
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x41500000    # 13.0f

    const/4 v12, 0x1

    .line 2174
    invoke-virtual {v7, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2175
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v11, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2176
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v26, 0xa

    const/16 v27, 0x0

    const/16 v21, -0x2

    const/16 v22, -0x2

    const/16 v23, 0x10

    const/16 v24, 0x6

    const/16 v25, 0x0

    .line 2177
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v26, 0x0

    const/16 v27, 0x2

    const/16 v22, 0x1c

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x8

    .line 2178
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2181
    :cond_a
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    .line 2182
    invoke-virtual {v6, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2183
    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x2

    if-eqz v8, :cond_1d

    .line 2184
    iget-object v7, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v7, :cond_1d

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v7, :cond_1d

    .line 2185
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    .line 2186
    iget-object v7, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v7, :cond_b

    .line 2187
    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    :cond_b
    const-wide/16 v15, 0x0

    cmp-long v7, v11, v15

    if-gez v7, :cond_c

    .line 2189
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v21

    cmp-long v7, v21, v15

    if-lez v7, :cond_c

    .line 2190
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 2191
    iget-boolean v13, v7, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v13, :cond_c

    .line 2192
    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :cond_c
    cmp-long v7, v11, v15

    if-ltz v7, :cond_d

    .line 2198
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2199
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_f

    .line 2200
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_c

    .line 2202
    :cond_d
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-nez v3, :cond_e

    .line 2203
    const-string v3, ""

    :goto_a
    move-object v7, v3

    goto :goto_b

    :cond_e
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_a

    :cond_f
    :goto_b
    const/4 v3, 0x0

    .line 2208
    :goto_c
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2209
    :goto_d
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v11, v15, :cond_13

    .line 2210
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 2212
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v2, :cond_10

    .line 2213
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    .line 2214
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_e

    .line 2215
    :cond_10
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v2, :cond_11

    .line 2216
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2217
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_12

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_12
    add-int/lit8 v13, v13, 0x1

    :goto_f
    add-int/lit8 v11, v11, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    goto :goto_d

    .line 2224
    :cond_13
    const-string v2, "StarsConfirmPurchaseMedia_Photos"

    const-string v8, "StarsConfirmPurchaseMediaOne2"

    const-string v11, "StarsConfirmPurchaseMediaBotOne2"

    if-nez v12, :cond_16

    if-eqz v3, :cond_14

    move-object v8, v11

    :cond_14
    long-to-int v3, v9

    const/4 v15, 0x1

    if-ne v13, v15, :cond_15

    .line 2225
    sget v2, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SinglePhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    goto :goto_10

    :cond_15
    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v2, v13, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v11

    aput-object v7, v4, v15

    invoke-static {v8, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_16
    const/4 v15, 0x1

    .line 2226
    const-string v5, "StarsConfirmPurchaseMedia_Videos"

    if-nez v13, :cond_19

    if-eqz v3, :cond_17

    move-object v8, v11

    :cond_17
    long-to-int v2, v9

    if-ne v12, v15, :cond_18

    .line 2227
    sget v3, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SingleVideo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    goto :goto_11

    :cond_18
    const/4 v11, 0x0

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5, v12, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_11
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v11

    aput-object v7, v4, v15

    invoke-static {v8, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_19
    if-eqz v3, :cond_1a

    .line 2229
    const-string v3, "StarsConfirmPurchaseMediaBotTwo2"

    goto :goto_12

    :cond_1a
    const-string v3, "StarsConfirmPurchaseMediaTwo2"

    :goto_12
    long-to-int v8, v9

    if-ne v13, v15, :cond_1b

    sget v2, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SinglePhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 p9, v4

    const/4 v11, 0x0

    goto :goto_13

    :cond_1b
    move/from16 p9, v4

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v2, v13, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_13
    if-ne v12, v15, :cond_1c

    sget v4, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SingleVideo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1c
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v5, v12, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_14
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v11

    aput-object v4, v5, v15

    aput-object v7, v5, p9

    invoke-static {v3, v8, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2231
    :goto_15
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_1d
    move/from16 p9, v4

    if-lez p10, :cond_1e

    long-to-int v2, v9

    .line 2234
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p9

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object p6, v4, v20

    const/4 v12, 0x1

    aput-object v3, v4, v12

    const-string v3, "StarsConfirmSubscriptionText2"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_1e
    move/from16 v4, p9

    const/4 v12, 0x1

    const/16 v20, 0x0

    long-to-int v2, v9

    .line 2236
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p6, v4, v20

    aput-object v3, v4, v12

    const-string v3, "StarsConfirmPurchaseText2"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2239
    :goto_16
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/16 v11, 0x11

    .line 2240
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v27, 0x0

    const/16 v28, 0x12

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x6

    .line 2241
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2243
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-lez p10, :cond_1f

    .line 2245
    const-string v3, "StarsConfirmSubscriptionButton"

    long-to-int v4, v9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_17

    :cond_1f
    const/4 v11, 0x0

    .line 2247
    const-string v3, "StarsConfirmPurchaseButton"

    long-to-int v4, v9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :goto_17
    const/high16 v3, 0x42400000    # 48.0f

    const/4 v5, -0x1

    .line 2249
    invoke-static {v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2251
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2252
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2253
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v12, 0x1

    .line 2254
    invoke-virtual {v3, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez p10, :cond_20

    .line 2255
    sget v1, Lorg/telegram/messenger/R$string;->StarsConfirmSubscriptionTOS:I

    goto :goto_18

    :cond_20
    sget v1, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseTOS:I

    :goto_18
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x11

    .line 2258
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p0, v4

    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 p3, v7

    .line 2259
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v18

    .line 2261
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2262
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 2264
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda48;

    move-object/from16 v3, p11

    invoke-direct {v1, v3, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2282
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda49;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda49;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2288
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 2289
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method public static openStarsChannelInviteSheet(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 2301
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2303
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 2304
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 2305
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v8, v4, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 2307
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x28

    .line 2308
    invoke-static {v0, v8, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v8

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2310
    new-instance v8, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x42a00000    # 80.0f

    .line 2311
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 2312
    new-instance v11, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 2313
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setPeerColor(I)V

    .line 2314
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setText(Ljava/lang/String;)V

    .line 2315
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v12, :cond_0

    .line 2316
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v12, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    .line 2317
    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v12, "80_80"

    invoke-virtual {v8, v9, v12, v11, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 2319
    :cond_0
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/16 v9, 0x50

    const/16 v11, 0x11

    .line 2322
    invoke-static {v9, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2325
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2326
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v13, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2328
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2329
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x1a

    .line 2330
    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v14, 0x41d00000    # 26.0f

    .line 2331
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 2332
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setTranslationY(F)V

    const v15, 0x3f99999a    # 1.2f

    .line 2333
    invoke-virtual {v13, v15}, Landroid/view/View;->setScaleX(F)V

    .line 2334
    invoke-virtual {v13, v15}, Landroid/view/View;->setScaleY(F)V

    .line 2336
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2337
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2338
    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2339
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v13, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 2340
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v13, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 2342
    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    move/from16 v9, p2

    invoke-direct {v8, v0, v9, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2343
    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2344
    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda85;

    invoke-direct {v9, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v18, -0x3f000000    # -8.0f

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x35

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2354
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x75

    const/4 v9, 0x7

    .line 2356
    invoke-static {v10, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2358
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 2359
    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2360
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2361
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2362
    sget v9, Lorg/telegram/messenger/R$string;->StarsSubscribeTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2363
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    .line 2364
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2366
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 2367
    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2368
    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2369
    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v14, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const v15, 0x278d00

    if-ne v14, v15, :cond_1

    .line 2370
    iget-wide v13, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    long-to-int v13, v13

    iget-object v14, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v14, v15, v4

    const-string v14, "StarsSubscribeText"

    invoke-static {v14, v13, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const/16 v15, 0x12c

    if-ne v14, v15, :cond_2

    .line 2372
    const-string v14, "5 minutes"

    goto :goto_1

    :cond_2
    const-string v14, "a minute"

    .line 2373
    :goto_1
    iget-wide v9, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    long-to-int v9, v9

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v10, v13, v4

    aput-object v14, v13, v6

    const-string v10, "StarsSubscribeTextTest"

    invoke-static {v10, v9, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2375
    :goto_2
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2376
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v21, 0x0

    const/16 v22, 0x16

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x6

    .line 2377
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2379
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2380
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 2381
    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2382
    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2383
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v2, v8, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2384
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v21, 0x0

    const/16 v22, 0x16

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x6

    .line 2385
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2388
    :cond_3
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2389
    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscribeButton:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v4, 0x30

    const/4 v15, -0x1

    .line 2390
    invoke-static {v15, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2392
    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2393
    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscribeInfo:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda86;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda86;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2396
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41500000    # 13.0f

    .line 2397
    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2398
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2399
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v18, 0xe

    const/16 v19, 0x6

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v16, 0xe

    const/16 v17, 0xe

    .line 2400
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2402
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2403
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 2405
    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda87;

    move-object/from16 v4, p4

    invoke-direct {v3, v4, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2423
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda88;

    move-object/from16 v3, p5

    invoke-direct {v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda88;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2429
    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 2430
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 2431
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2432
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2435
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method public static replaceDiamond(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 3294
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceDiamond(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceDiamond(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .line 3298
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceDiamond(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceDiamond(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3304
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 3305
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3307
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 3309
    :goto_0
    new-instance p0, Landroid/text/SpannableString;

    const-string/jumbo v1, "\ud83d\udc8e\u00a0"

    invoke-direct {p0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 3311
    aget-object v2, p2, v1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3314
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->diamond:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p2, :cond_3

    .line 3316
    aput-object v2, p2, v1

    .line 3319
    :cond_3
    :goto_1
    iput-boolean v1, v2, Lorg/telegram/ui/Components/ColoredImageSpan;->recolorDrawable:Z

    .line 3320
    invoke-virtual {v2, p3, p4}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    .line 3321
    iput p5, v2, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    .line 3322
    invoke-virtual {v2, p1, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 3323
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 p2, 0x21

    invoke-virtual {p0, v2, v1, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3324
    const-string/jumbo p1, "\ud83d\udc8e\ufe0f"

    const-string/jumbo p2, "\ud83d\udc8e"

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3325
    const-string/jumbo p1, "\ud83d\udc8e "

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3326
    invoke-static {p2, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3327
    const-string p1, "XTR "

    const-string p2, "XTR"

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3328
    invoke-static {p2, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const v0, 0x3f90a3d7    # 1.13f

    .line 3223
    invoke-static {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3235
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 3247
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 3251
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3333
    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 3231
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const v0, 0x3f90a3d7    # 1.13f

    .line 3219
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3227
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 3239
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3261
    :cond_0
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 3262
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3264
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 3266
    :goto_0
    const-string/jumbo p1, "\u2b50"

    if-eqz p0, :cond_2

    const-string v1, "TON"

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 3267
    :goto_1
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u00a0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 3269
    aget-object v3, p3, v1

    if-eqz v3, :cond_3

    goto :goto_3

    .line 3272
    :cond_3
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    if-eqz p0, :cond_4

    sget v4, Lorg/telegram/messenger/R$drawable;->ton:I

    goto :goto_2

    :cond_4
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    :goto_2
    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p3, :cond_5

    .line 3274
    aput-object v3, p3, v1

    .line 3277
    :cond_5
    :goto_3
    invoke-virtual {v3, p4, p5}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    .line 3278
    iput p6, v3, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    if-eqz p0, :cond_6

    const p0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, p0

    .line 3280
    invoke-virtual {v3, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    goto :goto_4

    .line 3282
    :cond_6
    invoke-virtual {v3, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 3284
    :goto_4
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 p2, 0x21

    invoke-virtual {v2, v3, v1, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3285
    const-string/jumbo p0, "\u2b50\ufe0f"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3286
    const-string/jumbo p0, "\u2b50 "

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3287
    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3288
    const-string p0, "XTR "

    const-string p1, "XTR"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3289
    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3339
    :cond_0
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 3340
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3342
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 3345
    aget-object v1, p2, p1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 3348
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    if-eqz p0, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->ton:I

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    :goto_1
    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v2, 0x3f90a3d7    # 1.13f

    const v3, 0x3e6353f8    # 0.222f

    if-eqz p0, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-eqz p0, :cond_5

    move v2, v3

    .line 3349
    :cond_5
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    :goto_3
    if-eqz p2, :cond_6

    .line 3352
    aput-object v1, p2, p1

    .line 3354
    :cond_6
    new-instance p0, Landroid/text/SpannableString;

    const-string/jumbo p2, "\u2b50 "

    invoke-direct {p0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3355
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x21

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3356
    const-string/jumbo p1, "\u2b50\ufe0f"

    const-string/jumbo v1, "\u2b50"

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3357
    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3358
    invoke-static {v1, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3359
    const-string p1, "XTR "

    const-string p2, "XTR"

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3360
    invoke-static {p2, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3364
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3373
    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 3370
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 3376
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(ZLjava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3367
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3381
    :cond_0
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 3382
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3384
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 3386
    :goto_0
    const-string/jumbo p1, "\u2b50"

    if-eqz p0, :cond_2

    const-string v1, "TON"

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz p0, :cond_3

    .line 3387
    sget v2, Lorg/telegram/messenger/R$drawable;->ton:I

    goto :goto_2

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    .line 3388
    :goto_2
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 3390
    aget-object v4, p3, v1

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 3392
    array-length v4, p3

    if-lez v4, :cond_5

    .line 3393
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    aput-object v4, p3, v1

    goto :goto_3

    .line 3395
    :cond_5
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    :goto_3
    if-eqz p0, :cond_6

    const p0, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p2, p0

    goto :goto_4

    .line 3400
    :cond_6
    iput-boolean v1, v4, Lorg/telegram/ui/Components/ColoredImageSpan;->recolorDrawable:Z

    .line 3402
    :goto_4
    invoke-virtual {v4, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 3403
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 p2, 0x21

    invoke-virtual {v3, v4, v1, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3404
    const-string/jumbo p0, "\u2b50\ufe0f"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3405
    const-string/jumbo p0, "\u2b50 "

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3406
    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3407
    const-string p0, "XTR "

    const-string p1, "XTR"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3408
    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;
    .locals 0

    .line 3581
    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getGiftStarsEmoji(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 3614
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Z)Ljava/lang/Runnable;
    .locals 7

    const/4 v0, 0x1

    .line 3618
    new-array v6, v0, [Z

    .line 3619
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v3

    .line 3620
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda41;

    move-object v5, p1

    move-object v4, p2

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda41;-><init>(ZILjava/lang/String;Lorg/telegram/messenger/ImageReceiver;[Z)V

    .line 3692
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3693
    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    if-eqz v2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateTonGiftStickers:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    :goto_0
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda42;

    invoke-direct {p3, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3694
    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda43;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda43;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p0, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p0

    .line 3695
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda44;

    invoke-direct {p2, p1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda44;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object p2
.end method

.method public static setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-nez v0, :cond_0

    .line 5469
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void

    .line 5472
    :cond_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 5473
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    .line 5475
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5477
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p0

    .line 5474
    invoke-virtual/range {v6 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5488
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    return-void
.end method

.method public static setPremiumGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;I)Ljava/lang/Runnable;
    .locals 0

    .line 3610
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getPremiumGiftMonthsEmoji(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static setTonGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;
    .locals 0

    .line 3585
    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getTonGiftEmoji(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static showBoostsSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stories$Boost;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 28

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    if-eqz v7, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 4914
    :cond_0
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v11, 0x1

    .line 4915
    new-array v12, v11, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 4917
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4918
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 4919
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v13, v10, v2, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 4920
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4921
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 4923
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4924
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4925
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v19, 0x0

    const/16 v20, 0xa

    const/4 v14, -0x1

    const/16 v15, 0x96

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 4926
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v13, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x46

    .line 4928
    invoke-static {v0, v6, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v6

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, -0x1

    .line 4929
    invoke-static {v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4931
    new-instance v14, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v15, 0x2

    invoke-direct {v14, v0, v11, v15}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    move/from16 v17, v3

    .line 4932
    iget-object v3, v14, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v15, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    .line 4933
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v15, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    .line 4934
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 4935
    invoke-virtual {v14, v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    const/16 v24, 0x0

    const/high16 v25, 0x41c00000    # 24.0f

    const/16 v19, 0xaa

    const/high16 v20, 0x432a0000    # 170.0f

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/high16 v23, 0x42000000    # 32.0f

    .line 4936
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4937
    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 4939
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4940
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4941
    invoke-virtual {v2, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4942
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v15, 0x11

    .line 4943
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 4944
    iget-wide v10, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    long-to-int v3, v10

    const-string v10, "BoostStars"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v26, 0x14

    const/16 v27, 0x4

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x11

    const/16 v24, 0x14

    const/16 v25, 0x0

    .line 4945
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4947
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4948
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v3, -0x698401

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    .line 4949
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x413547ae    # 11.33f

    const/4 v3, 0x1

    .line 4950
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4951
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v3, 0x410547ae    # 8.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4952
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 4953
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4954
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :cond_1
    const-string v11, "BoostingBoostsCount"

    invoke-static {v11, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4955
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->mini_boost_badge:I

    const/4 v11, 0x2

    invoke-direct {v3, v6, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    const v6, 0x3f28f5c3    # 0.66f

    .line 4956
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/16 v6, 0x21

    const/4 v11, 0x1

    const/4 v15, 0x0

    .line 4957
    invoke-virtual {v1, v3, v15, v11, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4958
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v26, 0x14

    const/16 v27, 0x4

    const/16 v21, -0x2

    const/16 v22, 0x14

    const/16 v23, 0x11

    const/16 v24, 0x14

    const/16 v25, 0x4

    .line 4959
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4961
    new-instance v1, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4963
    sget v2, Lorg/telegram/messenger/R$string;->BoostFrom:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda53;

    invoke-direct {v6, v12, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda53;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4969
    sget v2, Lorg/telegram/messenger/R$string;->BoostGift:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v14

    iget-wide v14, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    long-to-int v6, v14

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v10, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4970
    iget v2, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    if-eqz v2, :cond_2

    .line 4971
    sget v2, Lorg/telegram/messenger/R$string;->BoostReason:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/R$string;->BoostReasonGiveaway:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda54;

    invoke-direct {v10, v12, v4, v5, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda54;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stories$Boost;)V

    invoke-virtual {v1, v2, v6, v10}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4978
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->BoostDate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget v10, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    int-to-long v10, v10

    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v10, Ljava/util/Date;

    iget v11, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    move-wide/from16 p1, v14

    int-to-long v14, v11

    mul-long v14, v14, p1

    invoke-direct {v10, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x2

    new-array v10, v11, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v5, v10, v19

    const/16 v20, 0x1

    aput-object v6, v10, v20

    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4979
    sget v2, Lorg/telegram/messenger/R$string;->BoostUntil:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget v10, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v10, v10

    mul-long v10, v10, p1

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v10, Ljava/util/Date;

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v14, v7

    mul-long v14, v14, p1

    invoke-direct {v10, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v5, v7, v19

    const/16 v20, 0x1

    aput-object v6, v7, v20

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    const/high16 v25, 0x41800000    # 16.0f

    const/16 v26, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41880000    # 17.0f

    .line 4981
    invoke-static/range {v21 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4983
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4984
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4985
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v11, 0x1

    .line 4986
    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4987
    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda55;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda55;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    .line 4990
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v24, 0x41600000    # 14.0f

    const/high16 v25, 0x40e00000    # 7.0f

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/high16 v22, 0x41600000    # 14.0f

    const/high16 v23, 0x41700000    # 15.0f

    .line 4991
    invoke-static/range {v20 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4993
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4994
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v1, v0, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 4995
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda56;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda56;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    move/from16 p4, v0

    move/from16 p5, v2

    move/from16 p0, v4

    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 p3, v7

    .line 4998
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5000
    invoke-virtual {v9, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 5001
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v12, v15

    .line 5002
    iput-boolean v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 5004
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 5005
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 5006
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5007
    aget-object v1, v12, v15

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5009
    :cond_3
    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 5010
    aget-object v0, v12, v15

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 5011
    aget-object v0, v12, v15

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda57;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 5015
    aget-object v0, v12, v15

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showGiftResellPriceSheet(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 5238
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showGiftResellPriceSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showGiftResellPriceSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 6

    if-nez p3, :cond_0

    if-nez p2, :cond_1

    .line 5245
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object p2, p2, Lorg/telegram/messenger/AppGlobalConfig;->starsStarGiftResaleAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {p2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    .line 5244
    invoke-static {p2, p3, v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromDecimal(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p3

    :cond_0
    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 5248
    :cond_1
    iget-boolean p3, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    if-eqz p3, :cond_2

    .line 5249
    sget-object p3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getResellAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p3

    goto :goto_0

    .line 5251
    :cond_2
    sget-object p3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getResellAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p3

    goto :goto_0

    :goto_1
    const/4 p2, 0x1

    .line 5255
    new-array p2, p2, [Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;

    .line 5256
    new-instance v0, Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda83;

    invoke-direct {v5, p4, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;)V

    move-object v1, p0

    move v3, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    .line 5257
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/SellGiftEnterPriceSheet;->show()V

    .line 5258
    aget-object p0, p2, p0

    return-object p0
.end method

.method public static showMediaPriceSheet(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 5044
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5047
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 5048
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5049
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5050
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 5051
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 5053
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5054
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5055
    sget v8, Lorg/telegram/messenger/R$string;->PaidContentTitle:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 5056
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5057
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x40800000    # 4.0f

    const/high16 v16, 0x41900000    # 18.0f

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x0

    .line 5058
    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5060
    new-instance v15, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 5061
    new-instance v13, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5062
    invoke-virtual {v13, v5}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceForceUseCenter(Z)V

    .line 5063
    sget v7, Lorg/telegram/messenger/R$string;->PaidContentPriceTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    const/high16 v7, 0x42100000    # 36.0f

    .line 5064
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setLeftPadding(F)V

    .line 5065
    invoke-static {v9, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 5066
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 5067
    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v7, 0x0

    .line 5068
    invoke-virtual {v15, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v8, 0x41900000    # 18.0f

    .line 5069
    invoke-virtual {v15, v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 5070
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5071
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    .line 5072
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v15, v9, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    const/4 v8, 0x2

    .line 5073
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 5074
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5075
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 5076
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 5077
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v15, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 5078
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    :goto_0
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 5079
    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda59;

    invoke-direct {v8, v13, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v15, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5080
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5081
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5082
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 5083
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5084
    sget v10, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/16 v19, 0x13

    const/16 v20, 0xe

    const/16 v21, 0x0

    .line 5085
    invoke-static/range {v16 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x77

    const/4 v11, -0x1

    const/4 v12, -0x2

    .line 5086
    invoke-static {v11, v12, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5087
    invoke-virtual {v13, v15}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    const/16 v9, 0x30

    .line 5088
    invoke-static {v11, v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v13, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5089
    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5091
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5092
    invoke-virtual {v8, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5093
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v21, 0x41600000    # 14.0f

    const/16 v22, 0x0

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x15

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 5094
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v13, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5096
    new-instance v6, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 5097
    sget v10, Lorg/telegram/messenger/R$string;->PaidContentInfo:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-static {v10, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 5100
    invoke-virtual {v6, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5101
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v10, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5102
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v10, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v20, 0x41600000    # 14.0f

    const/high16 v21, 0x41c00000    # 24.0f

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/high16 v18, 0x41600000    # 14.0f

    const/high16 v19, 0x40400000    # 3.0f

    .line 5103
    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5105
    new-instance v14, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v16, 0x0

    cmp-long v6, p1, v16

    if-lez v6, :cond_1

    .line 5106
    sget v10, Lorg/telegram/messenger/R$string;->PaidContentUpdateButton:I

    goto :goto_1

    :cond_1
    sget v10, Lorg/telegram/messenger/R$string;->PaidContentButton:I

    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 5107
    invoke-static {v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v6, :cond_2

    if-eqz p3, :cond_2

    .line 5111
    new-instance v7, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v7, v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5112
    sget v0, Lorg/telegram/messenger/R$string;->PaidContentClearButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v3, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;ZZ)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x30

    const/16 v18, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    .line 5113
    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5118
    :cond_2
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 5119
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    new-array v1, v5, [Lorg/telegram/ui/ActionBar/BottomSheet;

    aput-object v0, v1, v3

    if-gtz v6, :cond_3

    .line 5121
    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5122
    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$16;

    move/from16 v16, p3

    move-object/from16 v18, v8

    move-object/from16 v17, v14

    move-object v12, v15

    move-wide/from16 v14, p1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/Stars/StarsIntroActivity$16;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;JZLorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/widget/TextView;)V

    move-object v15, v12

    move-object/from16 v14, v17

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5168
    new-array v12, v5, [Z

    aput-boolean v3, v12, v3

    .line 5169
    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda61;

    move-object/from16 v13, p4

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda61;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5186
    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda62;

    move-object v13, v15

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, p4

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda62;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object/from16 v24, v15

    move-object v15, v14

    move-object/from16 v14, v24

    invoke-virtual {v14, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v7, :cond_4

    .line 5201
    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda63;

    move-object/from16 v13, p4

    move-object v14, v7

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda63;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, v16

    .line 5217
    :goto_3
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 5218
    aget-object v1, v0, v3

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda64;

    invoke-direct {v2, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5221
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 5223
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 5225
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_5

    .line 5226
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v3

    .line 5228
    :goto_4
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda65;

    invoke-direct {v2, v0, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda65;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    if-eqz v1, :cond_6

    const-wide/16 v4, 0xc8

    goto :goto_5

    :cond_6
    const-wide/16 v4, 0x50

    :goto_5
    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5234
    aget-object v0, v0, v3

    return-object v0
.end method

.method public static showSoldOutGiftSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 5495
    :cond_0
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5498
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 5499
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 5500
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v5, v8, v10, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 5501
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5502
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5504
    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 5505
    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    const/16 v10, 0xa0

    invoke-static {v8, v1, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/16 v11, 0xa0

    const/16 v12, 0xa0

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, -0x8

    .line 5506
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5508
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5509
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5510
    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5511
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x11

    .line 5512
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 5513
    sget v9, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0x14

    const/16 v16, 0x4

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x11

    const/16 v13, 0x14

    .line 5514
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5516
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 5517
    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5518
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5519
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 5520
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5521
    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetSubtitle:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x14

    const/4 v15, 0x4

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x11

    const/16 v12, 0x14

    const/4 v13, 0x0

    .line 5522
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5524
    new-instance v7, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5526
    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->first_sale_date:I

    if-eqz v8, :cond_1

    .line 5527
    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetFirstSale:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->first_sale_date:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/TableView;->addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;

    .line 5529
    :cond_1
    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->last_sale_date:I

    if-eqz v8, :cond_2

    .line 5530
    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetLastSale:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->last_sale_date:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/TableView;->addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;

    .line 5532
    :cond_2
    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetValue:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u2b50\ufe0f "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    const/16 v12, 0x2c

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v9, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 5533
    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v8, :cond_3

    move/from16 v8, p1

    .line 5534
    invoke-static {v7, v8, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_3
    const/4 v12, 0x0

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/high16 v11, 0x41880000    # 17.0f

    .line 5536
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5538
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5539
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, -0x1

    const/16 v2, 0x30

    .line 5540
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5542
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 5543
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    new-array v2, v6, [Lorg/telegram/ui/ActionBar/BottomSheet;

    aput-object v0, v2, v4

    .line 5544
    aget-object v0, v2, v4

    iput-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 5546
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda67;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda67;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5550
    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 5551
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 5552
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5553
    aget-object v1, v2, v4

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5555
    :cond_4
    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 5556
    aget-object v0, v2, v4

    return-object v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showSubscriptionSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 41

    move-object/from16 v7, p0

    move/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    if-eqz v2, :cond_21

    if-nez v7, :cond_0

    goto/16 :goto_15

    .line 4525
    :cond_0
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v12, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    .line 4526
    new-array v4, v0, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 4528
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4529
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 4530
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v13, v6, v9, v1, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 4531
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4532
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 4534
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x0

    const/16 v20, 0xa

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 4535
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v13, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4537
    new-array v6, v0, [Z

    .line 4538
    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$12;

    invoke-direct {v14, v6, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$12;-><init>([Z[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    .line 4548
    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v9, v14, v10}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4549
    iget-object v9, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v9}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    .line 4550
    new-instance v15, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v15, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v16, 0x0

    cmp-long v21, v9, v16

    .line 4554
    const-string v22, ""

    if-ltz v21, :cond_1

    move/from16 v23, v12

    .line 4555
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 4557
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    .line 4558
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v16

    xor-int/lit8 v17, v16, 0x1

    move-object/from16 v26, v6

    move-object/from16 v25, v11

    move/from16 v6, v16

    move/from16 v11, v17

    goto :goto_1

    :cond_1
    move/from16 v23, v12

    .line 4561
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object/from16 v25, v11

    neg-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v12, v22

    goto :goto_0

    .line 4563
    :cond_2
    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object v12, v11

    :goto_0
    move-object/from16 v26, v6

    move/from16 v6, v23

    move v11, v6

    .line 4567
    :goto_1
    iget-object v8, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v8, :cond_3

    const/high16 v8, 0x41a80000    # 21.0f

    .line 4568
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v15, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 4569
    iget-object v8, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v8}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "100_100"

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    move-object/from16 v16, v0

    move/from16 v17, v6

    :goto_2
    move/from16 v18, v11

    move-object v6, v12

    goto :goto_3

    :cond_3
    const/high16 v8, 0x42480000    # 50.0f

    .line 4571
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v15, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 4572
    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-ltz v21, :cond_4

    move-object/from16 v16, v0

    .line 4574
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move/from16 v17, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 4575
    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 4576
    invoke-virtual {v15, v0, v8}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_2

    :cond_4
    move-object/from16 v16, v0

    move/from16 v17, v6

    .line 4578
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move/from16 v18, v11

    move-object v6, v12

    neg-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4579
    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 4580
    invoke-virtual {v15, v0, v8}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :goto_3
    const/16 v0, 0x64

    const/16 v8, 0x11

    .line 4583
    invoke-static {v0, v0, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4585
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v11, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4586
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v12, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4587
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 4589
    iget-object v12, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v12, :cond_5

    .line 4590
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4591
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x1c

    .line 4592
    invoke-static {v0, v0, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v19, 0x42080000    # 34.0f

    .line 4593
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v20, 0x420c0000    # 35.0f

    .line 4594
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    const v15, 0x3f8ccccd    # 1.1f

    .line 4595
    invoke-virtual {v12, v15}, Landroid/view/View;->setScaleX(F)V

    .line 4596
    invoke-virtual {v12, v15}, Landroid/view/View;->setScaleY(F)V

    .line 4598
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4599
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4600
    invoke-static {v0, v0, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4601
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4602
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4605
    :cond_5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4606
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v11, 0x1

    .line 4607
    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4608
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4609
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 4610
    iget-object v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4611
    iget-object v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4613
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/16 v32, 0x14

    const/16 v33, 0x4

    const/16 v27, -0x1

    const/16 v28, -0x2

    const/16 v29, 0x11

    const/16 v30, 0x14

    const/16 v31, 0x0

    .line 4615
    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4617
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v11, 0x1

    .line 4618
    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4619
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 4620
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v11, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4621
    iget-object v11, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v12, v11, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const v15, 0x278d00

    const v1, 0x3f4ccccd    # 0.8f

    if-ne v12, v15, :cond_7

    .line 4622
    sget v12, Lorg/telegram/messenger/R$string;->StarsSubscriptionPrice:I

    move-wide/from16 v27, v9

    iget-wide v8, v11, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v23

    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    move-wide/from16 v27, v9

    const/16 v8, 0x12c

    if-ne v12, v8, :cond_8

    .line 4624
    const-string v8, "5min"

    goto :goto_5

    :cond_8
    const-string v8, "min"

    .line 4625
    :goto_5
    sget v9, Lorg/telegram/messenger/R$string;->StarsSubscriptionPrice:I

    iget-wide v11, v11, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v11, v12, v23

    const/16 v24, 0x1

    aput-object v8, v12, v24

    invoke-static {v9, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const/16 v34, 0x14

    const/16 v35, 0x4

    const/16 v29, -0x1

    const/16 v30, -0x2

    const/16 v31, 0x11

    const/16 v32, 0x14

    const/16 v33, 0x0

    .line 4627
    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4629
    new-instance v0, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4630
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v8, 0x414a8f5c    # 12.66f

    .line 4631
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const v11, 0x411547ae    # 9.33f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v1, v9, v12, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4632
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4633
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4634
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v11, 0x1

    .line 4635
    invoke-virtual {v1, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4636
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4637
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 4638
    new-instance v9, Lorg/telegram/ui/AvatarSpan;

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-direct {v9, v1, v3, v11}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    if-ltz v21, :cond_b

    .line 4642
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 4643
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v12, v23

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v12, 0x1

    .line 4644
    :goto_8
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    .line 4645
    invoke-virtual {v9, v11}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    move-wide/from16 v10, v27

    move-object/from16 v27, v13

    goto :goto_a

    .line 4647
    :cond_b
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    move-object v15, v11

    move-wide/from16 v10, v27

    move-object/from16 v27, v13

    neg-long v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v15, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    if-nez v12, :cond_c

    const/4 v13, 0x1

    goto :goto_9

    :cond_c
    move/from16 v13, v23

    :goto_9
    if-eqz v12, :cond_d

    .line 4649
    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v22, v15

    .line 4650
    :cond_d
    invoke-virtual {v9, v12}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    move v12, v13

    move-object/from16 v15, v22

    .line 4652
    :goto_a
    new-instance v13, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    const-string/jumbo v6, "x  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x21

    move/from16 v15, v23

    const/4 v6, 0x1

    .line 4653
    invoke-virtual {v13, v9, v15, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4654
    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$13;

    invoke-direct {v6, v4, v10, v11}, Lorg/telegram/ui/Stars/StarsIntroActivity$13;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    const/4 v9, 0x3

    .line 4668
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 4654
    invoke-virtual {v13, v6, v9, v15, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4669
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v12, :cond_10

    if-gez v21, :cond_e

    .line 4671
    sget v3, Lorg/telegram/messenger/R$string;->StarsSubscriptionChannel:I

    goto :goto_b

    :cond_e
    if-eqz v18, :cond_f

    sget v3, Lorg/telegram/messenger/R$string;->StarsSubscriptionBusiness:I

    goto :goto_b

    :cond_f
    sget v3, Lorg/telegram/messenger/R$string;->StarsSubscriptionBot:I

    :goto_b
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    :cond_10
    if-ltz v21, :cond_12

    .line 4674
    iget-object v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v18, :cond_11

    .line 4675
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBusinessProduct:I

    goto :goto_c

    :cond_11
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotProduct:I

    :goto_c
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4678
    :cond_12
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionSince:I

    .line 4679
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    .line 4680
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v9, Ljava/util/Date;

    iget v12, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    iget-object v13, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v13, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    const-wide/16 v29, 0x3e8

    mul-long v12, v12, v29

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v9

    new-instance v12, Ljava/util/Date;

    iget v13, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    iget-object v15, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v15, v15, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    sub-int/2addr v13, v15

    move-wide/from16 v31, v10

    int-to-long v10, v13

    mul-long v10, v10, v29

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v6, v11, v23

    const/16 v24, 0x1

    aput-object v9, v11, v24

    invoke-static {v3, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4678
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4682
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    int-to-long v11, v1

    .line 4684
    iget-boolean v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-nez v1, :cond_13

    iget-boolean v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v1, :cond_14

    :cond_13
    move-wide/from16 v33, v11

    goto :goto_d

    :cond_14
    iget v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    move-wide/from16 v33, v11

    int-to-long v10, v1

    cmp-long v1, v33, v10

    if-lez v1, :cond_15

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionUntilExpired:I

    goto :goto_e

    :cond_15
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionUntilRenews:I

    goto :goto_e

    :goto_d
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionUntilExpires:I

    :goto_e
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    .line 4685
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v9, Ljava/util/Date;

    iget v10, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v10, v10

    mul-long v10, v10, v29

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    iget v11, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v11, v11

    mul-long v11, v11, v29

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v6, v10, v23

    const/16 v24, 0x1

    aput-object v9, v10, v24

    invoke-static {v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4683
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v35, -0x1

    const/16 v36, -0x2

    const/16 v37, 0x0

    const/high16 v38, 0x41880000    # 17.0f

    .line 4687
    invoke-static/range {v35 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v11, v27

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4689
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4690
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4691
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v6, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    .line 4692
    invoke-virtual {v0, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4693
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda68;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda68;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    .line 4696
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v39, 0x41600000    # 14.0f

    const/high16 v40, 0x40e00000    # 7.0f

    const/high16 v37, 0x41600000    # 14.0f

    const/high16 v38, 0x41700000    # 15.0f

    .line 4697
    invoke-static/range {v35 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4699
    iget v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v9, v0

    cmp-long v0, v33, v9

    const/16 v3, 0x30

    const/4 v6, -0x1

    const/4 v9, 0x4

    if-gez v0, :cond_1e

    .line 4700
    iget-boolean v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->can_refulfill:Z

    if-eqz v0, :cond_19

    .line 4701
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4702
    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4703
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v8, 0x1

    .line 4704
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v17, :cond_16

    .line 4705
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotRefulfillInfo:I

    goto :goto_f

    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionRefulfillInfo:I

    :goto_f
    iget v10, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v12, v10

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v10

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v12, v15

    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4706
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4707
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 4708
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v37, 0x41d00000    # 26.0f

    const/high16 v38, 0x41700000    # 15.0f

    const/16 v33, -0x1

    const/16 v34, -0x2

    const/high16 v35, 0x41d00000    # 26.0f

    const/high16 v36, 0x40e00000    # 7.0f

    .line 4709
    invoke-static/range {v33 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4711
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v8, 0x1

    invoke-direct {v1, v7, v8, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v17, :cond_17

    .line 4712
    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotRefulfill:I

    goto :goto_10

    :cond_17
    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscriptionRefulfill:I

    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v1, v0, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 4713
    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4714
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda69;

    move-object v3, v2

    move-object v8, v5

    move/from16 v9, v18

    move-object/from16 v10, v22

    move-wide/from16 v5, v31

    move/from16 v2, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;[Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    :goto_11
    move/from16 v3, p1

    :goto_12
    move-object/from16 v0, v25

    const/4 v15, 0x0

    goto/16 :goto_14

    .line 4740
    :cond_19
    iget-boolean v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v0, :cond_1b

    .line 4741
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4742
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4743
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v6, 0x1

    .line 4744
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v18, :cond_1a

    .line 4745
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBusinessCancelledText:I

    goto :goto_13

    :cond_1a
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotCancelledText:I

    :goto_13
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    .line 4746
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4747
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 4748
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41d00000    # 26.0f

    const/high16 v10, 0x41700000    # 15.0f

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x41d00000    # 26.0f

    const/high16 v8, 0x40e00000    # 7.0f

    .line 4749
    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    .line 4750
    :cond_1b
    iget-boolean v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-eqz v0, :cond_1d

    .line 4751
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4752
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4753
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v8, 0x1

    .line 4754
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4755
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    .line 4756
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4757
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 4758
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v30, 0x41d00000    # 26.0f

    const/high16 v31, 0x41700000    # 15.0f

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/high16 v28, 0x41d00000    # 26.0f

    const/high16 v29, 0x40e00000    # 7.0f

    .line 4759
    invoke-static/range {v26 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4761
    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 4762
    :cond_1c
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v8, 0x1

    invoke-direct {v1, v7, v8, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4763
    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenew:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v1, v0, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 4764
    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4765
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda70;

    move/from16 v3, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    .line 4787
    :cond_1d
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4788
    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4789
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v8, 0x1

    .line 4790
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4791
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelInfo:I

    iget v10, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v12, v10

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v8, v15

    invoke-static {v1, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4792
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4793
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 4794
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v30, 0x41d00000    # 26.0f

    const/high16 v31, 0x41700000    # 15.0f

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/high16 v28, 0x41d00000    # 26.0f

    const/high16 v29, 0x40e00000    # 7.0f

    .line 4795
    invoke-static/range {v26 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4797
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v15, 0x0

    invoke-direct {v1, v7, v15, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4798
    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 4799
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setTextColor(I)V

    .line 4800
    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4801
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda71;

    move/from16 v3, p1

    move-object/from16 v7, v16

    move/from16 v6, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;ZZLorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    .line 4831
    :cond_1e
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4832
    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4833
    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v8, 0x1

    .line 4834
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4835
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpiredInfo:I

    iget v10, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v12, v10

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v10

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v12, v15

    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4836
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4837
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 4838
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v19, 0x41d00000    # 26.0f

    const/high16 v20, 0x41700000    # 15.0f

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/high16 v17, 0x41d00000    # 26.0f

    const/high16 v18, 0x40e00000    # 7.0f

    .line 4839
    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4841
    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    if-nez v0, :cond_1f

    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 4842
    :cond_1f
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v1

    .line 4843
    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscriptionAgain:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v1, v0, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 4844
    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4845
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;

    move/from16 v3, p1

    move-object/from16 v6, v26

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v25

    .line 4894
    :goto_14
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4895
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    aput-object v0, v4, v15

    .line 4896
    iput-boolean v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 4897
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda73;

    invoke-direct {v1, v3, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda73;-><init>(ILorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4901
    aget-object v0, v4, v15

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 4902
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 4903
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4904
    aget-object v1, v4, v15

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4906
    :cond_20
    aget-object v0, v4, v15

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 4907
    aget-object v0, v4, v15

    return-object v0

    :cond_21
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 3

    move-object v0, p5

    .line 3511
    new-instance p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {p5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v1, 0x0

    .line 3512
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3513
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3514
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3515
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3516
    iput-object p3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3517
    iput p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3518
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;->stars:J

    invoke-static {v1, v2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p2

    iput-object p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3519
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;->transaction_id:Ljava/lang/String;

    iput-object p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3520
    iput-boolean p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    .line 3521
    iput-object p3, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3522
    iput-object p4, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    move p4, p1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    .line 3523
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 3

    move-object v0, p5

    .line 3527
    new-instance p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {p5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v1, 0x0

    .line 3528
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3529
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3530
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3531
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3532
    iput-object p3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3533
    iput p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3534
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;-><init>()V

    iput-object p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3535
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoAmount:J

    iput-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    .line 3536
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;->transaction_id:Ljava/lang/String;

    iput-object p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3537
    iput-boolean p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    .line 3538
    iput-object p3, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3539
    iput-object p4, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    move p4, p1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    .line 3540
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 3

    move-object v0, p5

    .line 3493
    new-instance p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {p5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v1, 0x0

    .line 3494
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3495
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3496
    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3497
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v1, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3498
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->boost_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3499
    iput p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3500
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->stars:J

    invoke-static {v1, v2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p2

    iput-object p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3501
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->transaction_id:Ljava/lang/String;

    iput-object p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3502
    iput-boolean p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    .line 3503
    iget p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3504
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->giveaway_msg_id:I

    iput p2, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    .line 3505
    iput-object p3, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3506
    iput-object p4, p5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    move p4, p1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    .line 3507
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 3544
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v0, 0x0

    .line 3545
    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3546
    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3547
    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3548
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3549
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3550
    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3551
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p2

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3552
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;->charge:Lorg/telegram/tgnet/TLRPC$TL_paymentCharge;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_paymentCharge;->id:Ljava/lang/String;

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3553
    iput-boolean p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v6, p4

    .line 3554
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;ZILorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 3558
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    .line 3559
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3560
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3561
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3562
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3563
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3564
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->date:I

    iput v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3565
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->total_amount:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3566
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->transaction_id:Ljava/lang/String;

    iput-object p3, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v6, p4

    .line 3567
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 55

    move-object/from16 v1, p0

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    if-eqz v7, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/16 v27, 0x0

    goto/16 :goto_3f

    .line 3705
    :cond_1
    iget-object v0, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v10, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    .line 3706
    iget v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v3, v2, 0x2000

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_2

    move v13, v12

    goto :goto_0

    :cond_2
    move v13, v11

    :goto_0
    const/high16 v3, 0x20000

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 3707
    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-nez v3, :cond_3

    move v14, v12

    goto :goto_1

    :cond_3
    move v14, v11

    :goto_1
    if-nez v14, :cond_4

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 3708
    iget-boolean v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-nez v2, :cond_4

    move v15, v12

    goto :goto_2

    :cond_4
    move v15, v11

    .line 3710
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v16

    .line 3711
    iget-object v0, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result v17

    .line 3713
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, v1, v11, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3714
    new-array v2, v12, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 3716
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3717
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-nez v13, :cond_6

    .line 3718
    iget-boolean v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-nez v4, :cond_6

    iget-boolean v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v4, :cond_5

    iget-object v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v4, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v8, v11, v4, v11, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 3719
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3720
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 3722
    iget-boolean v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    const-string v5, "fragment"

    const-wide/16 v18, 0x0

    const-string v20, "+"

    const-string/jumbo v23, "\u202f\u2b50\ufe0f"

    const-string v12, ""

    const-string v11, " "

    if-eqz v4, :cond_d

    iget-object v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/high16 v30, 0x41a00000    # 20.0f

    instance-of v3, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v3, :cond_c

    .line 3723
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 3725
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v4, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 3726
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v4, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-object v4, v5

    .line 3728
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-object/from16 v32, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v5, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    .line 3729
    new-instance v33, Landroid/graphics/RadialGradient;

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v40, -0x1000000

    or-int v1, v1, v40

    move/from16 v36, v0

    iget v0, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int v0, v0, v40

    filled-new-array {v1, v0}, [I

    move-result-object v37

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sget-object v39, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v38, v1

    invoke-direct/range {v33 .. v39}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v1, v4

    move-object/from16 v0, v33

    .line 3730
    new-instance v4, Landroid/graphics/Paint;

    move/from16 v33, v13

    const/4 v13, 0x1

    invoke-direct {v4, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v24, v2

    .line 3731
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 3732
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v34, v3

    move-object v3, v0

    .line 3733
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$8;

    move/from16 v13, v30

    move/from16 v30, v14

    move v14, v13

    move-object/from16 v41, v1

    move-object/from16 v43, v24

    move-object/from16 v42, v31

    move-object/from16 v13, v32

    move-object/from16 v44, v34

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$8;-><init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/RadialGradient;Landroid/graphics/Paint;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V

    move-object/from16 v53, v1

    move-object v1, v0

    move-object/from16 v0, v53

    .line 3767
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    .line 3768
    iget-object v2, v13, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    const/4 v13, 0x1

    .line 3769
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3771
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 3772
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v5, 0xa0

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v45, 0xa0

    const/16 v46, 0xa0

    const/16 v47, 0x11

    const/16 v48, 0x0

    const/16 v49, 0x14

    .line 3773
    invoke-static/range {v45 .. v51}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v4, v44

    .line 3774
    iget-object v3, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3775
    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 3776
    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v6, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 3781
    invoke-static {v0, v14, v3, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x1

    .line 3782
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3783
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v44, -0x2

    const/16 v45, -0x2

    const/16 v46, 0x11

    const/16 v47, 0x0

    const/16 v48, 0x1

    .line 3784
    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v5, 0x0

    .line 3786
    invoke-static {v0, v2, v5, v5}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 3787
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int v5, v5, v40

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3788
    const-string v5, "Gift2CollectionNumber"

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v34, -0x2

    const/16 v35, -0x2

    const/16 v36, 0x11

    const/16 v37, 0x0

    const/16 v38, 0x5

    .line 3789
    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v5, 0x0

    const/4 v13, 0x1

    .line 3791
    invoke-static {v0, v2, v5, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 3792
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3793
    iget-object v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v16, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v20, v12

    :goto_5
    invoke-static {v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v9

    move/from16 v21, v5

    const/4 v14, 0x3

    new-array v5, v14, [Ljava/lang/CharSequence;

    aput-object v20, v5, v21

    aput-object v9, v5, v13

    const/16 v25, 0x2

    aput-object v23, v5, v25

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/high16 v9, 0x3fa00000    # 1.25f

    invoke-static {v4, v5, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3794
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3795
    iget-boolean v5, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v5, :cond_9

    .line 3796
    sget v5, Lorg/telegram/messenger/R$string;->StarsRefunded:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    goto :goto_6

    .line 3797
    :cond_9
    iget-boolean v5, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v5, :cond_a

    .line 3799
    sget v5, Lorg/telegram/messenger/R$string;->StarsFailed:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    goto :goto_6

    .line 3800
    :cond_a
    iget-boolean v5, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v5, :cond_b

    .line 3802
    sget v5, Lorg/telegram/messenger/R$string;->StarsPending:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 3804
    :cond_b
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v39, 0x0

    const/16 v40, 0x11

    const/16 v34, -0x2

    const/16 v35, -0x2

    const/16 v36, 0x11

    const/16 v37, 0x0

    const/16 v38, 0xb

    .line 3805
    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, -0x2

    .line 3807
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v9, v0

    move v2, v6

    move-object v6, v7

    move-object v1, v8

    move/from16 v34, v15

    move-object/from16 v8, v43

    move-object/from16 v0, p6

    goto/16 :goto_1c

    :cond_c
    move/from16 v33, v30

    move/from16 v30, v14

    move/from16 v14, v33

    :goto_7
    move-object/from16 v42, v0

    move-object v0, v1

    move-object/from16 v43, v2

    move-object/from16 v41, v5

    move/from16 v33, v13

    goto :goto_8

    :cond_d
    move/from16 v30, v14

    const/high16 v14, 0x41a00000    # 20.0f

    goto :goto_7

    .line 3809
    :goto_8
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 3810
    iget-boolean v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    if-eqz v2, :cond_e

    .line 3811
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget v3, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift_months:I

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setPremiumGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;I)Ljava/lang/Runnable;

    const/16 v39, 0x0

    const/16 v40, 0xa

    const/16 v34, 0xa0

    const/16 v35, 0xa0

    const/16 v36, 0x11

    const/16 v37, 0x0

    const/16 v38, -0x8

    .line 3812
    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    move/from16 v13, p1

    move-object v9, v0

    move v2, v6

    move-object v6, v7

    move-object v1, v8

    move/from16 v34, v15

    move-wide/from16 v7, p2

    move-object/from16 v0, p6

    goto/16 :goto_12

    .line 3813
    :cond_e
    iget-boolean v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->posts_search:Z

    const/16 v3, 0x64

    const/high16 v4, 0x42200000    # 40.0f

    if-eqz v2, :cond_f

    .line 3814
    const-string/jumbo v2, "search"

    invoke-static {v3, v2}, Lorg/telegram/ui/Cells/SessionCell;->createDrawable(ILjava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v2

    .line 3815
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 3816
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 3818
    :cond_f
    iget-object v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v2, :cond_11

    .line 3819
    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_10

    .line 3820
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;

    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v4, 0x5e

    const v5, 0x3ee147ae    # 0.44f

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;-><init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$StarGift;IF)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v39, 0x0

    const/16 v40, 0xa

    const/16 v34, 0x5e

    const/16 v35, 0x5e

    const/16 v36, 0x11

    const/16 v37, 0x0

    const/16 v38, 0x2

    .line 3821
    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 3823
    :cond_10
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v5, 0xa0

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    const/16 v39, 0x0

    const/16 v40, 0xa

    const/16 v34, 0xa0

    const/16 v35, 0xa0

    const/16 v36, 0x11

    const/16 v37, 0x0

    const/16 v38, -0x8

    .line 3824
    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_11
    if-nez v33, :cond_12

    .line 3826
    iget-boolean v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v2, :cond_13

    :cond_12
    move/from16 v13, p1

    move-object v9, v0

    move-object v5, v1

    move v2, v6

    move-object v6, v7

    move-object v1, v8

    move/from16 v34, v15

    move-wide/from16 v7, p2

    move-object/from16 v0, p6

    goto/16 :goto_10

    .line 3834
    :cond_13
    iget-object v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const/high16 v2, 0x41f00000    # 30.0f

    .line 3835
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 3836
    iget-object v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3838
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_14

    .line 3839
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v13, 0x1

    invoke-static {v3, v4, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_a
    move-object/from16 v35, v2

    goto :goto_b

    :cond_14
    const/4 v13, 0x1

    .line 3840
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_15

    .line 3841
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_a

    :cond_15
    const/16 v35, 0x0

    :goto_b
    const/16 v39, 0x0

    const/16 v21, 0x0

    .line 3843
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const-string v36, "100_100"

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, v1

    invoke-virtual/range {v34 .. v40}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    const/16 v39, 0x0

    const/16 v40, 0xa

    const/16 v34, 0x64

    const/16 v35, 0x64

    const/16 v36, 0x11

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 3844
    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3846
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda11;

    move-object/from16 v9, p0

    move-wide/from16 v2, p2

    move v5, v6

    move-object v4, v7

    move-object/from16 v6, p6

    move-object v7, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda11;-><init>(ZJLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;)V

    move v13, v1

    move-object v1, v8

    move-wide/from16 v53, v2

    move-object v3, v0

    move v2, v5

    move-object v0, v6

    move-object v5, v7

    move-wide/from16 v7, v53

    move-object v6, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v34, v15

    goto/16 :goto_12

    :cond_16
    move/from16 v13, p1

    move-object v9, v0

    move-object v5, v1

    move/from16 v31, v4

    move v2, v6

    move-object v6, v7

    move-object v1, v8

    move-wide/from16 v7, p2

    move-object/from16 v0, p6

    .line 3902
    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v14, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v14, :cond_1b

    .line 3903
    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    const/high16 v4, 0x42480000    # 50.0f

    if-eqz v3, :cond_17

    .line 3904
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 3905
    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v3}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v35

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-string v36, "100_100"

    const/16 v37, 0x0

    move-object/from16 v34, v5

    invoke-virtual/range {v34 .. v39}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    move/from16 v34, v15

    goto :goto_e

    .line 3907
    :cond_17
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    if-eqz v15, :cond_18

    .line 3908
    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    goto :goto_d

    :cond_18
    iget-boolean v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v3, :cond_19

    if-eqz v13, :cond_19

    move-wide v3, v7

    goto :goto_d

    :cond_19
    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_c

    .line 3909
    :goto_d
    new-instance v14, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v14}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    cmp-long v31, v3, v18

    if-ltz v31, :cond_1a

    move/from16 v34, v15

    .line 3911
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 3912
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 3913
    invoke-virtual {v5, v3, v14}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_e

    :cond_1a
    move/from16 v34, v15

    .line 3915
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3916
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 3917
    invoke-virtual {v5, v3, v14}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :goto_e
    const/16 v49, 0x0

    const/16 v50, 0xa

    const/16 v44, 0x64

    const/16 v45, 0x64

    const/16 v46, 0x11

    const/16 v47, 0x0

    const/16 v48, 0x0

    .line 3920
    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_12

    :cond_1b
    move/from16 v34, v15

    .line 3923
    instance-of v14, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAppStore;

    if-eqz v14, :cond_1c

    .line 3924
    const-string v4, "ios"

    goto :goto_f

    .line 3925
    :cond_1c
    instance-of v14, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPlayMarket;

    if-eqz v14, :cond_1d

    .line 3926
    const-string v4, "android"

    goto :goto_f

    .line 3927
    :cond_1d
    instance-of v14, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz v14, :cond_1e

    .line 3928
    const-string v4, "premiumbot"

    goto :goto_f

    .line 3929
    :cond_1e
    instance-of v14, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v14, :cond_1f

    move-object/from16 v4, v41

    goto :goto_f

    .line 3931
    :cond_1f
    instance-of v14, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAds;

    if-eqz v14, :cond_20

    .line 3932
    const-string v4, "ads"

    goto :goto_f

    .line 3933
    :cond_20
    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAPI;

    if-eqz v4, :cond_21

    .line 3934
    const-string v4, "api"

    goto :goto_f

    .line 3933
    :cond_21
    const-string v4, "?"

    .line 3936
    :goto_f
    invoke-static {v3, v4}, Lorg/telegram/ui/Cells/SessionCell;->createDrawable(ILjava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v3

    .line 3937
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v3, v4, v14}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 3938
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 3827
    :goto_10
    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-eqz v3, :cond_22

    .line 3828
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v14, v4, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-static {v5, v3, v14, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setTonGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;

    goto :goto_11

    .line 3830
    :cond_22
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v14, v4, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-static {v5, v3, v14, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;

    :goto_11
    const/16 v49, 0x0

    const/16 v50, 0xa

    const/16 v44, 0xa0

    const/16 v45, 0xa0

    const/16 v46, 0x11

    const/16 v47, 0x0

    const/16 v48, -0x8

    .line 3833
    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3942
    :goto_12
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3943
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x1

    const/high16 v14, 0x41a00000    # 20.0f

    .line 3944
    invoke-virtual {v3, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3945
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v5, 0x11

    .line 3946
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3947
    invoke-static {v2, v13, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getTransactionTitle(IZLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v49, 0x24

    const/16 v50, 0x4

    const/16 v44, -0x1

    const/16 v45, -0x2

    const/16 v46, 0x11

    const/16 v47, 0x24

    const/16 v48, 0x0

    .line 3948
    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3950
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v14, 0x1

    .line 3951
    invoke-virtual {v3, v14, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3952
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v5, 0x11

    .line 3953
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v16, :cond_23

    .line 3954
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    goto :goto_13

    :cond_23
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    :goto_13
    invoke-static {v5, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3955
    iget-object v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v16, :cond_24

    goto :goto_14

    :cond_24
    move-object/from16 v20, v12

    :goto_14
    invoke-static {v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x3

    new-array v13, v15, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    aput-object v20, v13, v21

    const/16 v24, 0x1

    aput-object v14, v13, v24

    const/16 v25, 0x2

    aput-object v23, v13, v25

    invoke-static {v13}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    const v14, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v13, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3956
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3957
    iget-boolean v13, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v13, :cond_25

    .line 3958
    sget v13, Lorg/telegram/messenger/R$string;->StarsRefunded:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v3, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    goto :goto_15

    .line 3959
    :cond_25
    iget-boolean v13, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v13, :cond_26

    .line 3960
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v13, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3961
    sget v13, Lorg/telegram/messenger/R$string;->StarsFailed:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v3, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    goto :goto_15

    .line 3962
    :cond_26
    iget-boolean v13, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v13, :cond_27

    .line 3963
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_color_yellow:I

    invoke-static {v13, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3964
    sget v13, Lorg/telegram/messenger/R$string;->StarsPending:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v3, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 3966
    :cond_27
    :goto_15
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v49, 0x24

    const/16 v50, 0x4

    const/16 v44, -0x1

    const/16 v45, -0x2

    const/16 v46, 0x11

    const/16 v47, 0x24

    const/16 v48, 0x0

    .line 3967
    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3969
    iget-boolean v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v5, :cond_2a

    iget v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    if-lez v5, :cond_2a

    if-eqz v16, :cond_2a

    .line 3970
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 3971
    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v13, 0x1

    .line 3972
    invoke-virtual {v3, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0x11

    .line 3973
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3974
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 3975
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 3976
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3977
    sget v5, Lorg/telegram/messenger/R$string;->StarsTransactionMessageFeeInfo:I

    iget v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    rsub-int v14, v14, 0x3e8

    invoke-static {v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v14

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v14, v15, v21

    invoke-static {v5, v15}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3978
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v5, v7, v13

    if-eqz v5, :cond_28

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v13, v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    const/4 v13, 0x2

    invoke-static {v5, v13}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3979
    :cond_28
    invoke-virtual {v4, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3980
    sget v5, Lorg/telegram/messenger/R$string;->StarsTransactionMessageFeeInfoLink:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0xa0

    const/16 v14, 0x20

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda22;

    invoke-direct {v13, v7, v8, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda22;-><init>(JI)V

    invoke-static {v5, v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const/4 v13, 0x1

    invoke-static {v5, v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4002
    :cond_29
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v49, 0x24

    const/16 v50, 0x4

    const/16 v44, -0x1

    const/16 v45, -0x2

    const/16 v46, 0x11

    const/16 v47, 0x24

    const/16 v48, 0x0

    .line 4003
    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v8, v43

    goto/16 :goto_1c

    .line 4004
    :cond_2a
    iget-object v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v5, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-nez v5, :cond_2b

    if-nez v33, :cond_2c

    iget-boolean v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v5, :cond_2b

    goto :goto_16

    :cond_2b
    move-object/from16 v8, v43

    goto/16 :goto_1b

    .line 4005
    :cond_2c
    :goto_16
    iget-object v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v5, :cond_2d

    const/4 v5, 0x0

    goto :goto_17

    :cond_2d
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v13, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 4006
    :goto_17
    iget-object v13, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v13, :cond_2e

    const/4 v13, 0x0

    goto :goto_18

    :cond_2e
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v14}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 4007
    :goto_18
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 4010
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v14, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4011
    iget-object v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v15

    move/from16 v20, v5

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    aput-object v15, v7, v21

    const/4 v5, 0x1

    aput-object v23, v7, v5

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const v8, 0x3f4ccccd    # 0.8f

    invoke-static {v14, v7, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_2f
    move/from16 v20, v5

    const/4 v5, 0x1

    .line 4014
    :goto_19
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 4015
    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 4016
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x11

    .line 4017
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 4018
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 4019
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    if-eqz v20, :cond_30

    .line 4021
    sget v4, Lorg/telegram/messenger/R$string;->ActionGiftStarsSubtitle:I

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v7, v8, v21

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_30
    sget v4, Lorg/telegram/messenger/R$string;->ActionGiftStarsSubtitleYou:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->GiftStarsSubtitleLinkName:I

    .line 4023
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0xa0

    const/16 v14, 0x20

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda26;

    move-object/from16 v8, v43

    invoke-direct {v7, v9, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda26;-><init>(Landroid/content/Context;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const/4 v13, 0x1

    invoke-static {v5, v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v14, 0x3

    new-array v7, v14, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    aput-object v4, v7, v21

    aput-object v11, v7, v13

    const/16 v25, 0x2

    aput-object v5, v7, v25

    .line 4020
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v48, 0x24

    const/16 v49, 0x4

    const/16 v43, -0x1

    const/16 v44, -0x2

    const/16 v45, 0x11

    const/16 v46, 0x24

    const/16 v47, 0x0

    .line 4031
    invoke-static/range {v43 .. v49}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c

    .line 4032
    :goto_1b
    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 4033
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4034
    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v13, 0x1

    .line 4035
    invoke-virtual {v3, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0x11

    .line 4036
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 4037
    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v48, 0x24

    const/16 v49, 0x4

    const/16 v43, -0x1

    const/16 v44, -0x2

    const/16 v45, 0x11

    const/16 v46, 0x24

    const/16 v47, 0x0

    .line 4038
    invoke-static/range {v43 .. v49}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4042
    :cond_31
    :goto_1c
    new-instance v3, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v3, v9, v0}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4043
    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v7, 0x2c

    const-string/jumbo v13, "\u2b50\ufe0f "

    const v20, 0x411547ae    # 9.33f

    const v22, 0x414a8f5c    # 12.66f

    if-eqz v4, :cond_49

    .line 4044
    iget-boolean v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v5, :cond_34

    .line 4045
    iget v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    iget v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    if-lez v4, :cond_32

    .line 4046
    sget v4, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->StarGiftReasonUpgrade:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object v4

    const/4 v13, 0x1

    .line 4047
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    .line 4048
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    .line 4049
    iget v7, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    iput v7, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    .line 4050
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v7

    new-instance v13, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda27;

    invoke-direct {v13, v4, v2, v9, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v7, v5, v13}, Lorg/telegram/ui/Stars/StarsController;->getUserStarGift(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 4063
    :cond_32
    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v5, :cond_33

    .line 4064
    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    .line 4065
    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 4066
    sget v7, Lorg/telegram/messenger/R$string;->StarGiftUpgradeGiftFrom:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda28;

    invoke-direct {v13, v8, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda28;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object v0, v7

    move-object v7, v1

    move-object v1, v0

    move-object v0, v3

    move-wide v3, v4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    move-object/from16 v52, v9

    move-object v9, v6

    move-object/from16 v6, v52

    :goto_1d
    move-object/from16 v52, v7

    move-object v7, v8

    :goto_1e
    move-object/from16 v8, p6

    goto/16 :goto_31

    :cond_33
    move-object v7, v1

    move-object v0, v9

    move-object v9, v6

    move-object v6, v0

    move-object v0, v3

    goto :goto_1d

    :cond_34
    move v0, v2

    move-object v2, v1

    move-object v1, v3

    .line 4074
    instance-of v3, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v3, :cond_40

    .line 4075
    iget-object v3, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    .line 4076
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 4077
    sget v4, Lorg/telegram/messenger/R$string;->Gift2Gift:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v14, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " #"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v14, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda29;

    invoke-direct {v14, v9, v0, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda29;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v1, v4, v5, v14}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4081
    :cond_35
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    .line 4082
    iget-object v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    .line 4083
    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v18

    .line 4085
    iget-boolean v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v5, :cond_39

    if-nez v17, :cond_37

    .line 4087
    sget v5, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v14, :cond_36

    sget v14, Lorg/telegram/messenger/R$string;->StarGiftReasonPurchase:I

    goto :goto_1f

    :cond_36
    sget v14, Lorg/telegram/messenger/R$string;->StarGiftReasonSale:I

    :goto_1f
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5, v14}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-wide/from16 v16, v3

    goto :goto_22

    .line 4091
    :cond_37
    sget v5, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v14, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v14, :cond_38

    sget v14, Lorg/telegram/messenger/R$string;->StarGiftReasonSale:I

    goto :goto_20

    :cond_38
    sget v14, Lorg/telegram/messenger/R$string;->StarGiftReasonPurchase:I

    :goto_20
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5, v14}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_21

    .line 4095
    :cond_39
    iget-boolean v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_drop_original_details:Z

    if-eqz v5, :cond_3a

    .line 4096
    sget v5, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v14, Lorg/telegram/messenger/R$string;->StarGiftReasonRemovedDescription:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5, v14}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-wide/from16 v16, v3

    move-wide/from16 v18, v16

    goto :goto_22

    .line 4100
    :cond_3a
    sget v5, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v14, Lorg/telegram/messenger/R$string;->StarGiftReasonTransfer:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5, v14}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :goto_21
    move-wide/from16 v16, v18

    move-wide/from16 v18, v3

    :goto_22
    cmp-long v14, v18, v3

    if-eqz v14, :cond_3b

    .line 4105
    sget v5, Lorg/telegram/messenger/R$string;->Gift2From:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v26

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda30;

    move-object/from16 v15, p6

    move-object v0, v1

    move-object/from16 v52, v2

    move-object v1, v5

    move-object v2, v8

    move-object v8, v6

    move-wide v5, v3

    move-wide/from16 v3, v18

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda30;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V

    move-object/from16 v43, v2

    move-wide/from16 v18, v5

    move/from16 v2, p4

    move-object v5, v1

    move-object/from16 v1, v26

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto :goto_23

    :cond_3b
    move-object/from16 v15, p6

    move-object v0, v1

    move-object/from16 v52, v2

    move-wide/from16 v18, v3

    move-object/from16 v43, v8

    move-object v8, v6

    :goto_23
    cmp-long v1, v16, v18

    if-eqz v1, :cond_3c

    .line 4120
    sget v1, Lorg/telegram/messenger/R$string;->Gift2To:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v26

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda31;

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-object/from16 v2, v43

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda31;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V

    move-object v5, v1

    move-object v6, v2

    move-object/from16 v1, v26

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto :goto_24

    :cond_3c
    move-object/from16 v6, v43

    :goto_24
    if-eqz v14, :cond_3d

    .line 4134
    iget-boolean v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v1, :cond_3f

    :cond_3d
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v1, :cond_3f

    iget v2, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    if-lez v2, :cond_3f

    .line 4135
    iget-object v2, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-eqz v3, :cond_3e

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-eqz v1, :cond_3e

    .line 4136
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;-><init>()V

    .line 4137
    iget-object v2, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object v4, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const/4 v5, 0x1

    .line 4138
    new-array v2, v5, [Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 4139
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionFullPrice:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v14, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v1, v14, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    const/16 v21, 0x0

    .line 4140
    aget-object v1, v2, v21

    if-eqz v1, :cond_3f

    .line 4141
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    goto :goto_25

    .line 4144
    :cond_3e
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v1

    iget-object v3, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v3}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 4145
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionFullPrice:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v14, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v1, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_3f
    :goto_25
    move/from16 v2, p4

    move-object v7, v6

    move-object v6, v9

    move-object v9, v8

    move-object v8, v15

    goto/16 :goto_31

    :cond_40
    move-object v0, v8

    move-object v8, v6

    move-object v6, v0

    move-object/from16 v15, p6

    move-object v0, v1

    move-object/from16 v52, v2

    .line 4148
    iget-boolean v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-nez v1, :cond_48

    cmp-long v1, p2, v18

    if-nez v1, :cond_41

    .line 4149
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    move-wide v13, v1

    goto :goto_26

    :cond_41
    move-wide/from16 v13, p2

    .line 4150
    :goto_26
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 4151
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v16, :cond_44

    cmp-long v1, v3, v13

    if-eqz v1, :cond_43

    .line 4154
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeFrom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, v6, v8, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda32;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    if-eqz v7, :cond_42

    .line 4164
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(J)Z

    move-result v2

    if-nez v2, :cond_42

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ButtonSendGift:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v43, v6

    move-object v6, v2

    goto :goto_27

    :cond_42
    move-object/from16 v43, v6

    const/4 v6, 0x0

    :goto_27
    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda1;

    move-object v2, v7

    move-object v7, v0

    move-object v0, v2

    move-object v2, v9

    move-object v9, v1

    move-object v1, v2

    move/from16 v2, p4

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v1, v7

    move-object v7, v0

    move-object v0, v1

    move-object v1, v9

    move-object v9, v5

    move-object v5, v1

    move-wide/from16 v17, v13

    move-object/from16 v1, v16

    move-wide/from16 v14, p2

    .line 4154
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    goto :goto_28

    :cond_43
    move/from16 v2, p4

    move-object v9, v6

    move-wide/from16 v17, v13

    move-wide/from16 v14, p2

    .line 4168
    :goto_28
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeTo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v9, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda2;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    move-wide/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto/16 :goto_2c

    :cond_44
    move/from16 v2, p4

    move-object v9, v6

    move-wide v5, v3

    move-wide v3, v13

    move-wide/from16 v14, p2

    cmp-long v1, v5, v3

    if-eqz v1, :cond_45

    .line 4181
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeFrom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v16, v5

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v9, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda3;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    move-object v13, v7

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    :goto_29
    move-object/from16 v16, v0

    goto :goto_2a

    :cond_45
    move-object v13, v7

    move-wide v6, v5

    goto :goto_29

    .line 4193
    :goto_2a
    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeTo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, v9, v8, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda4;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    if-eqz v13, :cond_46

    .line 4203
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {v6, v7}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(J)Z

    move-result v1

    if-nez v1, :cond_46

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ButtonSendGift:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-wide v3, v6

    move-object v6, v1

    goto :goto_2b

    :cond_46
    move-wide v3, v6

    const/4 v6, 0x0

    :goto_2b
    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v7, v0

    move-object v0, v1

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v5, v7

    move-object/from16 v1, v17

    move-object v7, v0

    move-object/from16 v0, v16

    .line 4193
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_47
    :goto_2c
    move-object/from16 v6, p0

    move/from16 v2, p4

    move-object v7, v9

    :goto_2d
    move-object v9, v8

    goto/16 :goto_1e

    :cond_48
    move-wide/from16 v14, p2

    move/from16 v2, p4

    move-object v7, v6

    move-object v9, v8

    move-object/from16 v6, p0

    goto/16 :goto_1e

    :cond_49
    move-wide/from16 v14, p2

    move-object/from16 v52, v1

    move-object v0, v3

    move-object v9, v8

    move-object v8, v6

    .line 4208
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v2, :cond_52

    .line 4209
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 4210
    iget-boolean v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v1, :cond_4b

    if-eqz v16, :cond_4a

    .line 4211
    sget v1, Lorg/telegram/messenger/R$string;->Gift2From:I

    goto :goto_2e

    :cond_4a
    sget v1, Lorg/telegram/messenger/R$string;->Gift2To:I

    :goto_2e
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, v9, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda6;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4218
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v1, :cond_47

    iget v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    if-lez v1, :cond_47

    .line 4219
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v1

    iget-object v3, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v3}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 4220
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionFullPrice:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto/16 :goto_2c

    :cond_4b
    move-wide v6, v3

    if-eqz v30, :cond_4c

    .line 4224
    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 4226
    sget v1, Lorg/telegram/messenger/R$string;->StarAffiliateReason:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->StarAffiliateReasonProgram:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v9, v14, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda7;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4233
    sget v1, Lorg/telegram/messenger/R$string;->StarAffiliate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v9, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda8;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4240
    sget v1, Lorg/telegram/messenger/R$string;->StarAffiliateReferredUser:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, v9, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda9;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-wide v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    move-object v13, v0

    .line 4247
    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateCommission:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    invoke-static {v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-object/from16 v6, p0

    move-object v7, v9

    move-object v0, v13

    goto/16 :goto_2d

    :cond_4c
    move-object v13, v0

    move-wide v3, v6

    if-eqz v34, :cond_4d

    .line 4251
    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateReason:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarAffiliateReasonProgram:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda10;

    move-wide v5, v3

    move-object v7, v9

    move-wide v3, v14

    move-object v15, v1

    move-object v14, v2

    move-object v9, v8

    move-object/from16 v2, p0

    move/from16 v1, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda10;-><init>(ILandroid/content/Context;JJ[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-wide v3, v5

    move-object v6, v2

    invoke-virtual {v13, v14, v15, v0}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4257
    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateMiniApp:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, v7, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda12;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move/from16 v2, p4

    move-object v0, v13

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto/16 :goto_31

    :cond_4d
    move-object/from16 v6, p0

    move-object v7, v9

    move-object v0, v13

    move-object v9, v8

    move-object/from16 v8, p6

    if-eqz v33, :cond_4f

    .line 4265
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeFrom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, v7, v9, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda13;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    move-wide v13, v3

    .line 4276
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeTo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda14;

    invoke-direct {v5, v7, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda14;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4286
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayReason:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->StarGiveawayReasonLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, v7, v9, v13, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda15;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4297
    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayGift:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_4e
    :goto_2f
    move/from16 v2, p4

    goto/16 :goto_31

    :cond_4f
    move-wide v13, v3

    .line 4298
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v1, :cond_50

    if-nez p1, :cond_50

    .line 4299
    sget v1, Lorg/telegram/messenger/R$string;->StarSubscriptionTo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, v7, v13, v14, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda16;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    move/from16 v2, p4

    move-wide v3, v13

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto/16 :goto_31

    :cond_50
    move-wide v3, v13

    .line 4310
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    if-eqz v1, :cond_51

    .line 4311
    sget v1, Lorg/telegram/messenger/R$string;->Gift2To:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, v7, v3, v4, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda17;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4322
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionPremiumGiftDuration:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Months"

    iget v3, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift_months:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_2f

    .line 4323
    :cond_51
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->posts_search:Z

    if-nez v1, :cond_4e

    .line 4324
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionRecipient:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v7, v3, v4, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda18;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto/16 :goto_31

    :cond_52
    move-object/from16 v6, p0

    move/from16 v2, p4

    move-object v7, v9

    move-object v9, v8

    move-object/from16 v8, p6

    .line 4336
    instance-of v3, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v3, :cond_55

    .line 4337
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v1, :cond_54

    .line 4338
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4339
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v1, v3, v4, v5, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 4340
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4341
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4342
    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v13, 0x1

    .line 4343
    invoke-virtual {v1, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4344
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4345
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 4346
    new-instance v3, Lorg/telegram/ui/AvatarSpan;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-direct {v3, v1, v2, v4}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    if-eqz v10, :cond_53

    .line 4347
    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionTONFromFragment:I

    goto :goto_30

    :cond_53
    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionUnknown:I

    :goto_30
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    move-object/from16 v13, v41

    .line 4348
    invoke-static {v13, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;I)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v5

    const/high16 v26, 0x41800000    # 16.0f

    .line 4349
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 4350
    invoke-virtual {v3, v5}, Lorg/telegram/ui/AvatarSpan;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4351
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "x  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x21

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 4352
    invoke-virtual {v5, v3, v13, v14, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4353
    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$10;

    invoke-direct {v3, v7, v6, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$10;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;Z)V

    .line 4364
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/4 v14, 0x3

    .line 4353
    invoke-virtual {v5, v3, v14, v13, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4365
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4366
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionRecipient:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    goto :goto_31

    .line 4368
    :cond_54
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Fragment:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_31

    .line 4370
    :cond_55
    instance-of v3, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAppStore;

    if-eqz v3, :cond_56

    .line 4371
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->AppStore:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_31

    .line 4372
    :cond_56
    instance-of v3, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPlayMarket;

    if-eqz v3, :cond_57

    .line 4373
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->PlayMarket:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_31

    .line 4374
    :cond_57
    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz v1, :cond_58

    .line 4375
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionBot:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4378
    :cond_58
    :goto_31
    iget-object v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v3, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v3, :cond_61

    iget v3, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_61

    .line 4379
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    if-eqz p1, :cond_59

    move-wide/from16 v3, p2

    .line 4383
    :cond_59
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v13, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 4385
    new-instance v5, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v5, v6, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4386
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v16, v10

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v5, v13, v14, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 4387
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4388
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v10, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4389
    invoke-static {v10, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v13, 0x1

    .line 4390
    invoke-virtual {v5, v13, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4391
    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 4392
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4393
    iget-object v12, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5e

    .line 4395
    iget-object v12, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v13, :cond_5e

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    check-cast v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move/from16 p1, v13

    .line 4396
    new-instance v13, Lorg/telegram/ui/ImageReceiverSpan;

    move/from16 p2, v14

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-direct {v13, v5, v2, v14}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    move/from16 v28, v14

    .line 4398
    instance-of v14, v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v14, :cond_5a

    .line 4399
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move/from16 p3, v15

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/4 v6, 0x1

    invoke-static {v14, v15, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v14

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v14, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    move-object/from16 v35, v12

    goto :goto_33

    :cond_5a
    move/from16 p3, v15

    const/4 v6, 0x1

    .line 4400
    instance-of v14, v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v14, :cond_5b

    .line 4401
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v14, v15, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v14

    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v14, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    move-object/from16 v35, v6

    goto :goto_33

    :cond_5b
    const/16 v35, 0x0

    :goto_33
    if-eqz v35, :cond_5c

    const/high16 v6, 0x40c00000    # 6.0f

    .line 4404
    invoke-virtual {v13, v6}, Lorg/telegram/ui/ImageReceiverSpan;->setRoundRadius(F)V

    .line 4405
    iget-object v6, v13, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v36, "24_24"

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, v6

    invoke-virtual/range {v34 .. v40}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 4406
    new-instance v6, Landroid/text/SpannableString;

    const-string/jumbo v12, "x"

    invoke-direct {v6, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4407
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v14, 0x21

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4408
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4409
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v14, p2, 0x1

    :goto_34
    const/4 v15, 0x3

    goto :goto_35

    :cond_5c
    move/from16 v14, p2

    goto :goto_34

    :goto_35
    if-lt v14, v15, :cond_5d

    goto :goto_36

    :cond_5d
    move-object/from16 v6, p0

    move/from16 v13, p1

    move/from16 v15, p3

    move-object/from16 v12, v18

    goto/16 :goto_32

    .line 4415
    :cond_5e
    :goto_36
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4416
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 4417
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v11

    .line 4418
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 4419
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_37

    .line 4421
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4424
    :goto_37
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, v7, v3, v4, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda19;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V

    .line 4434
    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$11;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$11;-><init>(Ljava/lang/Runnable;)V

    .line 4444
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v14, 0x21

    .line 4434
    invoke-virtual {v10, v3, v6, v4, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v13, 0x1

    .line 4445
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4446
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4447
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4448
    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4449
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    if-eqz v1, :cond_60

    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionMessage:I

    goto :goto_38

    :cond_60
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionMedia:I

    :goto_38
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    goto :goto_39

    :cond_61
    move/from16 v16, v10

    .line 4453
    :goto_39
    iget-object v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    if-nez v33, :cond_63

    .line 4454
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionID:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x19

    if-le v4, v5, :cond_62

    const/16 v4, 0x9

    goto :goto_3a

    :cond_62
    const/16 v4, 0xa

    :goto_3a
    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda21;

    invoke-direct {v5, v7, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda21;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/ui/Components/TableView;->addRowMonospaced(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 4459
    :cond_63
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    if-eqz v1, :cond_64

    iget v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    if-lez v1, :cond_64

    .line 4460
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionFloodskipNumberName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "StarsTransactionFloodskipNumber"

    iget v4, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4463
    :cond_64
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionDate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget v6, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    int-to-long v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v4, v10, v21

    const/16 v24, 0x1

    aput-object v5, v10, v24

    invoke-static {v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    .line 4464
    iget-object v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v1, :cond_66

    .line 4465
    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v3, :cond_65

    .line 4466
    invoke-static {v0, v2, v1, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4468
    :cond_65
    iget-object v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 4469
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4470
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    :cond_66
    const/high16 v35, 0x41800000    # 16.0f

    const/16 v36, 0x0

    const/16 v31, -0x1

    const/16 v32, -0x2

    const/high16 v33, 0x41800000    # 16.0f

    const/high16 v34, 0x41880000    # 17.0f

    .line 4473
    invoke-static/range {v31 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v2, v52

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4475
    iget v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/16 v29, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_67

    .line 4476
    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionTONDate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget v6, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    int-to-long v10, v6

    mul-long/2addr v10, v12

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x2

    new-array v6, v13, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v4, v6, v21

    const/16 v24, 0x1

    aput-object v5, v6, v24

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_67
    if-nez v16, :cond_68

    .line 4480
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4481
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4482
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v13, 0x1

    .line 4483
    invoke-virtual {v0, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4484
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda23;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x11

    .line 4487
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41700000    # 15.0f

    .line 4488
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3b

    :cond_68
    move-object/from16 v1, p0

    .line 4491
    :goto_3b
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    .line 4492
    iget v3, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/16 v29, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_69

    .line 4493
    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionViewInBlockchainExplorer:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3c

    :cond_69
    const/4 v5, 0x0

    .line 4495
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :goto_3c
    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41700000    # 15.0f

    .line 4497
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v3, v42

    .line 4499
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4500
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v7, v5

    .line 4501
    iput-boolean v5, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 4502
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/16 v29, 0x20

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6a

    .line 4503
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda24;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3d
    const/16 v21, 0x0

    goto :goto_3e

    .line 4507
    :cond_6a
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda25;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3d

    .line 4512
    :goto_3e
    aget-object v0, v7, v21

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 4513
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 4514
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 4515
    aget-object v1, v7, v21

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4517
    :cond_6b
    aget-object v0, v7, v21

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 4518
    aget-object v0, v7, v21

    return-object v0

    :goto_3f
    return-object v27

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBalance()V
    .locals 6

    .line 433
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    .line 435
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 436
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 437
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    const v3, 0x3f28f5c3    # 0.66f

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 438
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->StarsBuyMore:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->StarsBuy:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 442
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateButtonsLayouts(ZZ)V

    return-void
.end method

.method private updateButtonsLayouts(ZZ)V
    .locals 4

    .line 448
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtons:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 450
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 453
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V

    .line 454
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 459
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 460
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_1

    move v0, v1

    .line 461
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V

    .line 462
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 469
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 471
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 472
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 473
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    move v2, v0

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public attachedTransactionsLayout()Z
    .locals 3

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 604
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

    .line 683
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$5;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda66;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$5;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v2, 0x0

    .line 695
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 696
    iget-object v0, v1, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method protected createContentView()Lorg/telegram/ui/GradientHeaderActivity$ContentView;
    .locals 2

    .line 480
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$NestedFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    .line 614
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    const/4 v9, 0x0

    .line 265
    iput-boolean v9, v0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    const/high16 v1, 0x436e0000    # 238.0f

    .line 266
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    .line 267
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v7

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    .line 268
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$1;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->emptyLayout:Landroid/view/View;

    .line 285
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 293
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    .line 294
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 295
    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    .line 296
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v5, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    .line 297
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v5, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    .line 298
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 299
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    .line 300
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v15, 0x0

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v10, 0xbe

    const/high16 v11, 0x433e0000    # 190.0f

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/high16 v14, 0x41400000    # 12.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    sget v1, Lorg/telegram/messenger/R$string;->TelegramStars:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$string;->TelegramStarsInfo2:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda33;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda33;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v5, v6, v7}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    .line 305
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 306
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 307
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 308
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 309
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 310
    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 311
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda34;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 319
    new-instance v1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 320
    iget-object v5, v0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, -0x1

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    .line 324
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    .line 325
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 326
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v9, v6, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 328
    new-instance v5, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v9, v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 329
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 330
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 331
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 332
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 334
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v8, "S"

    invoke-direct {v5, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    .line 335
    new-instance v5, Lorg/telegram/ui/ImageReceiverSpan;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/high16 v11, 0x42280000    # 42.0f

    invoke-direct {v5, v8, v10, v11}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    .line 336
    iget-object v8, v5, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v10, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v12, Lorg/telegram/messenger/R$raw;->star_reaction:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "s"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lorg/telegram/messenger/R$raw;->star_reaction:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-direct {v10, v12, v13, v14, v11}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v8, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v8, v5, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 338
    invoke-virtual {v5, v9}, Lorg/telegram/ui/ImageReceiverSpan;->enableShadow(Z)V

    const/high16 v8, 0x40400000    # 3.0f

    .line 339
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Lorg/telegram/ui/ImageReceiverSpan;->translate(FF)V

    .line 340
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    const/16 v10, 0x21

    invoke-virtual {v8, v5, v9, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 341
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42200000    # 40.0f

    const/16 v13, 0x11

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    const/high16 v8, 0x41600000    # 14.0f

    .line 344
    invoke-virtual {v5, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 345
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 346
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->YourStarsBalance:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 352
    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$2;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    .line 359
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 361
    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v8, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 362
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 363
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const-string v8, ""

    invoke-virtual {v6, v8, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 364
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda35;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v11, 0x30

    const/16 v12, 0x77

    invoke-static {v7, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$3;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$3;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    .line 380
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 383
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 384
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v7, "x  "

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 385
    new-instance v8, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v11, Lorg/telegram/messenger/R$drawable;->mini_topup:I

    invoke-direct {v8, v11, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    invoke-virtual {v6, v8, v9, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 386
    sget v8, Lorg/telegram/messenger/R$string;->StarsTopUp:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 387
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v8, v6, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 388
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda36;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/high16 v13, 0x41880000    # 17.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v6, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 394
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 395
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 396
    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v7, Lorg/telegram/messenger/R$drawable;->mini_stats:I

    invoke-direct {v6, v7, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    invoke-virtual {v2, v6, v9, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 397
    sget v4, Lorg/telegram/messenger/R$string;->StarsStats:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v2, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 399
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda37;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v17, 0x0

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v16, 0x41a00000    # 20.0f

    const/16 v17, 0x0

    const/high16 v12, 0x42400000    # 48.0f

    const/16 v13, 0x11

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x41880000    # 17.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v9, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 407
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 408
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 409
    const-string v4, "G  "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 410
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_stars_gift:I

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v2, v4, v9, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 411
    sget v4, Lorg/telegram/messenger/R$string;->TelegramStarsGift:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 412
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v2, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 413
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda38;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v15, 0x41a00000    # 20.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    const/16 v12, 0x11

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateBalance()V

    .line 421
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 425
    :cond_0
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->preloadStarsStats(J)V

    .line 426
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v2

    .line 427
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v1

    iget-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    invoke-direct {v0, v3, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateButtonsLayouts(ZZ)V

    .line 429
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 220
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    .line 224
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 228
    :cond_0
    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    if-gez p1, :cond_1

    .line 229
    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    .line 231
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->applyScrolledPosition()V

    return-void

    .line 232
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    if-ne p1, p2, :cond_5

    .line 233
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    .line 234
    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->hadTransactions:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p3

    if-eq p2, p3, :cond_8

    .line 235
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->hadTransactions:Z

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_3

    .line 238
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 240
    :cond_3
    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    if-gez p1, :cond_4

    .line 241
    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    .line 243
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->applyScrolledPosition()V

    return-void

    .line 245
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    if-ne p1, p2, :cond_6

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_8

    .line 247
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 249
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_7

    .line 250
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateBalance()V

    return-void

    .line 251
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    if-ne p1, p2, :cond_8

    .line 252
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

    .line 253
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateBalance()V

    :cond_8
    return-void
.end method

.method protected drawActionBarShadow()Z
    .locals 1

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->attachedTransactionsLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    .line 706
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 710
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    .line 712
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->starsGiftsEnabled:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .line 719
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz v2, :cond_3

    .line 722
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_earn_stars:I

    sget v4, Lorg/telegram/messenger/R$string;->UserAffiliateProgramRowTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->UserAffiliateProgramRowText:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x4

    invoke-static {v6, v2, v3, v4, v5}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;->as(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->hasSubscriptions()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 727
    sget v2, Lorg/telegram/messenger/R$string;->StarMySubscriptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :goto_1
    iget-object v2, p2, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 729
    iget-object v2, p2, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;->asSubscription(Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 731
    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->isLoadingSubscriptions()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 732
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 733
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->didFullyLoadSubscriptions()Z

    move-result v1

    if-nez v1, :cond_6

    .line 734
    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    sget v2, Lorg/telegram/messenger/R$string;->StarMySubscriptionsExpand:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_6
    :goto_2
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_7
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->hadTransactions:Z

    if-eqz p2, :cond_8

    .line 740
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

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

    .line 742
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->emptyLayout:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 677
    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 260
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 196
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 197
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 198
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 199
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 200
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 201
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    .line 202
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    .line 203
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getOptions()Ljava/util/ArrayList;

    .line 204
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 209
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 210
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 211
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 212
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 213
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 214
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;I)V
    .locals 4

    .line 747
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 748
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->expanded:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->expanded:Z

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 751
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    .line 752
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void

    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    .line 754
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->loadSubscriptions()V

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_2
    const/4 v0, -0x4

    if-ne p2, v0, :cond_4

    .line 757
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 758
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 761
    :cond_3
    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 762
    :cond_4
    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 763
    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    if-eqz p2, :cond_6

    .line 764
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda52;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Lorg/telegram/ui/Components/UItem;)V

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Stars/StarsController;->buy(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    return-void

    .line 775
    :cond_5
    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 776
    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    if-eqz p2, :cond_6

    .line 777
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showSubscriptionSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 668
    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onPause()V

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 670
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 659
    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onResume()V

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 661
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method
