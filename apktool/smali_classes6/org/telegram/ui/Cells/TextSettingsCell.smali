.class public Lorg/telegram/ui/Cells/TextSettingsCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private betterLayout:Z

.field private canDisable:Z

.field private changeProgressStartDelay:I

.field private drawLoading:Z

.field private drawLoadingProgress:F

.field private imageView:Landroid/widget/ImageView;

.field private imageViewIsColorful:Z

.field private incrementLoadingProgress:Z

.field private loadingProgress:F

.field private loadingSize:I

.field private measureDelay:Z

.field public needDivider:Z

.field private padding:I

.field paint:Landroid/graphics/Paint;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private valueImageView:Landroid/widget/ImageView;

.field private valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x15

    .line 67
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 79
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->betterLayout:Z

    .line 80
    iput-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 81
    iput v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    .line 83
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    .line 84
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const-string v7, "fonts/rregular.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 87
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 89
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x3

    const/4 v10, 0x5

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    or-int/lit8 v13, v8, 0x30

    int-to-float v14, v2

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    move/from16 v16, v14

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move/from16 v17, v14

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v4, v5

    invoke-direct {v2, v1, v5, v5, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v22, 0x140

    .line 95
    sget-object v24, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v19, 0x3f0ccccd    # 0.55f

    const-wide/16 v20, 0x0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 96
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 97
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    move v4, v9

    goto :goto_2

    :cond_2
    move v4, v10

    :goto_2
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 99
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 100
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    move v4, v9

    goto :goto_3

    :cond_3
    move v4, v10

    :goto_3
    or-int/lit8 v16, v4, 0x30

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/high16 v15, -0x40800000    # -1.0f

    move/from16 v19, v17

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    .line 103
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 105
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    move v5, v10

    goto :goto_4

    :cond_4
    move v5, v9

    :goto_4
    or-int/lit8 v20, v5, 0x10

    const/high16 v23, 0x41a80000    # 21.0f

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v21, 0x41a80000    # 21.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-direct {v2, v3, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 112
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v9, v10

    :goto_5
    or-int/lit8 v16, v9, 0x10

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/high16 v15, -0x40000000    # -2.0f

    move/from16 v19, v17

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/16 v0, 0x15

    .line 71
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 322
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoading:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_8

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    .line 325
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->incrementLoadingProgress:Z

    const v5, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_2

    .line 329
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 331
    iput v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    .line 332
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->incrementLoadingProgress:Z

    goto :goto_0

    .line 335
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    sub-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 337
    iput v4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    .line 338
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->incrementLoadingProgress:Z

    .line 342
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->changeProgressStartDelay:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0xf

    .line 343
    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->changeProgressStartDelay:I

    goto :goto_1

    .line 344
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoading:Z

    const v5, 0x3dda740e

    if-eqz v0, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v7, v6, v3

    if-eqz v7, :cond_5

    add-float/2addr v6, v5

    .line 345
    iput v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v0, v6, v3

    if-lez v0, :cond_6

    .line 347
    iput v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 349
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_6

    sub-float/2addr v0, v5

    .line 350
    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 352
    iput v4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    :cond_6
    :goto_1
    const v0, 0x3ecccccd    # 0.4f

    .line 356
    iget v5, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    mul-float/2addr v5, v0

    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v5, v0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    mul-float/2addr v5, v0

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    shr-int/2addr v0, v2

    .line 359
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingSize:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v0, v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-virtual {v5, v6, v8, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 360
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v6

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 364
    :cond_7
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 367
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    sub-float/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 368
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 370
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-eqz v0, :cond_c

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x428e0000    # 71.0f

    goto :goto_2

    :cond_9
    const/high16 v0, 0x41a00000    # 20.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 372
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    :goto_3
    move v6, v4

    goto :goto_4

    :cond_a
    int-to-float v4, v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_b

    move v1, v0

    :cond_b
    sub-int/2addr v3, v1

    int-to-float v8, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v9, v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 9

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 399
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    or-int/lit8 v4, v1, 0x10

    iget v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float v5, v1

    int-to-float v7, v1

    const/4 v8, 0x0

    const/16 v2, 0x18

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getValueImageView()Landroid/widget/ImageView;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 406
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 379
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 172
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 173
    iget-boolean p2, p1, Lorg/telegram/ui/Cells/TextSettingsCell;->measureDelay:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x43160000    # 150.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Lorg/telegram/ui/Cells/TextSettingsCell;->changeProgressStartDelay:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/high16 p2, 0x42080000    # 34.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 130
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->betterLayout:Z

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    div-int/lit8 p2, p1, 0x2

    .line 131
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    if-nez v0, :cond_3

    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageViewIsColorful:Z

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 141
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->betterLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr p2, v0

    .line 144
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_4

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 146
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->betterLayout:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr p2, v0

    .line 148
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->betterLayout:Z

    if-eqz v0, :cond_5

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p2, p1

    move p1, p2

    goto :goto_2

    .line 153
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 156
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 157
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    .line 159
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 161
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 167
    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public setBetterLayout(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->betterLayout:Z

    return-void
.end method

.method public setCanDisable(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    return-void
.end method

.method public setDrawLoading(ZIZ)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoading:Z

    .line 386
    iput p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingSize:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 389
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 391
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->measureDelay:Z

    .line 393
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 310
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 315
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 8

    .line 288
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const-string v3, "alpha"

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 292
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    new-array v7, v4, [F

    aput v5, v7, v6

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 295
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    new-array p1, v4, [F

    aput v0, p1, v6

    invoke-static {v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 298
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 299
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 300
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 302
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    .line 303
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setIcon(I)V
    .locals 5

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageViewIsColorful:Z

    if-nez p1, :cond_1

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    .line 247
    iget p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void

    .line 249
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    .line 252
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x428e0000    # 71.0f

    if-eqz p1, :cond_2

    .line 257
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void

    .line 259
    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 203
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 220
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextValueColor(I)V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public updateRTL()V
    .locals 11

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/lit8 v6, v1, 0x30

    iget v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float v7, v1

    int-to-float v9, v1

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    or-int/lit8 v6, v1, 0x30

    iget v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float v7, v1

    int-to-float v9, v1

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    or-int/lit8 v6, v1, 0x10

    const/high16 v9, 0x41a80000    # 21.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v7, 0x41a80000    # 21.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    or-int/lit8 v5, v2, 0x10

    iget v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    int-to-float v6, v1

    int-to-float v8, v1

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
