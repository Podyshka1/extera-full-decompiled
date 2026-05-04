.class public Lorg/telegram/ui/Cells/NotificationsCheckCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private animationsEnabled:Z

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private currentHeight:I

.field private drawLine:Z

.field private imageView:Landroid/widget/ImageView;

.field private isMultiline:Z

.field private multilineValueTextView:Landroid/widget/TextView;

.field private needDivider:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textOffset:I

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x15

    const/16 v3, 0x46

    move-object v0, p0

    move-object v1, p1

    .line 51
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 67
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    .line 68
    iput-object v2, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v4, p4

    .line 69
    iput v4, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textOffset:I

    const/4 v5, 0x0

    .line 71
    invoke-virtual {v0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    move/from16 v6, p3

    .line 72
    iput v6, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-eqz p5, :cond_1

    .line 75
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v8, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 77
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v6

    :goto_0
    or-int/lit8 v12, v9, 0x10

    const/high16 v15, 0x40e00000    # 7.0f

    const/16 v16, 0x0

    const/16 v10, 0x30

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v13, 0x41100000    # 9.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_1
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    .line 82
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v8, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const-string v9, "fonts/rregular.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 86
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    or-int/lit8 v10, v10, 0x10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    move v11, v7

    goto :goto_2

    :cond_3
    move v11, v6

    :goto_2
    or-int/lit8 v14, v11, 0x30

    const/high16 v11, 0x42b00000    # 88.0f

    if-eqz v10, :cond_4

    move v15, v11

    goto :goto_4

    :cond_4
    if-eqz p5, :cond_5

    move v12, v4

    goto :goto_3

    :cond_5
    move/from16 v12, p2

    :goto_3
    int-to-float v12, v12

    move v15, v12

    :goto_4
    iget v12, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v12, v12, -0x46

    const/16 v19, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0xd

    int-to-float v12, v12

    if-eqz v10, :cond_7

    if-eqz p5, :cond_6

    move v10, v4

    goto :goto_5

    :cond_6
    move/from16 v10, p2

    :goto_5
    int-to-float v10, v10

    move/from16 v17, v10

    goto :goto_6

    :cond_7
    move/from16 v17, v11

    :goto_6
    const/16 v18, 0x0

    move/from16 v16, v12

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v16, 0x140

    .line 93
    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v13, 0x3f0ccccd    # 0.55f

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 95
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v12, 0x41500000    # 13.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 96
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_8

    move v9, v7

    goto :goto_7

    :cond_8
    move v9, v6

    :goto_7
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 98
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v8, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    .line 100
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_9

    move v13, v7

    goto :goto_8

    :cond_9
    move v13, v6

    :goto_8
    or-int/lit8 v22, v13, 0x30

    if-eqz v9, :cond_a

    move/from16 v23, v11

    goto :goto_a

    :cond_a
    if-eqz p5, :cond_b

    move v13, v4

    goto :goto_9

    :cond_b
    move/from16 v13, p2

    :goto_9
    int-to-float v13, v13

    move/from16 v23, v13

    :goto_a
    if-eqz p5, :cond_c

    move/from16 v13, v19

    goto :goto_b

    :cond_c
    move v13, v5

    :goto_b
    rsub-int/lit8 v13, v13, 0x1d

    iget v14, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v14, v14, -0x46

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    if-eqz v9, :cond_e

    if-eqz p5, :cond_d

    move v9, v4

    goto :goto_c

    :cond_d
    move/from16 v9, p2

    :goto_c
    int-to-float v9, v9

    move/from16 v25, v9

    goto :goto_d

    :cond_e
    move/from16 v25, v11

    :goto_d
    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    move/from16 v24, v13

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    .line 103
    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v8, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v3, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f

    move v8, v7

    goto :goto_e

    :cond_f
    move v8, v6

    :goto_e
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 107
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 108
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 109
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_10

    move v9, v7

    goto :goto_f

    :cond_10
    move v9, v6

    :goto_f
    or-int/lit8 v14, v9, 0x30

    if-eqz v8, :cond_11

    move v15, v11

    goto :goto_11

    :cond_11
    if-eqz p5, :cond_12

    move v9, v4

    goto :goto_10

    :cond_12
    move/from16 v9, p2

    :goto_10
    int-to-float v9, v9

    move v15, v9

    :goto_11
    if-eqz p5, :cond_13

    move/from16 v9, v19

    goto :goto_12

    :cond_13
    move v9, v5

    :goto_12
    rsub-int/lit8 v9, v9, 0x26

    iget v10, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v10, v10, -0x46

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    if-eqz v8, :cond_15

    if-eqz p5, :cond_14

    goto :goto_13

    :cond_14
    move/from16 v4, p2

    :goto_13
    int-to-float v11, v4

    :cond_15
    move/from16 v17, v11

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    move/from16 v16, v9

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v3, Lorg/telegram/ui/Cells/NotificationsCheckCell$1;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell$1;-><init>(Lorg/telegram/ui/Cells/NotificationsCheckCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 120
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v1, v2, v4, v4}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 121
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_16

    goto :goto_14

    :cond_16
    move v6, v7

    :goto_14
    or-int/lit8 v9, v6, 0x10

    const/high16 v12, 0x41b00000    # 22.0f

    const/4 v13, 0x0

    const/16 v7, 0x25

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v10, 0x41b00000    # 22.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 124
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 59
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/16 v4, 0x40

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    .line 63
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMultilineValue()Landroid/widget/TextView;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 217
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->needDivider:Z

    if-eqz v1, :cond_4

    .line 219
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v5, v1

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textOffset:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    .line 220
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v6, v1

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget v2, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textOffset:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    sub-int/2addr v1, v2

    int-to-float v7, v1

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v8, v1

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    .line 218
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    if-eqz v1, :cond_6

    .line 227
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42980000    # 76.0f

    if-eqz v1, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 228
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v1

    int-to-float v12, v2

    add-int/lit8 v1, v1, 0x2

    int-to-float v13, v1

    .line 229
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v14, v2

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 239
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 240
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 243
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 137
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 140
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected processColor(I)I
    .locals 0

    return p1
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->animationsEnabled:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZI)V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    return-void
.end method

.method public setMultiline(Z)V
    .locals 2

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 153
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 145
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method public setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 157
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZZ)V

    return-void
.end method

.method public setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZZ)V
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object p3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 166
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->animationsEnabled:Z

    invoke-virtual {p3, p4, p5, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    .line 167
    invoke-virtual {p0, p6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setMultiline(Z)V

    .line 168
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    if-eqz p3, :cond_1

    .line 169
    iget-object p3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3, p2, p8}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 173
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    :goto_1
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    iput-boolean p7, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->needDivider:Z

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->multilineValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method
