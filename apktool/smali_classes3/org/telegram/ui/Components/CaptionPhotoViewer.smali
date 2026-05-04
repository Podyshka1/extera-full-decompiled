.class public abstract Lorg/telegram/ui/Components/CaptionPhotoViewer;
.super Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.source "SourceFile"


# instance fields
.field private final SHOW_ONCE:I

.field private final addPhotoButton:Landroid/widget/ImageView;

.field private addPhotoVisible:Z

.field private final applyCaption:Ljava/lang/Runnable;

.field private backgroundForCaptionButton:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private final collapseMoveButton:Ljava/lang/Runnable;

.field private final hint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private isVideo:Z

.field private final moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final moveButtonBounds:Landroid/graphics/RectF;

.field private moveButtonExpanded:Z

.field private final moveButtonExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private moveButtonIcon:Landroid/graphics/drawable/Drawable;

.field private final moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private moveButtonVisible:Z

.field private onTTLChange:Lorg/telegram/messenger/Utilities$Callback;

.field private timer:I

.field private final timerButton:Landroid/widget/ImageView;

.field private final timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

.field private timerPopup:Lorg/telegram/ui/Components/ItemOptions;

.field private timerVisible:Z

.field private final values:[I


# direct methods
.method public static synthetic $r8$lambda$E_sr66Oa_Seasj4QQinzH_ZqksQ(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$setTimerVisible$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z00lyUV7vWYKmUf-56Hht27IMcI(Lorg/telegram/ui/Components/CaptionPhotoViewer;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$new$1(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOGcESTGjPrQ8xfaEulsPAZt9zY(Lorg/telegram/ui/Components/CaptionPhotoViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhwBMwItP52M1FpbN4Hm43czDiw(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$setAddPhotoVisible$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zS-kgtkylpLNx0BL2q8o5pLptgk(Lorg/telegram/ui/Components/CaptionPhotoViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Ljava/lang/Runnable;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 76
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    const/4 v8, 0x0

    .line 47
    iput v8, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    const v0, 0x7fffffff

    .line 48
    iput v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->SHOW_ONCE:I

    const/16 v2, 0xa

    const/16 v3, 0x1e

    const/4 v9, 0x3

    .line 49
    filled-new-array {v0, v9, v2, v3, v8}, [I

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->values:[I

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    .line 57
    new-instance v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v10, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 58
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 149
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 150
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 164
    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    move-object/from16 v0, p7

    .line 77
    iput-object v0, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->applyCaption:Ljava/lang/Runnable;

    const/high16 v0, 0x41600000    # 14.0f

    .line 79
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 80
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/4 v0, -0x1

    .line 81
    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 82
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    sget v2, Lorg/telegram/messenger/R$string;->MoveCaptionDown:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_link_below:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 86
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->MoveCaptionUp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_link_above:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    :goto_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    .line 91
    sget v3, Lorg/telegram/messenger/R$drawable;->filled_add_photo:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 94
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const v6, 0x40ffffff    # 7.9999995f

    const/4 v10, 0x1

    invoke-static {v6, v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v1, v8, v8}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->setAddPhotoVisible(ZZ)V

    .line 96
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v5

    const/16 v11, 0x30

    const/16 v12, 0x50

    if-eqz v5, :cond_1

    move v5, v11

    goto :goto_1

    :cond_1
    move v5, v12

    :goto_1
    or-int/lit8 v15, v5, 0x3

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v5

    const/high16 v20, 0x40c00000    # 6.0f

    const/16 v21, 0x0

    if-eqz v5, :cond_2

    move/from16 v17, v20

    goto :goto_2

    :cond_2
    move/from16 v17, v21

    :goto_2
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v5

    if-eqz v5, :cond_3

    move/from16 v19, v21

    goto :goto_3

    :cond_3
    move/from16 v19, v20

    :goto_3
    const/16 v13, 0x2c

    const/high16 v14, 0x42300000    # 44.0f

    const/high16 v16, 0x41600000    # 14.0f

    const/16 v18, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    .line 99
    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    invoke-virtual {v1, v8, v8}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->setTimerVisible(ZZ)V

    .line 103
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v11

    goto :goto_4

    :cond_4
    move v3, v12

    :goto_4
    or-int/lit8 v15, v3, 0x5

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v17, v20

    goto :goto_5

    :cond_5
    move/from16 v17, v21

    :goto_5
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v19, v21

    goto :goto_6

    :cond_6
    move/from16 v19, v20

    :goto_6
    const/16 v13, 0x2c

    const/high16 v14, 0x42300000    # 44.0f

    const/16 v16, 0x0

    const/high16 v18, 0x41200000    # 10.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    if-eqz v4, :cond_7

    move v9, v10

    :cond_7
    invoke-direct {v3, v7, v9}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v4, 0x41400000    # 12.0f

    .line 106
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 107
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_7

    :cond_8
    move/from16 v6, v21

    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v21, v7

    :goto_8
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x3e580000    # -21.0f

    .line 108
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 109
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 110
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    move v11, v12

    :goto_9
    or-int/lit8 v4, v11, 0x5

    invoke-static {v0, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changeTimer(I)V
    .locals 9

    .line 309
    iget v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-ne v0, p1, :cond_0

    goto/16 :goto_5

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->setTimer(I)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onTTLChange:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_1

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    if-nez p1, :cond_3

    .line 318
    iget-boolean v6, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    if-eqz v6, :cond_2

    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodVideoKeep:I

    goto :goto_0

    :cond_2
    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodPhotoKeep:I

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 319
    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 320
    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 321
    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v7, v1, v4, v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto/16 :goto_3

    :cond_3
    const v6, 0x7fffffff

    if-ne p1, v6, :cond_5

    .line 325
    iget-boolean v6, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    if-eqz v6, :cond_4

    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodVideoSetOnce:I

    goto :goto_1

    :cond_4
    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodPhotoSetOnce:I

    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 327
    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 328
    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v7, v1, v4, v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_3

    :cond_5
    if-lez p1, :cond_9

    .line 332
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    if-eqz v0, :cond_6

    const-string v0, "TimerPeriodVideoSetSeconds"

    goto :goto_2

    :cond_6
    const-string v0, "TimerPeriodPhotoSetSeconds"

    :goto_2
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v7, v4, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 341
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getEditTextHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v3, v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v2, -0x40800000    # -1.0f

    :cond_7
    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    if-lez p1, :cond_8

    .line 343
    sget p1, Lorg/telegram/messenger/R$raw;->fire_on:I

    goto :goto_4

    :cond_8
    sget p1, Lorg/telegram/messenger/R$raw;->fire_off:I

    .line 344
    :goto_4
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    .line 345
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 349
    iput-boolean v5, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_5
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->changeTimer(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 6

    .line 113
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    return-void

    .line 118
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 120
    new-instance p2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {p2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 122
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    sget v0, Lorg/telegram/messenger/R$string;->TimerPeriodHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 124
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->values:[I

    array-length v0, p1

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    if-nez v2, :cond_1

    .line 127
    sget v3, Lorg/telegram/messenger/R$string;->TimerPeriodDoNotDelete:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 129
    sget v3, Lorg/telegram/messenger/R$string;->TimerPeriodOnce:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 131
    :cond_2
    const-string v3, "Seconds"

    new-array v4, p2, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 133
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    new-instance v5, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;I)V

    invoke-virtual {v4, p2, v3, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 134
    iget v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-ne v3, v2, :cond_3

    .line 135
    iget-object v2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->putCheck()Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setAddPhotoVisible$3(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setTimerVisible$4(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected additionalKeyboardHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected afterUpdateShownKeyboard(Z)V
    .locals 4

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected beforeUpdateShownKeyboard(Z)V
    .locals 3

    if-nez p1, :cond_2

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_3

    .line 391
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3
    return-void
.end method

.method protected clipChild(Landroid/view/View;)Z
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 186
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->showMoveButton()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    move-result v0

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    .line 191
    iget-object v2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3cf5c28f    # 0.03f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    .line 192
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v5

    const/high16 v6, 0x42280000    # 42.0f

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v8, 0x42300000    # 44.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v10, 0x41200000    # 10.0f

    if-eqz v5, :cond_0

    .line 194
    iget-object v5, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget-object v8, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    invoke-virtual {v5, v9, v11, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v11, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v9, v11, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    cmpg-float v3, v0, v4

    const/high16 v4, 0x437f0000    # 255.0f

    if-gez v3, :cond_1

    .line 199
    iget-object v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v0, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 203
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v2, v2, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/high16 v0, 0x41800000    # 16.0f

    .line 205
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    .line 207
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->factoryForMentions:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    if-eqz v2, :cond_3

    .line 208
    iget-object v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->backgroundForCaptionButton:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v5, 0x40a00000    # 5.0f

    if-nez v3, :cond_2

    .line 209
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 210
    invoke-static {v3}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->photoViewer(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v2

    .line 211
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v2

    .line 212
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->backgroundForCaptionButton:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 216
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->backgroundForCaptionButton:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->backgroundForCaptionButton:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x42140000    # 37.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v5, v6, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget-object v4, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 455
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    .line 457
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 458
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 460
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onMoveButtonClick()V

    .line 461
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->MoveCaptionDown:I

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->MoveCaptionUp:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 463
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v3

    .line 467
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    return v2

    :cond_9
    :goto_3
    return v3
.end method

.method public expandMoveButton()V
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 156
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->shouldShowMoveCaptionHint()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->incrementMoveCaptionHint()V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected getCaptionDefaultLimit()I
    .locals 1

    .line 376
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    return v0
.end method

.method protected getCaptionLimit()I
    .locals 1

    .line 371
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getCaptionPremiumLimit()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getCaptionDefaultLimit()I

    move-result v0

    return v0
.end method

.method protected getCaptionPremiumLimit()I
    .locals 1

    .line 381
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    return v0
.end method

.method public getEditTextHeight()I
    .locals 1

    .line 446
    invoke-super {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v0

    return v0
.end method

.method protected getEditTextLeft()I
    .locals 1

    .line 260
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getEditTextStyle()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hasTimer()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onEditHeightChange(I)V
    .locals 2

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected abstract onMoveButtonClick()V
.end method

.method protected onTextChange()V
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->applyCaption:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onUpdateShowKeyboard(F)V
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected abstract openedKeyboard()V
.end method

.method public setAddPhotoVisible(ZZ)V
    .locals 5

    .line 237
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, -0x3f000000    # -8.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 240
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 247
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 249
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v3, p1

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 251
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateEditTextLeft()V

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 254
    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz p2, :cond_6

    const/16 v2, 0x21

    :cond_6
    const/16 p2, 0x20

    add-int/2addr p2, v2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    return-void
.end method

.method public setOnAddPhotoClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTimerChange(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onTTLChange:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setShowMoveButtonVisible(ZZ)V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 433
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonVisible:Z

    if-nez p2, :cond_1

    .line 435
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 437
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTimer(I)V
    .locals 3

    .line 301
    iput p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    return-void
.end method

.method public setTimerVisible(ZZ)V
    .locals 5

    .line 276
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 279
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 286
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 288
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v3, p1

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 291
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 292
    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz p2, :cond_6

    const/16 v2, 0x21

    :cond_6
    const/16 p2, 0x20

    add-int/2addr p2, v2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 293
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected abstract showMoveButton()Z
.end method

.method public updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 418
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->updateColors(III)V

    return-void
.end method

.method public updateKeyboard(I)V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    .line 178
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateKeyboard(I)V

    if-nez v0, :cond_0

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->openedKeyboard()V

    :cond_0
    return-void
.end method
