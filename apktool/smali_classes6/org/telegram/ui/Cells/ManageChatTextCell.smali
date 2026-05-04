.class public Lorg/telegram/ui/Cells/ManageChatTextCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private divider:Z

.field private dividerColor:I

.field private imageView:Landroid/widget/ImageView;

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:I

    .line 37
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 38
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 44
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    .line 50
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getFullHeight()I
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 80
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 132
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->divider:Z

    if-eqz v0, :cond_2

    .line 133
    iget v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:I

    if-eqz v0, :cond_0

    .line 134
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/high16 v0, 0x428e0000    # 71.0f

    .line 136
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:I

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    :goto_0
    move-object v1, p1

    move-object v6, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    goto :goto_0

    :goto_1
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    sub-int p1, p5, p1

    div-int/lit8 p1, p1, 0x2

    .line 89
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 p3, 0x41c00000    # 24.0f

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 90
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 93
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x428e0000    # 71.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 94
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p2, p1, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    const/high16 p1, 0x41100000    # 9.0f

    .line 96
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 97
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 p3, 0x41a80000    # 21.0f

    if-nez p2, :cond_2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p4, p2

    .line 98
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42400000    # 48.0f

    .line 70
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x42be0000    # 95.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ManageChatTextCell;->getFullHeight()I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->divider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColors(II)V
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 109
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:I

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 120
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p2, p1, p4, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->divider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 113
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method
