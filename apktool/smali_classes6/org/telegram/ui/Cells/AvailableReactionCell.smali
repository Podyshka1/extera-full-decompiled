.class public Lorg/telegram/ui/Cells/AvailableReactionCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private canLock:Z

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field public locked:Z

.field private overlaySelectorView:Landroid/view/View;

.field public react:Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

.field private switchView:Lorg/telegram/ui/Components/Switch;

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 9

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->canLock:Z

    .line 46
    new-instance p3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 47
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 48
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 49
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 51
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 52
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 53
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v7, 0x42740000    # 61.0f

    const/4 v8, 0x0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x800013

    const/high16 v5, 0x42a20000    # 81.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance p3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 56
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 57
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 58
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x0

    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, 0x42000000    # 32.0f

    const v2, 0x800013

    const/high16 v3, 0x41b80000    # 23.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 61
    new-instance p2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 62
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 63
    iget-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    invoke-virtual {p2, p3, p3, v1}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 64
    iget-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 65
    iget-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v7, 0x0

    const/high16 v1, 0x41d00000    # 26.0f

    const/high16 v2, 0x41d00000    # 26.0f

    const v3, 0x800015

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Switch;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->switchView:Lorg/telegram/ui/Components/Switch;

    .line 68
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v1, v2, v3, v3}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 69
    iget-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->switchView:Lorg/telegram/ui/Components/Switch;

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v7, 0x0

    const/high16 v1, 0x42140000    # 37.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const v3, 0x800015

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :goto_0
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->overlaySelectorView:Landroid/view/View;

    .line 72
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->overlaySelectorView:Landroid/view/View;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;ZI)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->react:Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v2, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 93
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->react:Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 94
    iget-object v3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 95
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v10

    .line 96
    iget-object v6, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const-string v8, "30_30_pcache"

    const-string v9, "tgs"

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 98
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->canLock:Z

    if-eqz p1, :cond_1

    iget-boolean p1, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->premium:Z

    if-eqz p1, :cond_1

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->locked:Z

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->other_lockedfolders2:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 101
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    iget-object p3, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 105
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 108
    :goto_2
    invoke-virtual {p0, p2, v2}, Lorg/telegram/ui/Cells/AvailableReactionCell;->setChecked(ZZ)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->switchView:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 145
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x42a20000    # 81.0f

    .line 148
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 149
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v10, v3

    move v3, v1

    move v1, v10

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v1, v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->switchView:Lorg/telegram/ui/Components/Switch;

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 165
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AvailableReactionCell;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 166
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AvailableReactionCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/AvailableReactionCell;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->switchView:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/AvailableReactionCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_1
    return-void
.end method
