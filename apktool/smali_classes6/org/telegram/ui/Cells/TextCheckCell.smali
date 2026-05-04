.class public Lorg/telegram/ui/Cells/TextCheckCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final ANIMATION_PROGRESS:Landroid/util/Property;


# instance fields
.field private animatedColorBackground:I

.field private animationPaint:Landroid/graphics/Paint;

.field private animationProgress:F

.field private animator:Landroid/animation/ObjectAnimator;

.field attached:Z

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field public drawCheckRipple:Z

.field private height:I

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private isAnimatingToThumbInsteadOfTouch:Z

.field private isMultiline:Z

.field private isRTL:Z

.field public itemId:I

.field private lastTouchX:F

.field private needDivider:Z

.field private padding:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimationProgress(Lorg/telegram/ui/Cells/TextCheckCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputanimatedColorBackground(Lorg/telegram/ui/Cells/TextCheckCell;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAnimationProgress(Lorg/telegram/ui/Cells/TextCheckCell;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setAnimationProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell$1;

    const-string v1, "animationProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Cells/TextCheckCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x15

    .line 85
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 101
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x32

    .line 58
    iput v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    .line 102
    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 104
    iput v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 106
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 107
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const-string v5, "fonts/rregular.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 111
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 113
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x3

    const/4 v9, 0x5

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    or-int/lit8 v7, v7, 0x10

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 115
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    or-int/lit8 v14, v11, 0x30

    const/high16 v11, 0x428c0000    # 70.0f

    if-eqz v10, :cond_3

    move v15, v11

    goto :goto_3

    :cond_3
    int-to-float v12, v2

    move v15, v12

    :goto_3
    if-eqz v10, :cond_4

    int-to-float v10, v2

    move/from16 v17, v10

    goto :goto_4

    :cond_4
    move/from16 v17, v11

    :goto_4
    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 118
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    goto :goto_5

    :cond_5
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    :goto_5
    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    move v5, v9

    goto :goto_6

    :cond_6
    move v5, v8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 123
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 124
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 125
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 127
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_7

    move v7, v9

    goto :goto_7

    :cond_7
    move v7, v8

    :goto_7
    or-int/lit8 v14, v7, 0x30

    if-eqz v6, :cond_8

    move v15, v11

    goto :goto_8

    :cond_8
    int-to-float v7, v2

    move v15, v7

    :goto_8
    if-eqz v6, :cond_9

    int-to-float v11, v2

    :cond_9
    move/from16 v17, v11

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v16, 0x420c0000    # 35.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v2, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 130
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v1, v3, v4, v4}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 131
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    move v8, v9

    :goto_9
    or-int/lit8 v11, v8, 0x10

    const/high16 v14, 0x41b00000    # 22.0f

    const/4 v15, 0x0

    const/16 v9, 0x25

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v12, 0x41b00000    # 22.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 135
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private getLastTouchX()F
    .locals 2

    .line 450
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isAnimatingToThumbInsteadOfTouch:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->lastTouchX:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 3

    .line 414
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    .line 415
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getLastTouchX()F

    move-result p1

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 419
    iget v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    mul-float/2addr v0, v2

    .line 420
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    int-to-float v1, v1

    invoke-virtual {v2, p1, v1, v0}, Lorg/telegram/ui/Components/Switch;->setOverrideColorProgress(FFF)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 501
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 507
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->attached:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 455
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getLastTouchX()F

    move-result v0

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 460
    iget v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    mul-float/2addr v1, v3

    int-to-float v2, v2

    .line 461
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 463
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    if-eqz v0, :cond_6

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    const-string v1, "paintDivider"

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    goto :goto_0

    :goto_1
    if-eqz v6, :cond_6

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 468
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3

    .line 470
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 472
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    move v1, v0

    :cond_5
    sub-int/2addr v2, v1

    int-to-float v0, v0

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 484
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 485
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 494
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 157
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 160
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/high16 p2, 0x42800000    # 64.0f

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    int-to-float p2, p2

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    add-int/2addr p2, v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->lastTouchX:F

    .line 167
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 5

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 536
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 543
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 545
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 546
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41a80000    # 21.0f

    .line 549
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 550
    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 552
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 553
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    .line 554
    :cond_3
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 557
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v2, :cond_5

    goto :goto_3

    .line 558
    :cond_5
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method public setAnimatingToThumbInsteadOfTouch(Z)V
    .locals 0

    .line 479
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isAnimatingToThumbInsteadOfTouch:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 378
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eq v0, p1, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColorAnimated(ZI)V
    .locals 3

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 390
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 393
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 394
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    .line 396
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOverrideColor(I)V

    .line 397
    iput p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 399
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    .line 400
    sget-object p1, Lorg/telegram/ui/Cells/TextCheckCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 401
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Cells/TextCheckCell$2;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBackgroundColorAnimatedReverse(I)V
    .locals 3

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 429
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 430
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    .line 431
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Switch;->setOverrideColor(I)V

    .line 435
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    .line 436
    sget-object v0, Lorg/telegram/ui/Cells/TextCheckCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 437
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell$3;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setCheckBoxIcon(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setColorfullIcon(II)V
    .locals 9

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_3

    .line 513
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 514
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/lit8 v4, v1, 0x10

    const/high16 v7, 0x41980000    # 19.0f

    const/4 v8, 0x0

    const/16 v2, 0x1d

    const/high16 v3, 0x41e80000    # 29.0f

    const/high16 v5, 0x41980000    # 19.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42820000    # 65.0f

    .line 516
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x46

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 520
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 523
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 524
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v1

    if-eqz v1, :cond_5

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    :cond_5
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColors(IIIII)V
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 261
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setDrawCheckRipple(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->drawCheckRipple:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 143
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 8

    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

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

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    new-array v7, v4, [F

    aput v5, v7, v6

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 351
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    new-array v7, v4, [F

    aput v5, v7, v6

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    new-array p1, v4, [F

    aput v0, p1, v6

    invoke-static {v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 357
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 358
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/Switch;->setAlpha(F)V

    .line 359
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    .line 360
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v0

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 362
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_b

    .line 363
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_a

    move v0, v1

    :cond_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 269
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    return-void
.end method

.method public setIcon(I)V
    .locals 8

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 173
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x18

    int-to-float v2, v1

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    or-int/lit8 v3, v3, 0x10

    const/16 v4, 0x15

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, v4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/high16 v0, 0x428e0000    # 71.0f

    .line 180
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 181
    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 184
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    .line 185
    :cond_3
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v2, :cond_5

    goto :goto_4

    .line 189
    :cond_5
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_4
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->drawCheckRipple:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setDrawRipple(Z)V

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method public setTextAndCheck(Ljava/lang/CharSequence;ZZ)V
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_0
    invoke-static {p1, p0}, Lorg/telegram/ui/AvatarSpan;->checkSpansParent(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->attached:Z

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 213
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 214
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 216
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 217
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    xor-int/lit8 p1, p3, 0x1

    .line 219
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 285
    const-string v0, "->"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->search_arrow:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "->"

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/exteragram/messenger/components/VerticalImageSpan;->createSpan(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move-object v3, p2

    .line 288
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_0
    invoke-static {p1, p0}, Lorg/telegram/ui/AvatarSpan;->checkSpansParent(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 291
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 294
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    const/4 p1, 0x1

    if-eqz p4, :cond_1

    .line 298
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 299
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 300
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 301
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 302
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 p4, 0x41300000    # 11.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p3, p2, p2, p2, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 304
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 305
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 306
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 307
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 308
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 310
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    .line 311
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 p3, 0x41200000    # 10.0f

    .line 312
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 313
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    xor-int/2addr p1, p5

    .line 314
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateRTL()V
    .locals 14

    .line 223
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 226
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 232
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x44

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 237
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    .line 240
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    if-eqz v4, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    or-int/lit8 v8, v5, 0x30

    const/high16 v5, 0x428c0000    # 70.0f

    if-eqz v4, :cond_6

    move v9, v5

    goto :goto_4

    :cond_6
    int-to-float v6, v0

    move v9, v6

    :goto_4
    if-eqz v4, :cond_7

    int-to-float v4, v0

    move v11, v4

    goto :goto_5

    :cond_7
    move v11, v5

    :goto_5
    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v10, 0x0

    .line 239
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    .line 246
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    if-eqz v4, :cond_9

    move v6, v2

    goto :goto_7

    :cond_9
    move v6, v1

    :goto_7
    or-int/lit8 v9, v6, 0x30

    if-eqz v4, :cond_a

    move v10, v5

    goto :goto_8

    :cond_a
    int-to-float v6, v0

    move v10, v6

    :goto_8
    if-eqz v4, :cond_b

    int-to-float v5, v0

    :cond_b
    move v12, v5

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v11, 0x420c0000    # 35.0f

    .line 245
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    move v1, v2

    :goto_9
    or-int/lit8 v4, v1, 0x10

    const/high16 v7, 0x41b00000    # 22.0f

    const/4 v8, 0x0

    const/16 v2, 0x25

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
