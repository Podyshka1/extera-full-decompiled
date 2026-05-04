.class public Lorg/telegram/ui/Cells/TextRadioCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final ANIMATION_PROGRESS:Landroid/util/Property;


# instance fields
.field private animatedColorBackground:I

.field private animationPaint:Landroid/graphics/Paint;

.field private animationProgress:F

.field private height:I

.field private isMultiline:Z

.field private isRTL:Z

.field private lastTouchX:F

.field private needDivider:Z

.field private padding:I

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimationProgress(Lorg/telegram/ui/Cells/TextRadioCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->animationProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAnimationProgress(Lorg/telegram/ui/Cells/TextRadioCell;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextRadioCell;->setAnimationProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/telegram/ui/Cells/TextRadioCell$1;

    const-string v1, "animationProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextRadioCell$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Cells/TextRadioCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x15

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/TextRadioCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/TextRadioCell;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 71
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x32

    .line 39
    iput v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->height:I

    .line 73
    iput v2, v0, Lorg/telegram/ui/Cells/TextRadioCell;->padding:I

    .line 75
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 76
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    const-string v4, "fonts/rregular.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 80
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 82
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    or-int/lit8 v13, v10, 0x30

    const/high16 v10, 0x42800000    # 64.0f

    if-eqz v9, :cond_3

    int-to-float v11, v2

    move v14, v11

    goto :goto_3

    :cond_3
    move v14, v10

    :goto_3
    if-eqz v9, :cond_4

    move/from16 v16, v10

    goto :goto_4

    :cond_4
    int-to-float v9, v2

    move/from16 v16, v9

    :goto_4
    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 87
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    goto :goto_5

    :cond_5
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    :goto_5
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    move v4, v8

    goto :goto_6

    :cond_6
    move v4, v7

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 92
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 94
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 96
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    move v6, v8

    goto :goto_7

    :cond_7
    move v6, v7

    :goto_7
    or-int/lit8 v13, v6, 0x30

    if-eqz v5, :cond_8

    int-to-float v6, v2

    move v14, v6

    goto :goto_8

    :cond_8
    move v14, v10

    :goto_8
    if-eqz v5, :cond_9

    :goto_9
    move/from16 v16, v10

    goto :goto_a

    :cond_9
    int-to-float v10, v2

    goto :goto_9

    :goto_a
    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v15, 0x42100000    # 36.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 99
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 101
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 102
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    move v7, v8

    :cond_a
    or-int/lit8 v10, v7, 0x10

    const/high16 v13, 0x41b00000    # 22.0f

    const/4 v14, 0x0

    const/16 v8, 0x14

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v11, 0x41b00000    # 22.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/TextRadioCell;->isRTL:Z

    .line 106
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 2

    .line 273
    iput p1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->animationProgress:F

    .line 274
    iget p1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->lastTouchX:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->lastTouchX:F

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    const/high16 p1, 0x42200000    # 40.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 283
    iget v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->animatedColorBackground:I

    if-eqz v0, :cond_0

    .line 284
    iget v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->lastTouchX:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/TextRadioCell;->lastTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 285
    iget v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->lastTouchX:F

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 287
    iget v3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->animationProgress:F

    mul-float/2addr v0, v3

    int-to-float v2, v2

    .line 288
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 290
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->needDivider:Z

    if-eqz v0, :cond_3

    .line 291
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42800000    # 64.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    const-string v0, "android.widget.RadioButton"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 133
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextRadioCell;->isMultiline:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/high16 p2, 0x42800000    # 64.0f

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Cells/TextRadioCell;->height:I

    int-to-float p2, p2

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->needDivider:Z

    add-int/2addr p2, v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->lastTouchX:F

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->animatedColorBackground:I

    .line 241
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 170
    iput p1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->height:I

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 189
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextRadioCell;->needDivider:Z

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextRadioCell;->isMultiline:Z

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    .line 193
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 194
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 195
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 196
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    const/high16 p4, 0x41300000    # 11.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p3, p2, p2, p2, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 200
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 201
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 202
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 203
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 205
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    .line 206
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 p3, 0x41200000    # 10.0f

    .line 207
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 208
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    xor-int/2addr p1, p5

    .line 209
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateRTL()V
    .locals 6

    .line 110
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->isRTL:Z

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->isRTL:Z

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    or-int/lit8 v4, v4, 0x30

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x42800000    # 64.0f

    if-eqz v1, :cond_3

    .line 117
    iget v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->padding:I

    int-to-float v1, v1

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 118
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->padding:I

    int-to-float v1, v1

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    move v5, v3

    goto :goto_5

    :cond_6
    move v5, v2

    :goto_5
    or-int/lit8 v5, v5, 0x30

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v1, :cond_7

    .line 123
    iget v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->padding:I

    int-to-float v1, v1

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 124
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->padding:I

    int-to-float v4, v1

    :goto_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    or-int/lit8 v1, v2, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextRadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
