.class public Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResaleBuyTransferAlert"
.end annotation


# instance fields
.field public final alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

.field private final canSwitchToTON:Z

.field public final context:Landroid/content/Context;

.field private final currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

.field public final currentAccount:I

.field public final dialogId:J

.field private final forms:Ljava/util/HashMap;

.field public final gift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

.field private final giftName:Ljava/lang/String;

.field private lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

.field private final loadingForms:Ljava/util/HashSet;

.field private positiveButton:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rootView:Landroid/widget/FrameLayout;

.field private selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

.field private final textInfoView:Landroid/widget/TextView;

.field private tonHint:Lorg/telegram/ui/Stories/recorder/HintView2;


# direct methods
.method public static synthetic $r8$lambda$Ir3-yo6P7HWmUPIq9zYFIETuXUY(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$LOV2QiXXD9CtDCYjrDIYFXlIlOk(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lambda$onUpdateCurrency$4(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdlvJ9RRUBKs06x07gI0LVn0Lrc(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2Z0-R10XLvYZO7xtLLufPG0tQI(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lambda$onUpdateCurrency$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tP1XVtpq9bbSONKCEQwZpPvwVRg(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lambda$new$1(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrencyTabsView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrootView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettonHint(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->tonHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;IJLjava/lang/String;ZLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-wide/from16 v5, p6

    .line 7746
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7731
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->forms:Ljava/util/HashMap;

    .line 7732
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->loadingForms:Ljava/util/HashSet;

    .line 7747
    iput-object v3, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->context:Landroid/content/Context;

    .line 7748
    iput-object v0, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->gift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 7749
    iput-wide v5, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->dialogId:J

    move/from16 v8, p5

    .line 7750
    iput v8, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currentAccount:I

    .line 7751
    iget-object v9, v2, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    iput-object v9, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    .line 7752
    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7753
    iput-object v4, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v2, p8

    .line 7754
    iput-object v2, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->giftName:Ljava/lang/String;

    .line 7756
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    xor-int/lit8 v7, v2, 0x1

    .line 7757
    iput-boolean v7, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->canSwitchToTON:Z

    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-ltz v7, :cond_0

    .line 7760
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_0

    .line 7761
    :cond_0
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 7763
    :goto_0
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 7764
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7766
    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;

    invoke-direct {v9, v1, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;Landroid/content/Context;)V

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    .line 7787
    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    if-nez v2, :cond_1

    .line 7790
    new-instance v2, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    .line 7791
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 7792
    sget v12, Lorg/telegram/messenger/R$string;->Gift2BuyInStars:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7793
    sget v12, Lorg/telegram/messenger/R$string;->Gift2BuyInTON:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7794
    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)V

    invoke-virtual {v2, v11, v12}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->setTabs(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    const/16 v18, 0x12

    const/16 v19, 0xc

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x12

    const/16 v17, 0x0

    .line 7801
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 7803
    :cond_1
    iput-object v10, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    .line 7805
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7806
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 7807
    invoke-virtual {v2, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7808
    sget v11, Lorg/telegram/messenger/R$string;->Gift2BuyPriceOnlyTON:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x11

    .line 7809
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v17, 0x18

    const/16 v18, 0x4

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x11

    const/16 v15, 0x18

    const/16 v16, 0x4

    .line 7810
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7812
    :goto_1
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;

    invoke-direct {v2, v3, v0, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/tgnet/TLObject;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/4 v15, -0x4

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7814
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->textInfoView:Landroid/widget/TextView;

    .line 7815
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 7816
    invoke-virtual {v2, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v16, 0x18

    const/16 v17, 0x4

    const/16 v14, 0x18

    const/4 v15, 0x4

    .line 7817
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p9, :cond_3

    .line 7820
    new-instance v2, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7821
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->addAttributeRow(Lorg/telegram/ui/Components/TableView;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V

    .line 7822
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->addAttributeRow(Lorg/telegram/ui/Components/TableView;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V

    .line 7823
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->addAttributeRow(Lorg/telegram/ui/Components/TableView;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V

    .line 7824
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2

    .line 7825
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v11

    iget-wide v12, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_amount:J

    iget-object v14, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_currency:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v5

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_currency:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 7826
    sget v5, Lorg/telegram/messenger/R$string;->GiftValue2:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "~"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_2
    const/16 v16, 0x17

    const/16 v17, 0x4

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/16 v13, 0x30

    const/16 v14, 0x17

    const/16 v15, 0x10

    .line 7828
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7831
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7832
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda1;

    move-object/from16 v5, p10

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 7833
    const-string v2, "_"

    invoke-virtual {v6, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 7860
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 7861
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 7796
    sget-object p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    goto :goto_0

    .line 7797
    :cond_0
    sget-object p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const/4 p1, 0x1

    .line 7799
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->onUpdateCurrency(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 12

    .line 7834
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->forms:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;

    if-nez v0, :cond_0

    goto :goto_1

    .line 7839
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    .line 7840
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7841
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_4

    .line 7843
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    .line 7844
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne p1, v1, :cond_2

    .line 7845
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    iget-object p1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;J)V

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-void

    .line 7846
    :cond_2
    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne p1, v1, :cond_3

    .line 7847
    new-instance v3, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZLjava/lang/Runnable;)V

    invoke-virtual {v3}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->show()V

    :cond_3
    :goto_1
    return-void

    .line 7853
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-eqz p1, :cond_5

    .line 7854
    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel()V

    .line 7855
    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    .line 7858
    :cond_5
    invoke-virtual/range {p5 .. p6}, Lorg/telegram/ui/ActionBar/AlertDialog;->makeButtonLoading(I)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    move-object/from16 p2, p4

    invoke-interface {p2, v0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onUpdateCurrency$2(Landroid/view/View;)V
    .locals 2

    .line 7901
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$onUpdateCurrency$4(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V
    .locals 2

    .line 7936
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne p1, v1, :cond_0

    .line 7937
    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    .line 7939
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->loadingForms:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 7941
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->forms:Ljava/util/HashMap;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;-><init>(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7942
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->onUpdateCurrency(Z)V

    :cond_1
    return-void
.end method

.method private onUpdateCurrency(Z)V
    .locals 10

    .line 7884
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->selectedCurrency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    .line 7885
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->forms:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;

    .line 7887
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->textInfoView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3e800000    # 0.25f

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7888
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->textInfoView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7889
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->positiveButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7890
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/Stars/BalanceCloud;->setCurrency(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Z)V

    .line 7891
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    if-eqz v2, :cond_4

    .line 7892
    sget-object v5, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {v2, v5, p1}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->setSelectedIndex(IZ)V

    .line 7894
    :cond_4
    sget-object p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, p1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->tonHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7895
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->tonHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 7898
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    if-eqz v2, :cond_7

    .line 7899
    sget-object v5, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v5, :cond_6

    .line 7900
    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 7904
    :cond_6
    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7908
    :cond_7
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-eqz v2, :cond_8

    .line 7909
    invoke-virtual {v2}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel()V

    const/4 v2, 0x0

    .line 7910
    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    :cond_8
    if-eqz v1, :cond_d

    .line 7914
    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->dialogId:J

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v4

    .line 7916
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v5, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const/4 v6, 0x2

    if-ne v2, v5, :cond_b

    .line 7917
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->positiveButton:Landroid/widget/TextView;

    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v5}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v7

    long-to-int v5, v7

    const-string v7, "Gift2BuyDoPrice2"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7918
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->textInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 7919
    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v5}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->giftName:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "Gift2BuyPriceSelfText"

    invoke-static {v7, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 7920
    :cond_a
    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v5}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->giftName:Ljava/lang/String;

    iget-wide v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->dialogId:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v4

    aput-object v8, v9, v3

    const-string v7, "Gift2BuyPriceText"

    invoke-static {v7, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 7918
    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7923
    :cond_b
    iget-object v2, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v2, p1, :cond_e

    .line 7924
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->positiveButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2BuyDoPrice2TON:I

    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v5}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asFormatString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7925
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->textInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 7926
    sget v0, Lorg/telegram/messenger/R$string;->Gift2BuyPriceSelfTextTON:I

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asFormatString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->giftName:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 7927
    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->Gift2BuyPriceTextTON:I

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asFormatString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->giftName:Ljava/lang/String;

    iget-wide v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v2, v7, v3

    aput-object v5, v7, v6

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7925
    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 7931
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v4, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->makeButtonLoading(IZZ)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->lastPositiveButtonProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    .line 7932
    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    .line 7934
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->loadingForms:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 7935
    iget p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->currentAccount:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->gift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->dialogId:J

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)V

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->getResellingGiftForm(Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public show()V
    .locals 10

    .line 7865
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setShowStarsBalance(Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 7866
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->positiveButton:Landroid/widget/TextView;

    .line 7867
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getStarsBalanceCloud()Lorg/telegram/ui/Stars/BalanceCloud;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    .line 7868
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getFullscreenContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->rootView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7870
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->canSwitchToTON:Z

    if-eqz v0, :cond_0

    .line 7871
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    .line 7872
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7873
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v3, 0x1388

    .line 7874
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Gift2BuyPricePayHintTON:I

    .line 7875
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->tonHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const v1, 0x40ea8f5c    # 7.33f

    .line 7876
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 7877
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->rootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->tonHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7880
    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->onUpdateCurrency(Z)V

    return-void
.end method
