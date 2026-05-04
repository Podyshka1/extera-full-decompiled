.class public Lorg/telegram/ui/Cells/TextCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private attached:Z

.field private changeProgressStartDelay:I

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private drawLoading:Z

.field private drawLoadingProgress:F

.field private emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field public heightDp:I

.field public imageLeft:I

.field public final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private inDialogs:Z

.field private incrementLoadingProgress:Z

.field private isIcon:Z

.field private lastWidth:I

.field public leftPadding:I

.field private loadingProgress:F

.field private loadingSize:I

.field private measureDelay:Z

.field private needDivider:Z

.field public offsetFromImage:I

.field paint:Landroid/graphics/Paint;

.field private prioritizeTitleOverValue:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueImageView:Landroid/widget/ImageView;

.field public final valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueText:Ljava/lang/CharSequence;

.field public final valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x15

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 89
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 93
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x47

    .line 61
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v3, 0x32

    .line 62
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    const/16 v3, 0x15

    .line 63
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 95
    iput-object v2, v0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v3, p2

    .line 96
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    .line 98
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_0

    .line 99
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v4, 0x10

    .line 100
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 101
    const-string v5, "fonts/rregular.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/4 v6, 0x2

    .line 103
    invoke-virtual {v3, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v9, -0x2

    const/high16 v10, -0x40800000    # -1.0f

    .line 104
    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_2

    .line 107
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray:I

    goto :goto_2

    :cond_2
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    :goto_2
    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v11, 0xd

    .line 108
    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 109
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_3

    move v11, v8

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_3
    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 111
    invoke-virtual {v3, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 112
    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v3, v1, v9, v10, v10}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p3, :cond_4

    .line 115
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_4

    :cond_4
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    :goto_4
    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v11, 0x41900000    # 18.0f

    .line 116
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v3, v9, v12, v9, v11}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v11, 0x41800000    # 16.0f

    .line 117
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 118
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_5

    move v11, v7

    goto :goto_5

    :cond_5
    move v11, v8

    :goto_5
    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v11, 0x12

    .line 124
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ILjava/lang/Boolean;)V

    if-eqz p3, :cond_6

    .line 125
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_6

    :cond_6
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    :goto_6
    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 126
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_7

    move v11, v7

    goto :goto_7

    :cond_7
    move v11, v8

    :goto_7
    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 127
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 128
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    invoke-virtual {v3, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/16 v5, 0x8

    .line 130
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 134
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p3, :cond_8

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    goto :goto_8

    :cond_8
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    :goto_8
    invoke-static {v12, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 143
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2, v3, v5, v5}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 145
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    move v7, v8

    :goto_9
    or-int/lit8 v13, v7, 0x10

    const/high16 v16, 0x41b00000    # 22.0f

    const/16 v17, 0x0

    const/16 v11, 0x25

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v14, 0x41b00000    # 22.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v0, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 85
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-static {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static applyNewSpan(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3

    .line 607
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 608
    const-string p0, "  d"

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 609
    new-instance p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(F)V

    .line 610
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->usePaintAlpha:Z

    .line 611
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    .line 612
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 957
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 959
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    .line 960
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 963
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    const v4, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_2

    .line 964
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 966
    iput v2, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    const/4 v0, 0x0

    .line 967
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    goto :goto_0

    .line 970
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 972
    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    .line 973
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    .line 977
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->changeProgressStartDelay:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0xf

    .line 978
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->changeProgressStartDelay:I

    goto :goto_1

    .line 979
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    const v4, 0x3dda740e

    if-eqz v0, :cond_5

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_5

    add-float/2addr v5, v4

    .line 980
    iput v5, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v0, v5, v2

    if-lez v0, :cond_6

    .line 982
    iput v2, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 984
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v5, v0, v1

    if-eqz v5, :cond_6

    sub-float/2addr v0, v4

    .line 985
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 987
    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    :cond_6
    :goto_1
    const v0, 0x3ecccccd    # 0.4f

    .line 991
    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    mul-float/2addr v1, v0

    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    mul-float/2addr v1, v0

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 993
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    shr-int/2addr v0, v3

    .line 994
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 995
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->loadingSize:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40400000    # 3.0f

    .line 996
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    .line 998
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    .line 994
    invoke-virtual {v1, v3, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1000
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    .line 1001
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1002
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1004
    :cond_7
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1005
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1007
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    sub-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isNotEmpty()F

    move-result v3

    sub-float v3, v2, v3

    :goto_2
    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    sub-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isNotEmpty()F

    move-result v3

    sub-float/2addr v2, v3

    :goto_3
    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1009
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_b

    .line 1011
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCell;->updateEmojiBounds()V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method protected getOffsetFromImage(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x41

    return p1

    :cond_0
    const/16 p1, 0x47

    return p1
.end method

.method public getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getValueImageView()Landroid/widget/ImageView;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 923
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 924
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->attached:Z

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 932
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 933
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->attached:Z

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 834
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    if-eqz v0, :cond_8

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    const-string v1, "paintDivider"

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 837
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_1
    move-object v6, v0

    .line 839
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x41a00000    # 20.0f

    const/16 v2, 0x44

    const/16 v3, 0x48

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    int-to-float v0, v0

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    int-to-float v1, v2

    :cond_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move v2, v0

    move v3, v4

    move v4, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 845
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 847
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 848
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 849
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    .line 850
    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, ": "

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 853
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v1, :cond_2

    .line 854
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 855
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 859
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 861
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 863
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 865
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 866
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const/16 v0, 0x10

    .line 869
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p1, p5, p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    .line 251
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    .line 252
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    .line 253
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 256
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    .line 257
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 259
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_4

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    :goto_2
    int-to-float p3, p3

    goto :goto_3

    :cond_3
    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    goto :goto_2

    :goto_3
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_6

    .line 262
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    :goto_4
    int-to-float p1, p1

    goto :goto_5

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    goto :goto_4

    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 264
    :goto_6
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x32

    if-nez p3, :cond_7

    .line 265
    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    if-le p3, v0, :cond_6

    const/4 p3, 0x4

    goto :goto_7

    :cond_6
    move p3, p2

    .line 266
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    sub-int v1, p5, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, p2

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 268
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr v1, p3

    .line 269
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p3, p1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 271
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p3

    sub-int p3, p5, p3

    div-int/2addr p3, p2

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 274
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 275
    iget p1, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    if-le p1, v0, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/high16 p1, 0x40000000    # 2.0f

    :goto_9
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    div-int/2addr p3, p2

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    .line 276
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p3, :cond_9

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_a

    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    .line 277
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 280
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p5, p1

    div-int/2addr p1, p2

    .line 282
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v0, 0x41b80000    # 23.0f

    if-eqz p3, :cond_b

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_b

    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    .line 283
    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 285
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/2addr p5, p2

    .line 287
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 p2, 0x41b00000    # 22.0f

    if-eqz p1, :cond_d

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_c

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p4, p1

    .line 288
    :goto_c
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p4, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2, p1, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 189
    iget p2, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 191
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->lastWidth:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 192
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    div-float/2addr v4, v5

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 194
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->lastWidth:I

    .line 197
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x47

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x47

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x67

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    sub-int/2addr v1, v5

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x67

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    sub-int/2addr v1, v5

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 203
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, p1, v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, p1, v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 206
    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v6, v6, 0x47

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, p1, v6

    sub-int/2addr v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Landroid/view/View;->measure(II)V

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v5, v5, 0x47

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v0

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/view/View;->measure(II)V

    .line 209
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x41f80000    # 31.0f

    const/high16 v5, 0x41c00000    # 24.0f

    if-nez v0, :cond_7

    .line 210
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->isIcon:Z

    if-eqz v0, :cond_6

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 213
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    .line 216
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 217
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->isIcon:Z

    if-eqz v0, :cond_8

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 220
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 223
    :cond_9
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_a

    const/high16 v1, 0x42140000    # 37.0f

    .line 224
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 226
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected processColor(I)I
    .locals 0

    return p1
.end method

.method public reset()V
    .locals 6

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    goto :goto_0

    :cond_1
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1044
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1047
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 1048
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    const/16 v0, 0x47

    .line 1049
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v0, 0x32

    .line 1050
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    const/16 v0, 0x15

    .line 1051
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 1053
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextCell;->isIcon:Z

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setColorfulIcon(II)V
    .locals 0

    .line 617
    invoke-virtual {p0, p1, p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(III)V

    return-void
.end method

.method public setColorfulIcon(III)V
    .locals 1

    const/4 v0, 0x1

    .line 621
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(IIIZ)V

    return-void
.end method

.method public setColorfulIcon(IIIZ)V
    .locals 7

    const/4 v0, 0x1

    .line 625
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, -0x3fc00000    # -3.0f

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 630
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p4, :cond_2

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 632
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p3

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p3

    .line 633
    :goto_3
    new-instance v1, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;

    invoke-direct {v1}, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;-><init>()V

    if-eqz p4, :cond_4

    .line 634
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {v1, p1, p2, v0}, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;->setColor(IIZ)V

    .line 635
    invoke-virtual {v1, p3}, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;->setDrawBorder(Z)V

    .line 636
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColors(II)V
    .locals 3

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-ltz p1, :cond_0

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {v0, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 329
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    return-void
.end method

.method public setDrawLoading(ZIZ)V
    .locals 0

    .line 940
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    .line 941
    iput p2, p0, Lorg/telegram/ui/Cells/TextCell;->loadingSize:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 944
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 946
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->measureDelay:Z

    .line 948
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setImageLeft(I)V
    .locals 0

    .line 445
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    return-void
.end method

.method public setIsIcon(Z)V
    .locals 2

    .line 1058
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->isIcon:Z

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setIsInDialogs()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    return-void
.end method

.method public setLockLevel(ZI)V
    .locals 4

    if-gtz p2, :cond_0

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$LevelLock;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/telegram/ui/PeerColorActivity$LevelLock;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 1

    .line 873
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    if-eq v0, p1, :cond_0

    .line 874
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 875
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 876
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOffsetFromImage(I)V
    .locals 0

    .line 441
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    return-void
.end method

.method public setPrioritizeTitleOverValue(Z)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1017
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 1021
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 3

    const/16 v0, 0x15

    .line 335
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 344
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setTextAndCheck(Ljava/lang/CharSequence;ZZ)V
    .locals 3

    const/16 v0, 0x15

    .line 640
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 648
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 651
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 653
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public setTextAndCheckAndColorfulIcon(Ljava/lang/CharSequence;ZIIZ)V
    .locals 9

    const/16 v0, 0x15

    .line 502
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 504
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    invoke-virtual {p0, p4, p3}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(II)V

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-nez p1, :cond_1

    .line 511
    new-instance p1, Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 512
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, p3, p4, v2, v2}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    :goto_0
    or-int/lit8 v4, p3, 0x10

    const/high16 v7, 0x41b00000    # 22.0f

    const/4 v8, 0x0

    const/16 v2, 0x25

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_2

    .line 516
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 519
    :cond_2
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 520
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_3

    .line 522
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    return-void
.end method

.method public setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V
    .locals 3

    const/16 v0, 0x15

    .line 658
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 660
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 661
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p2, 0x40e00000    # 7.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 670
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 671
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;IZ)V
    .locals 2

    const/16 v0, 0x15

    .line 360
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p2, 0x40e00000    # 7.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 371
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 372
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/16 v0, 0x47

    .line 395
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v0, 0x12

    .line 396
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 401
    instance-of p1, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 410
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 411
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public setTextAndIconAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    const/16 v0, 0x47

    .line 1064
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v0, 0x15

    .line 1065
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1068
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1071
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1075
    instance-of p1, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 1078
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1080
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1083
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 1087
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_1

    .line 1090
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    .line 1093
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    return-void
.end method

.method public setTextAndSpoilersValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V
    .locals 3

    const/16 v0, 0x15

    .line 527
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 528
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 537
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 540
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 541
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 546
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public setTextAndSticker(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 3

    const/16 v0, 0x15

    .line 741
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 743
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 745
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 751
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 752
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 754
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/TextCell;->setValueSticker(Ljava/lang/String;)V

    return-void
.end method

.method public setTextAndSticker(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 3

    const/16 v0, 0x15

    .line 722
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 724
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 725
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 727
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 732
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 733
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 734
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/TextCell;->setValueSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 5

    const/16 v0, 0x15

    .line 453
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 457
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    .line 458
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 464
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_1

    .line 466
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 468
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    .line 469
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    return-void
.end method

.method public setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIIZ)V
    .locals 5

    const/16 v0, 0x15

    .line 482
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-virtual {p0, p5, p6, p4}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(III)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iput-boolean p7, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p7, 0x1

    .line 492
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_1

    .line 494
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    .line 497
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 571
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V

    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/16 v0, 0x47

    .line 418
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v0, 0x12

    .line 419
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 424
    instance-of p1, p3, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    check-cast p3, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 433
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 434
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 436
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V
    .locals 5

    const/16 v0, 0x15

    .line 575
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 577
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 578
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 579
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 581
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p1

    add-float/2addr v3, p1

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    sub-float/2addr v1, v3

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 582
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float p1, p1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v3, p1, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 584
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string p2, ""

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 586
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p3, 0x40e00000    # 7.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 593
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 594
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 598
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    .line 599
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    return-void
.end method

.method public setTextAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    const/16 v0, 0x15

    .line 700
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 711
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 712
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 714
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 716
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 717
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setValueSticker(Ljava/lang/String;)V
    .locals 9

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 773
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCell;->attached:Z

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 777
    :cond_0
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    .line 778
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 781
    :cond_1
    new-instance v0, Lorg/telegram/ui/Cells/TextCell$1;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Cells/TextCell$1;-><init>(Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 792
    const-string v4, "30_30"

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    .line 793
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    new-instance v0, Lorg/telegram/ui/Cells/TextCell$2;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Cells/TextCell$2;-><init>(Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/messenger/ImageReceiver;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValueSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 762
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCell;->attached:Z

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 766
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 767
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 302
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 303
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    if-eq v0, v2, :cond_1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    if-eq v0, v2, :cond_1

    .line 304
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 310
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    if-eq v0, v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    if-eq v0, v2, :cond_2

    .line 311
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    .line 313
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 316
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public updateEmojiBounds()V
    .locals 6

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v4, v2

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    .line 237
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
