.class public Lorg/telegram/ui/Components/SwipeGestureSettingsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field backgroundKeys:[I

.field colorProgress:F

.field currentColorKey:I

.field currentIconIndex:I

.field currentIconValue:I

.field filledPaint:Landroid/graphics/Paint;

.field fromColor:I

.field hasTabs:Z

.field iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

.field icons:[Lorg/telegram/ui/Components/RLottieDrawable;

.field linePaint:Landroid/graphics/Paint;

.field outlinePaint:Landroid/graphics/Paint;

.field private picker:Lorg/telegram/ui/Components/NumberPicker;

.field pickerDividersPaint:Landroid/graphics/Paint;

.field progressToSwipeFolders:F

.field rect:Landroid/graphics/RectF;

.field strings:[Ljava/lang/String;

.field swapIconRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0hUX7nY40mVAwwp2tf4tNwb3uSQ(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$new$1(Lorg/telegram/ui/Components/NumberPicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$2gXlfLhO1ET6asucbmiPmkPSnWw(Lorg/telegram/ui/Components/SwipeGestureSettingsView;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$new$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vUPyH13Em9guWjKltpPfhtiXJgg(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$swapIcons$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 61
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x6

    .line 46
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    .line 47
    new-array v5, v2, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    .line 48
    new-array v2, v2, [Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x2

    .line 51
    new-array v5, v2, [Lorg/telegram/ui/Components/RLottieImageView;

    iput-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 55
    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    .line 63
    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsPin:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 64
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsRead:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 65
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsArchive:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 66
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsMute:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v4, v8

    .line 67
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsDelete:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v4, v9

    .line 68
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsFolders:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x5

    aput-object v6, v4, v10

    .line 70
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    aput v6, v4, v7

    .line 71
    aput v6, v4, v3

    .line 72
    aput v6, v4, v2

    .line 73
    aput v6, v4, v8

    .line 74
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    aput v6, v4, v9

    .line 75
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    aput v6, v4, v10

    .line 77
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v4, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;

    const/16 v6, 0xd

    invoke-direct {v4, v0, v1, v6}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    .line 100
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 101
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/NumberPicker;->setDrawDividers(Z)V

    .line 102
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v6, v4, 0x1

    iput-boolean v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    .line 103
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v2

    :goto_0
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 104
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v3

    :goto_1
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setAllItemsCount(I)V

    .line 105
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 106
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    new-instance v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 107
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    new-instance v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V

    .line 116
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 117
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 119
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    const/high16 v16, 0x41a80000    # 21.0f

    const/16 v17, 0x0

    const/16 v11, 0x84

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x5

    const/high16 v14, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 123
    iput v7, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    move v4, v7

    :goto_2
    if-ge v4, v2, :cond_2

    .line 125
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v4

    .line 126
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v6, v6, v4

    const/high16 v16, 0x43380000    # 184.0f

    const/16 v17, 0x0

    const/16 v11, 0x1c

    const/high16 v12, 0x41e00000    # 28.0f

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 129
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 131
    iget-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 134
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v7

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 135
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-static {v1, v7, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 137
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    if-ne v1, v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    .line 138
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    return-void
.end method

.method private synthetic lambda$new$0(I)Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIcons()V

    .line 110
    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p2, 0x3

    const/4 p3, 0x2

    .line 113
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$swapIcons$2()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIcons()V

    return-void
.end method

.method private swapIcons()V
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    .line 149
    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    if-eq v1, v0, :cond_3

    .line 150
    iput v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    .line 151
    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x2

    .line 152
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 154
    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 157
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    .line 162
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    iget v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    aget-object v0, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-static {v0, v2, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 164
    iput v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    .line 166
    new-instance v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 9

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v1, v0, p1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 287
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_pin:I

    :goto_0
    move v3, v1

    goto :goto_1

    .line 302
    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_disabled:I

    goto :goto_0

    .line 293
    :cond_1
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_delete:I

    goto :goto_0

    .line 296
    :cond_2
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_mute:I

    goto :goto_0

    .line 290
    :cond_3
    sget v1, Lorg/telegram/messenger/R$raw;->chats_archive:I

    goto :goto_0

    .line 299
    :cond_4
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_read:I

    goto :goto_0

    .line 305
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    aput-object v2, v0, p1

    .line 306
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateIconColor(I)V

    .line 309
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    move-object v0, p1

    .line 180
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v2, 0x3d5a740e

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 184
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_2

    add-float/2addr v7, v2

    .line 185
    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v1, v7, v5

    if-lez v1, :cond_1

    .line 187
    iput v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    goto :goto_1

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    .line 193
    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v7, v1, v6

    if-eqz v7, :cond_4

    sub-float/2addr v1, v2

    .line 194
    iput v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    .line 196
    iput v6, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    goto :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 203
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x43040000    # 132.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v3, v7

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v1, v3

    .line 208
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    .line 212
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v8, v4

    int-to-float v9, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    const v9, 0x3f666666    # 0.9f

    if-gez v7, :cond_5

    .line 217
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    iget-object v10, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v10

    aget v7, v7, v10

    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    .line 218
    iput v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    .line 219
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    iget v10, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-static {v7, v10, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    .line 220
    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    goto :goto_2

    .line 221
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    iget-object v10, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v10

    aget v7, v7, v10

    iget v10, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    if-eq v7, v10, :cond_6

    .line 222
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v10, v11, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    invoke-static {v7, v10, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    .line 223
    iput v6, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    .line 224
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    iget-object v10, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v10

    aget v7, v7, v10

    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    .line 227
    :cond_6
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    cmpl-float v10, v7, v5

    if-eqz v10, :cond_8

    const v10, 0x3e23d70a    # 0.16f

    add-float/2addr v7, v10

    .line 228
    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_7

    .line 230
    iput v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    goto :goto_3

    .line 232
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 236
    :cond_8
    :goto_3
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    iget v12, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v11, v12, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    iget v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    invoke-static {v7, v9, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    .line 238
    iget-object v9, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    const/16 v10, 0xff

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/high16 v10, 0x42680000    # 58.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v4

    int-to-float v4, v10

    invoke-virtual {v7, v3, v8, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 258
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    const/16 v3, 0x39

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x41b80000    # 23.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float/2addr v1, v6

    iget-object v3, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x42880000    # 68.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v1, v0, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    move v4, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 351
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p1

    add-int/2addr p1, v0

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 356
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 342
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 345
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42cc0000    # 102.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 335
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateColors()V

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setTextColor(I)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    const/4 v0, 0x0

    .line 327
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 328
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateIconColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateIconColor(I)V
    .locals 4

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 314
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 315
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v2, v2, p1

    const-string v3, "Arrow.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, p1

    const-string v2, "Box2.**"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    const-string v0, "Box1.**"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method
