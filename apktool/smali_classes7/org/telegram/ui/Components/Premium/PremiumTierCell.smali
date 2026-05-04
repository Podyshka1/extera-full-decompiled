.class public Lorg/telegram/ui/Components/Premium/PremiumTierCell;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private color0:I

.field private color1:I

.field private colorKey1:I

.field private colorKey2:I

.field protected discountView:Landroid/widget/TextView;

.field private globalGradientView:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientWidth:I

.field private hasDivider:Z

.field private isDrawingGradient:Z

.field private lastUpdateTime:J

.field private leftPaddingToCheckboxDp:I

.field private leftPaddingToTextDp:I

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private parentWidth:I

.field private parentXOffset:F

.field private pricePerMonthView:Landroid/widget/TextView;

.field private pricePerYearStrikeView:Landroid/widget/TextView;

.field private pricePerYearView:Landroid/widget/TextView;

.field protected tier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

.field private titleView:Landroid/widget/TextView;

.field private totalTranslation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 67
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xc

    .line 42
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToTextDp:I

    const/16 v2, 0x8

    .line 43
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    .line 48
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->colorKey1:I

    .line 49
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->colorKey2:I

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->paint:Landroid/graphics/Paint;

    .line 56
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->matrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v3, 0x18

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v3, 0xa

    .line 70
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 71
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v3, v3, v4}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 72
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    .line 75
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 79
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    or-int/lit8 v9, v3, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/high16 v8, -0x40000000    # -2.0f

    const/4 v10, 0x0

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    .line 82
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    or-int/lit8 v12, v7, 0x50

    const/4 v15, 0x0

    const/high16 v16, 0x41000000    # 8.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 92
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 93
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    or-int/lit8 v12, v8, 0x50

    const/4 v15, 0x0

    const/high16 v16, 0x41000000    # 8.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 99
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    or-int/lit8 v12, v5, 0x50

    const/4 v15, 0x0

    const/high16 v16, 0x41000000    # 8.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    .line 102
    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 105
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    const v2, 0x800005

    const/4 v3, -0x2

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 107
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 109
    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private checkRtlAndLayout(Landroid/view/View;)V
    .locals 4

    .line 206
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 207
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 208
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 209
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    .line 210
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 214
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Z)V
    .locals 5

    .line 250
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->tier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 251
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->hasDivider:Z

    .line 253
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x6

    if-eq p2, v2, :cond_2

    const/16 v2, 0xc

    if-eq p2, v2, :cond_1

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    .line 256
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v3

    if-le v3, v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v3

    rem-int/2addr v3, v2

    if-nez v3, :cond_0

    .line 257
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v3

    div-int/2addr v3, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "PremiumTierAnnualYears"

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Months"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 255
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumTierAnnual:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 265
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumTierSemiannual:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 268
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumTierMonthly:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p2

    if-nez p2, :cond_5

    :cond_4
    move p2, v1

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->isDrawingGradient:Z

    if-nez p2, :cond_7

    .line 274
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getDiscount()I

    move-result p2

    if-gtz p2, :cond_6

    .line 275
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 279
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumOptionDiscount:I

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getDiscount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getFormattedPricePerYearRegular()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PricePerYear:I

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getFormattedPricePerYear()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PricePerMonthMe:I

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getFormattedPricePerMonth()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    if-eqz p1, :cond_8

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->YourCurrentPlan:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 293
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->GiftPremiumOptionDiscount:I

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {p2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    const-string p2, "USD00.00"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PricePerYear:I

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {p2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PricePerMonthMe:I

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 179
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->isDrawingGradient:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->paint:Landroid/graphics/Paint;

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->globalGradientView:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, v1, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->paint:Landroid/graphics/Paint;

    .line 185
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->updateColors()V

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->updateGradient()V

    .line 190
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 191
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    invoke-virtual {v1, v3, v5, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 201
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->tier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 123
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->hasDivider:Z

    if-eqz v0, :cond_1

    .line 126
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object v1, p1

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float v8, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v9, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v11, p1

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 152
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p5, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkRtlAndLayout(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p4

    float-to-int p2, p2

    .line 156
    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToTextDp:I

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0x18

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    add-int/2addr p3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3, p2, p5, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkRtlAndLayout(Landroid/view/View;)V

    .line 162
    iget p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToTextDp:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    div-float/2addr p3, p4

    float-to-int p3, p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    :goto_1
    invoke-virtual {p1, p2, p3, p5, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkRtlAndLayout(Landroid/view/View;)V

    .line 165
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 166
    iget p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToTextDp:I

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x6

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p1, p2, p3, p5, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkRtlAndLayout(Landroid/view/View;)V

    .line 170
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToTextDp:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1, p2, p3, p5, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkRtlAndLayout(Landroid/view/View;)V

    .line 173
    iget p2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToCheckboxDp:I

    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->leftPaddingToTextDp:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    const/high16 p4, 0x40c00000    # 6.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    goto :goto_2

    :cond_4
    move p3, p5

    :goto_2
    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1, p2, p3, p5, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkRtlAndLayout(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 219
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42680000    # 58.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x41e00000    # 28.0f

    .line 220
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p1, v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->discountView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->measure(II)V

    .line 230
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearStrikeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :cond_1
    sub-int/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerYearView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x41000000    # 8.0f

    .line 234
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    .line 237
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setCirclePaintProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setCirclePaintProvider(Lorg/telegram/messenger/GenericProvider;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 114
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->titleView:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->pricePerMonthView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/Premium/PremiumTierCell;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->globalGradientView:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    return-void
.end method

.method public setParentXOffset(F)V
    .locals 0

    .line 135
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->parentXOffset:F

    return-void
.end method

.method public setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V

    return-void
.end method

.method public updateColors()V
    .locals 11

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->globalGradientView:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->updateColors()V

    return-void

    .line 344
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->colorKey1:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 345
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->colorKey2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 346
    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->color1:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->color0:I

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 347
    :cond_2
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->color0:I

    .line 348
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->color1:I

    .line 349
    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->gradientWidth:I

    int-to-float v6, v2

    filled-new-array {v1, v0, v0, v1}, [I

    move-result-object v8

    const/4 v0, 0x4

    new-array v9, v0, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->gradient:Landroid/graphics/LinearGradient;

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateGradient()V
    .locals 7

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->globalGradientView:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->updateGradient()V

    return-void

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 311
    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->lastUpdateTime:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    const-wide/16 v2, 0x10

    :cond_1
    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const-wide/16 v2, 0x0

    .line 318
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->parentWidth:I

    if-nez v4, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 322
    :cond_3
    iput-wide v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->lastUpdateTime:J

    .line 323
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->totalTranslation:I

    int-to-float v0, v0

    int-to-long v5, v4

    mul-long/2addr v2, v5

    long-to-float v1, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->totalTranslation:I

    mul-int/lit8 v4, v4, 0x4

    if-lt v0, v4, :cond_4

    .line 325
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->totalTranslation:I

    .line 327
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->totalTranslation:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->parentXOffset:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_5

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void
.end method
